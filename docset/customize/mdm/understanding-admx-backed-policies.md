---
title: Understanding ADMX-backed policies
description: Starting in Windows 10, version 1703, you can use ADMX-backed policies for Windows 10 mobile device management (MDM) across Windows 10 devices.
---

# Understanding ADMX-backed policies

> [!WARNING]
> Some information relates to prereleased product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.  

Due to increased simplicity and the ease with which devices can be targeted, enterprise businesses are finding it increasingly advantageous to move their PC management to a cloud-based device management solution. Unfortunately, current Windows PC device-management solutions lack the critical policy and app settings configuration capabilities that are supported in a traditional PC management solution. 

Starting in Windows 10 version 1703, mobile device management (MDM) policy configuration support will be expanded to allow access of select group policy administrative templates (ADMX-backed policies) for Windows PCs via the Policy configuration service provider (CSP). This expanded access ensures that enterprises do not need to compromise security of their devices in the cloud.

## In this section

-   [Background](#background)
-   [ADMX files and the Group Policy Editor](#admx-files-and-the-group-policy-editor)
-   [Group policy examples](#group-policy-examples)
    - [Enabling a policy](#enabling-a-policy)
    - [Disabling a policy](#disabling-a-policy)
    - [Settting a policy to not configured](#setting-a-policy-to-not-configured)
-   [Group policy mapping example](#group-policy-mapping-example)


## <a href="" id="background"></a>Background

In addition to standard policies, the Policy CSP can now also handle ADMX-backed policies. In an ADMX-backed policy, an administrative template contains the metadata of a Window group policy and can be edited in the Local Group Policy Editor on a PC. Each administrative template specifies the registry keys (and their values) that are associated with a group policy and defines the policy settings that can be managed. Administrative templates organize the policies and preferences in a hierarchy in which each segment in the hierarchical path is defined as a category. Each setting in a group policy administrative template corresponds to a specific registry value. These group policy settings are defined in a standards-based, XML file format known as an ADMX file. For more information, see [Group Policy ADMX Syntax Reference Guide](https://technet.microsoft.com/en-us/library/cc753471(v=ws.10).aspx). 

ADMX files can either describe operating system (OS) policies that are shipped with Windows or they can describe settings of applications, which are seperate from the OS and can usually be downloaded and installed on a PC.
Depending on the specific category of the settings that they control (OS or application), the administrative template settings are found in the following two locations in the Local Group Policy Editor:
-	OS settings: Computer Configuration/Administrative Templates
-	Application settings: User Configuration/Administrative Templates 

In a domain controller/group policy ecosystem, group policies are automatically added to the registry of the client computer or user profile by the Administrative Templates Client Side Extension (CSE) whenever the client computer processes a group policy. Conversely, in an MDM-managed client, ADMX files are leveraged to define policies independent of group policies. Therefore, in an MDM-managed client, a group policy infrastructure, including the Group Policy Service (gpsvc.exe), is not required.

An ADMX file can either be shipped with Windows (located at `%SystemRoot%\policydefinitions`) or it can be ingested to a device through the Policy CSP URI (`./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall`). Inbox ADMX files are processed into MDM policies at OS-build time. ADMX files that are ingested are processed into MDM policies post-OS shipment through the Policy CSP. Because the Policy CSP does not rely upon any aspect of the group policy client stack, including the PC’s Group Policy Service (GPSvc), the policy handlers that are ingested to the device are able to react to policies that are set by the MDM.


## <a href="" id="admx-files-and-the-group-policy-editor"></a>ADMX files and the Group Policy Editor

To capture the end-to-end MDM handling of ADMX group policies, an IT administrator must use a UI, such as the Group Policy Editor (gpedit.msc), to gather the necessary data. The MDM ISV console UI determines how to gather the needed policy data from the IT administrator. ADMX-backed group policies are organized hierarchally and can have a scope of machine, user, or both. The group policy example in the next section uses a machine-wide group policy named “Publishing Server 2 Settings.” When this group policy is selected, its available states are **Not Configured**, **Enabled**, and **Disabled**. 

The ADMX file that the MDM ISV uses to determine what UI to display to the IT administrator is the same ADMX file that the client uses for the policy definition. The ADMX file is processed either by the OS at build time or set by the client at OS runtime. In either case, the client and the MDM ISV must be synchronized with the ADMX policy definitions. Each ADMX file corresponds to a group policy category and typically contains several policy definitions, each of which represents a single group policy. For example, the policy definition for the “Publishing Server 2 Settings” is containined in the appv.admx file, which holds the policy definitions for the Microsoft Application Virtualization (App-V) group policy category. 

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

![group policy editor](images/group-policy-editor.png)

The following diagram shows the settings for the "Publishing Server 2 Settings" group policy in the Group Policy Editor.

![group policy publisher server 2 settings](images/group-policy-publisher-server-2-settings.png)

Note that most group policies are a simple Boolean type. For a Boolean group policy, when you select *Enabled*, there are no data input fields in the options panel and the payload of the SyncML is simply `<enabled/>`. However, if there are data input fields in the options panel, the MDM server must supply this data. The following *Enabling a policy* example illustrates this complexity. In this example, 10 name-value pairs are described by `<data />` tags in the payload, which correspond to the 10 data input fields in the Group Policy Editor options panel for the "Publishing Server 2 Settings" group policy. The ADMX file, which defines the policies, is consumed by the MDM server, similarly to how the Group Policy Editor consumes it. The Group Policy Editor displays a UI to recieve the complete policy instance data, which the MDM server’s IT administrator console must also do. For every `<text>` element and id attribute in the ADMX policy definition, there must be a corresponding `<data />` element and id attribute in the payload. The ADMX file drives the policy definition and is required by the MDM server via the SyncML protocol.

> [!IMPORTANT] Any data entry field that is displayed in the group policy page of the Group Policy Editor must be supplied in the encoded XML of the SyncML payload. The SyncML data payload is equivalent to the user-supplied policy data through GPEdit.msc. 

For more information about the policy description format, see [Administrative Template File (ADMX) format](https://msdn.microsoft.com/en-us/library/aa373476(v=vs.85).aspx). Elements can be Text, MultiText, Boolean, Enum, Decimal, or List (for more information, see [policy elements](https://msdn.microsoft.com/en-us/library/dn606004(v=vs.85).aspx)). 

For example, if you search for the string, "Publishing_Server2_Name_Prompt" in both the *Enabling a policy* example and its corresponding ADMX policy definition in the appv.admx file, you will find the following occurences: 

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

The following SyncML examples describes how to set a MDM policy that is defined by an ADMX template, specifically the Publishing_Server2_Policy group policy description in the application virtualization ADMX file, appv.admx. Note that the functionality that this group policy manages is not important; it is used to illustrate only how an MDM ISV can set an ADMX-defined group policy. These SyncML examples illustrate common options and the corresponding SyncML code that can be used for testing your policies. Note that the payload of the SyncML must be XML-encoded; for this XML encoding, you can use the [Coder’s Toolbox](http://coderstoolbox.net/string/#!encoding=xml&action=encode&charset=us_ascii) online tool.


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
        <Data>&lt;enabled/&gt;&lt;data id=&quot;Publishing_Server2_Name_Prompt&quot; value=&quot;snot&quot;/&gt;&lt;data id=&quot;Publishing_Server_URL_Prompt&quot; value=&quot;head&quot;/&gt;&lt;data id=&quot;Global_Publishing_Refresh_Options&quot; value=&quot;1&quot;/&gt;&lt;data id=&quot;Global_Refresh_OnLogon_Options&quot; value=&quot;0&quot;/&gt;&lt;data id=&quot;Global_Refresh_Interval_Prompt&quot; value=&quot;15&quot;/&gt;&lt;data id=&quot;Global_Refresh_Unit_Options&quot; value=&quot;0&quot;/&gt;&lt;data id=&quot;User_Publishing_Refresh_Options&quot; value=&quot;0&quot;/&gt;&lt;data id=&quot;User_Refresh_OnLogon_Options&quot; value=&quot;0&quot;/&gt;&lt;data id=&quot;User_Refresh_Interval_Prompt&quot; value=&quot;15&quot;/&gt;&lt;data id=&quot;User_Refresh_Unit_Options&quot; value=&quot;1&quot;/&gt;</Data>
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

## <a href="" id="group-policy-mapping-example"></a>Group policy mapping example

This example shows how Windows maps the name and category path of a group policy to a MDM policy area and policy name. This mapping is part of a set of Windows manifests (extension wm.xml) that, when compiled, parses the associated ADMX file, finds the specified group policy, and stores that definition (metadata) in the MDM Policy CSP client store. When the MDM policy is referenced by a SyncML command and the Policy CSP URI, `.\[device|user]\vendor\msft\policy\[config|result]\<area>\<policy>`, this metadata is referenced and determines which registry keys are set or removed.

In this example, the policy area is "AppVirtualization" and the policy name is "PublishingAllowServer2." The policy URI to set a device-wide policy is: `.\[device|user]\vendor\msft\policy\config\AppVirtualization\PublishingAllowServer2`. 
Note the following elements:

-  `<stringPolicy>`: In this element, the admxbacked attribute describes what ADMX file the group policy is defined in and the scope attribute describes whether the policy applies to machine, user, or both.  
-  `<ADMXPolicy>`: This element describes the internal ID of the group policy that is defined in the ADMX file: `%SDXROOT%\onecoreuap\admin\enterprisemgmt\policymanager\policydefinition\appvirtualization\appv.wm.xml`.

```
<identity xmlns="urn:Microsoft.CompPlat/ManifestSchema.v1.00"  xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" owner="Microsoft" namespace="Windows-DeviceManagement-PolicyDefinition" name="AppVirtualization">
  <policyDefinitions>
    <area name="AppVirtualization">
      <policies>
.
.
        <stringPolicy name="PublishingAllowServer2" notSupportedOnPlatform="phone" admxbacked="appv.admx" scope="machine">
          <ADMXPolicy area="appv~AT~System~CAT_AppV~CAT_Publishing" name="Publishing_Server2_Policy" scope="machine" />
          <registryKeyRedirect path="SOFTWARE\Policies\Microsoft\AppV\Client\Publishing\Servers\2" />
        </stringPolicy >
.
.
```
