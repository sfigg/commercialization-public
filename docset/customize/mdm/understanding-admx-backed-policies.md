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
-   [Group policy examples](#group-policy-examples)
    - [Enabling a policy](#enabling-a-policy)
    - [Disabling a policy](#disabling-a-policy)
    - [Settting a policy to not configured](#setting-a-policy-to-not-configured)
-   [Group policy mapping example](#group-policy-mapping-example)


## <a href="" id="background"></a>Background

In addition to standard policies, the Policy CSP can now also handle ADMX-backed policies. In an ADMX-backed policy, an administrative template contains the metadata of a specific policy and can be edited in the Local Group Policy Editor on a PC. Each administrative template specifies the registry keys (and their values) that are associated with a group policy and defines the policy settings that can be managed. Administrative templates organize the policies and preferences in a hierarchy in which each segment in the hierarchical path is defined as a category. The settings for each group policy correspond to registry values and are defined in a standards-based, XML file format known as an ADMX file. For more information, see [Group Policy ADMX Syntax Reference Guide](https://technet.microsoft.com/en-us/library/cc753471(v=ws.10).aspx).

ADMX files can describe OS policies that are shipped with the OS or they can describe settings of applications that have an out-of-band release from the OS, which can usually be downloaded and installed on a PC.

Depending on the specific category of the settings that they control (OS or application), the administrative template settings are found in the following two locations in the Local Group Policy Editor:
-	OS settings: Computer Configuration/Administrative Templates
-	Application settings: User Configuration/Administrative Templates 

In a domain controller/group policy ecosystem, group policies are automatically added to the client computer's (or user profile's) registry by the Administrative Templates Client Side Extension (CSE) whenever the client computer processes a group policy. Conversely, in an MDM-managed client, ADMX files are leveraged to define policies independent of group policies. Therefore, in an MDM-managed client, a group policy infrastructure, including the Group Policy Service (gpsvc.exe), is not required.

An ADMX file can either be shipped with the Windows OS (located at %SystemRoot%\policydefinitions) or it can be ingested to a device through the Policy CSP URI, ./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall. Inbox ADMX files are processed into MDM policies at OS build time. ADMX files that are ingested are processed into MDM policies post-OS shipment through the Policy CSP. Because the Policy CSP does not rely upon any aspect of the group policy client stack, including the PC’s Group Policy Service (GPSvc), the policy handlers that are ingested to the device are able to react to policies that are set by the MDM.


## <a href="" id="group-policy-examples"></a>Group policy examples

The following examples describes how to set a MDM policy that is defined by an ADMX template, specifically the Windows 10 group policy Publishing_Server2_Policy description in the application virtualization ADMX file, appv.admx. Note that the functionality that this group policy manages is not important; it is used to illustrate only how an MDM ISV can set an ADMX-defined group policy.

To capture the end-to-end MDM handling of ADMX group policies, an IT administrator must use a UI, such as the Group Policy Editor (gpedit.msc), to gather the necessary data. The MDM ISV console UI determines how to gather the needed policy data from the IT administrator. ADMX-backed group policies are organized hierarchally and can have a scope of machine, user, or both. The example uses a machine-wide group policy named “Publishing Server 2 Settings.” When this group policy is selected, its available states are *Not Configured*, *Enabled*, and *Disabled*. 

The ADMX file that the MDM ISV uses to determine what UI to display to the IT administrator is the same ADMX file that the client uses for the policy definition. The ADMX file is processed either by the OS at build time or set by the client at OS runtime. In either case, the client and the MDM ISV must be synchronized with the ADMX policy definitions.

Group policy setting:
-	If *Enabled* is selected, the necessary data entry controls are displayed for the user in the UI. When IT administrator enters the data and clicks **Apply**, the following events occur:
    -	 The MDM ISV server sets up a Replace syncml command with a payload that contains the user-entered data.  
    -	 The MDM client stack receives this data, which causes the Policy CSP to update the device’s registry per the ADMX-backed policy definition.

-	If *Disabled* is selected and you click **Apply**, the following events occur:
    -	 The MDM ISV server sets up a Replace syncml command with a payload set to <disabled\>. 
    -	 The MDM client stack receives this command, which causes the Policy CSP to either delete the device’s registry settings, set the registry keys, or both, per the state change directed by the ADMX-backed policy definition.

-	If *Not Configured* is selected and you click **Apply**, the following events occur:
    -	 MDM ISV server sets up a Delete syncml command. 
    -	 The MDM client stack receives this command,  which causes the Policy CSP to delete the device’s registry settings per the ADMX-backed policy definition.

### Local group policy editor
![group policy editor](images/group-policy-editor.png)

![group policy publisher server 2 settings](images/group-policy-publisher-server-2-settings.png)

Note that most group policies are a simple Boolean type. For a Boolean group policy, when you select *Enabled*, there are no data input fields in the Options Panel and the payload of the syncml is simply <enabled/>.
However, if there are data input fields in the Options panel, then the MDM server must supply this data. The following example illustrates this complexity.  

In the following *Enabling a policy* example, 10 name-value pairs are described by <data /> tags, which correspond to 10 data input fields in the Group Policy Editor Options panel for the policy shown above.  The ADMX file, which defines the policies, is consumed by the MDM server, similar to how the Group Policy Editor consumes it. The Group Policy Editor displays a UI to get the complete policy instance data, which the MDM server’s IT administrator console must also do.  For every element in the ADMX policy definition, there must be corresponding <data /> tag.

> [!IMPORTANT] Any data entry field that is displayed in the group policy page of the Group Policy Editor must be supplied in the encoded XML of the syncml payload. The syncml data payload is equivalent to the user-supplied policy data through GPEdit.msc. 

The id attribute in the ADMX policy definition ties the <data /> tags to the ADMX element. For more information about the policy description format, see [Administrative Template File (ADMX) format](https://msdn.microsoft.com/en-us/library/aa373476(v=vs.85).aspx). Elements can be Text, MultiText, Boolean, Enum, Decimal, or List (for more information, see [policy elements](https://msdn.microsoft.com/en-us/library/dn606004(v=vs.85).aspx)). 

If you search for the string "Publishing_Server2_Name_Prompt", you will find <data id="Publishing_Server2_Name_Prompt" value=" Some display name"/> in the *Enabling a policy* example and its corresponding ADMX policy definition in the appv.admx file:
'''XML
      <elements>
        <text id="Publishing_Server2_Name_Prompt" valueName=" Some display name" required="true"/>
'''

The ADMX file drives the policy definition and is required by the MDM server via the syncml protocol.

The following syncml examples illustrate common options and the corresponding syncml code that can be used for testing your policies. Note that the payload of the syncml must be XML-encoded; for this XML encoding, you can use the [Coder’s Toolbox
](http://coderstoolbox.net/string/#!encoding=xml&action=encode&charset=us_ascii) online tool.


### <a href="" id="enabling-a-policy"></a>Enabling a policy

**Payload**
```XML
<enabled/>
<data id="Publishing_Server2_Name_Prompt" value="Some display name"/>
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
**Request syncml**
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

**Response syncml**
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

**Request syncml**
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

**Response syncml**
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

**Request syncml**
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

**Response syncml**
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

This example shows how Windows maps the name and category path of a group policy to a MDM policy area and policy name. This mapping is part of a set of Windows manifests (extension wm.xml) that, when compiled, parses the associated ADMX file, finds the specified group policy, and stores that definition (metadata) in the MDM Policy CSP client store. When the MDM policy is referenced by a syncml command and the Policy CSP URI, .\[device|user]\vendor\msft\policy\[config|result]\<area>\<policy>, this metadata is referenced and determines what registry keys are set or removed.

In this example, the policy area is AppVirtualization and the policy name is PublishingAllowServer2. Note the following:

-  Policy URI to set a device-wide policy: .\[device|user]\vendor\msft\policy\config\AppVirtualization\PublishingAllowServer2
-  admxbacked attribute: Describes what ADMX file the group policy is defined in. The scope describes whether the policy applies to machine, user, or both.  
-  <ADMXPolicy> element: Describes the internal ID of the group policy that is defined in the ADMX file: %SDXROOT%\onecoreuap\admin\enterprisemgmt\policymanager\policydefinition\appvirtualization\appv.wm.xml:

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
