---
title: Understanding ADMX-backed policies
description: Starting in Windows 10, version 1703, you can use ADMX-backed policies for Windows 10 mobile device management (MDM) across Windows 10 devices.
---

# Understanding ADMX-backed policies

> [!WARNING]
> Some information relates to prereleased product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.  

Due to increased simplicity and the ease with which devices can be targeted, enterprise businesses are finding it increasingly advantageous to move their PC management to a cloud-based device management solution. Unfortunately, current Windows PC device-management solutions lack the critical policy and app settings configuration capabilities that are supported in a traditional PC management solution. 

Starting in Windows 10 version 1703, Mobile Device Management (MDM) policy configuration support will be expanded to allow access of select Group Policy administrative templates (ADMX-backed policies) for Windows PCs via the Policy configuration service provider (CSP). This expanded access ensures that enterprises do not need to compromise security of their devices in the cloud.

## In this section

-   [Background](#background)
-   [ADMX files and the Group Policy Editor](#admx-files-and-the-group-policy-editor)
-   [Group policy examples](#group-policy-examples)
    - [Enabling a policy](#enabling-a-policy)
    - [Disabling a policy](#disabling-a-policy)
    - [Setting a policy to not configured](#setting-a-policy-to-not-configured)


## <a href="" id="background"></a>Background

In addition to standard policies, the Policy CSP can now also handle ADMX-backed policies. In an ADMX-backed policy, an administrative template contains the metadata of a Window Group Policy and can be edited in the Local Group Policy Editor on a PC. Each administrative template specifies the registry keys (and their values) that are associated with a Group Policy and defines the policy settings that can be managed. Administrative templates organize the policies and preferences in a hierarchy in which each segment in the hierarchical path is defined as a category. Each setting in a Group Policy administrative template corresponds to a specific registry value. These Group Policy settings are defined in a standards-based, XML file format known as an ADMX file. For more information, see [Group Policy ADMX Syntax Reference Guide](https://technet.microsoft.com/en-us/library/cc753471(v=ws.10).aspx). 

ADMX files can either describe operating system (OS) policies that are shipped with Windows or they can describe settings of applications, which are separate from the OS and can usually be downloaded and installed on a PC.
Depending on the specific category of the settings that they control (OS or application), the administrative template settings are found in the following two locations in the Local Group Policy Editor:
-	OS settings: Computer Configuration/Administrative Templates
-	Application settings: User Configuration/Administrative Templates 

In a domain controller/Group Policy ecosystem, group policies are automatically added to the registry of the client computer or user profile by the Administrative Templates Client Side Extension (CSE) whenever the client computer processes a Group Policy. Conversely, in an MDM-managed client, ADMX files are leveraged to define policies independent of group policies. Therefore, in an MDM-managed client, a Group Policy infrastructure, including the Group Policy Service (gpsvc.exe), is not required.

An ADMX file can either be shipped with Windows (located at `%SystemRoot%\policydefinitions`) or it can be ingested to a device through the Policy CSP URI (`./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall`). Inbox ADMX files are processed into MDM policies at OS-build time. ADMX files that are ingested are processed into MDM policies post-OS shipment through the Policy CSP. Because the Policy CSP does not rely upon any aspect of the Group Policy client stack, including the PC’s Group Policy Service (GPSvc), the policy handlers that are ingested to the device are able to react to policies that are set by the MDM.

Windows maps the name and category path of a Group Policy to a MDM policy area and policy name by parsing the associated ADMX file, finding the specified Group Policy, and storing the definition (metadata) in the MDM Policy CSP client store. When the MDM policy is referenced by a SyncML command and the Policy CSP URI, `.\[device|user]\vendor\msft\policy\[config|result]\<area>\<policy>`, this metadata is referenced and determines which registry keys are set or removed. For a list of ADMX-backed policies supported by MDM, see [Policy CSP - ADMX-backed policies](https://msdn.microsoft.com/en-us/windows/hardware/commercialize/customize/mdm/policy-admx-backed).

## <a href="" id="admx-files-and-the-group-policy-editor"></a>ADMX files and the Group Policy Editor

To capture the end-to-end MDM handling of ADMX group policies, an IT administrator must use a UI, such as the Group Policy Editor (gpedit.msc), to gather the necessary data. The MDM ISV console UI determines how to gather the needed policy data from the IT administrator. ADMX-backed group policies are organized in a hierarchy and can have a scope of machine, user, or both. The Group Policy example in the next section uses a machine-wide Group Policy named “Publishing Server 2 Settings.” When this Group Policy is selected, its available states are **Not Configured**, **Enabled**, and **Disabled**. 

The ADMX file that the MDM ISV uses to determine what UI to display to the IT administrator is the same ADMX file that the client uses for the policy definition. The ADMX file is processed either by the OS at build time or set by the client at OS runtime. In either case, the client and the MDM ISV must be synchronized with the ADMX policy definitions. Each ADMX file corresponds to a Group Policy category and typically contains several policy definitions, each of which represents a single Group Policy. For example, the policy definition for the “Publishing Server 2 Settings” is contained in the appv.admx file, which holds the policy definitions for the Microsoft Application Virtualization (App-V) Group Policy category. 

Group policy option button setting:
-	If **Enabled** is selected, the necessary data entry controls are displayed for the user in the UI. When IT administrator enters the data and clicks **Apply**, the following events occur:
    -	 The MDM ISV server sets up a Replace SyncML command with a payload that contains the user-entered data.  
    -	 The MDM client stack receives this data, which causes the Policy CSP to update the device’s registry per the ADMX-backed policy definition.

-	If **Disabled** is selected and you click **Apply**, the following events occur:
    -	 The MDM ISV server sets up a Replace SyncML command with a payload set to `<disabled\>`. 
    -	 The MDM client stack receives this command, which causes the Policy CSP to either delete the device’s registry settings, set the registry keys, or both, per the state change directed by the ADMX-backed policy definition.

-	If **Not Configured** is selected and you click **Apply**, the following events occur:
    -	 MDM ISV server sets up a Delete SyncML command. 
    -	 The MDM client stack receives this command, which causes the Policy CSP to delete the device’s registry settings per the ADMX-backed policy definition.

The following diagram shows the main display for the Group Policy Editor.

![Group Policy editor](images/group-policy-editor.png)

The following diagram shows the settings for the "Publishing Server 2 Settings" Group Policy in the Group Policy Editor.

![Group Policy publisher server 2 settings](images/group-policy-publisher-server-2-settings.png)

Note that most group policies are a simple Boolean type. For a Boolean Group Policy, if you select **Enabled**, the options panel contains no data input fields and the payload of the SyncML is simply `<enabled/>`. However, if there are data input fields in the options panel, the MDM server must supply this data. The following *Enabling a policy* example illustrates this complexity. In this example, 10 name-value pairs are described by `<data />` tags in the payload, which correspond to the 10 data input fields in the Group Policy Editor options panel for the "Publishing Server 2 Settings" Group Policy. The ADMX file, which defines the policies, is consumed by the MDM server, similarly to how the Group Policy Editor consumes it. The Group Policy Editor displays a UI to receive the complete policy instance data, which the MDM server’s IT administrator console must also do. For every `<text>` element and id attribute in the ADMX policy definition, there must be a corresponding `<data />` element and id attribute in the payload. The ADMX file drives the policy definition and is required by the MDM server via the SyncML protocol.

> [!IMPORTANT] Any data entry field that is displayed in the Group Policy page of the Group Policy Editor must be supplied in the encoded XML of the SyncML payload. The SyncML data payload is equivalent to the user-supplied policy data through GPEdit.msc. 

For more information about the policy description format, see [Administrative Template File (ADMX) format](https://msdn.microsoft.com/en-us/library/aa373476(v=vs.85).aspx). Elements can be Text, MultiText, Boolean, Enum, Decimal, or List (for more information, see [policy elements](https://msdn.microsoft.com/en-us/library/dn606004(v=vs.85).aspx)). 

For example, if you search for the string, "Publishing_Server2_Name_Prompt" in both the *Enabling a policy* example and its corresponding ADMX policy definition in the appv.admx file, you will find the following occurrences:

Enabling a policy example:
```XML
`<data id="Publishing_Server2_Name_Prompt" value="name"/>` 
```

Appv.admx file:
```XML
      <elements>
        <text id="Publishing_Server2_Name_Prompt" valueName="Name" required="true"/>
```


## <a href="" id="group-policy-examples"></a>Group policy examples

The following SyncML examples describes how to set a MDM policy that is defined by an ADMX template, specifically the Publishing_Server2_Policy Group Policy description in the application virtualization ADMX file, appv.admx. Note that the functionality that this Group Policy manages is not important; it is used to illustrate only how an MDM ISV can set an ADMX-defined Group Policy. These SyncML examples illustrate common options and the corresponding SyncML code that can be used for testing your policies. Note that the payload of the SyncML must be XML-encoded; for this XML encoding, you can use the [Coder’s Toolbox](http://coderstoolbox.net/string/#!encoding=xml&action=encode&charset=us_ascii) online tool.


### <a href="" id="enabling-a-policy"></a>Enabling a policy

**Payload**
```XML
<enabled/>
<data id="Publishing_Server2_Name_Prompt" value="Name"/>
<data id="Publishing_Server_URL_Prompt" value="http://someuri"/>
<data id="Global_Publishing_Refresh_Options" value="1"/>
<data id="Global_Refresh_OnLogon_Options" value="0"/>
<data id="Global_Refresh_Interval_Prompt" value="15"/>
<data id="Global_Refresh_Unit_Options" value="0"/>
<data id="User_Publishing_Refresh_Options" value="0"/>
<data id="User_Refresh_OnLogon_Options" value="0"/>
<data id="User_Refresh_Interval_Prompt" value="15"/>
<data id="User_Refresh_Unit_Options" value="1"/>
```
**Request SyncML**
```XML
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./Device/Vendor/MSFT/Policy/Config/AppVirtualization/PublishingAllowServer2</LocURI>
        </Target>
        <![CDATA[<enabled/><data id="Publishing_Server2_Name_Prompt" value="name prompt"/><data 
          id="Publishing_Server_URL_Prompt" value="URL prompt"/><data 
          id="Global_Publishing_Refresh_Options" value="1"/><data 
          id="Global_Refresh_OnLogon_Options" value="0"/><data 
          id="Global_Refresh_Interval_Prompt" value="15"/><data 
          id="Global_Refresh_Unit_Options" value="0"/><data 
          id="User_Publishing_Refresh_Options" value="0"/><data 
          id="User_Refresh_OnLogon_Options" value="0"/><data 
          id="User_Refresh_Interval_Prompt" value="15"/><data 
          id="User_Refresh_Unit_Options" value="1"/>]]>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

**Response SyncML**
```XML
<Status>
  <CmdID>2</CmdID>
  <MsgRef>1</MsgRef>
  <CmdRef>2</CmdRef>
  <Cmd>Replace</Cmd>
  <Data>200</Data>
</Status>
```

### <a href="" id="disabling-a-policy"></a>Disabling a policy

**Payload**
```XML
<disabled/>
```

**Request SyncML**
```XML
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./Device/Vendor/MSFT/Policy/Config/AppVirtualization/PublishingAllowServer2</LocURI>
        </Target>
        <Data>&lt;disabled/&gt;</Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
''''

**Response SyncML**
```XML
<Status>
  <CmdID>2</CmdID>
  <MsgRef>1</MsgRef>
  <CmdRef>2</CmdRef>
  <Cmd>Replace</Cmd>
  <Data>200</Data>
</Status>
```

### <a href="" id="setting-a-policy-to-not-configured"></a>Setting a policy to not configured

**Payload**

(None)

**Request SyncML**
```
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Delete>
      <CmdID>1</CmdID>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/Policy/Config/AppVirtualization/PublishingAllowServer2</LocURI>
        </Target>
      </Item>
    </Delete>
    <Final/>
  </SyncBody>
</SyncML>
```

**Response SyncML**
```
<Status>
  <CmdID>2</CmdID>
  <MsgRef>1</MsgRef>
  <CmdRef>1</CmdRef>
  <Cmd>Delete</Cmd>
  <Data>200</Data>
</Status>
```

