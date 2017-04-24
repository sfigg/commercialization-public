---
title: Sample syncml for various ADMX elements
description: Sample syncml for various ADMX elements
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# Sample syncml for various ADMX elements

___

This page describes sample SyncML for the various ADMX elements like Text, Multi-Text, Decimal, Boolean, and List. For more details, please refer to  [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

## How a Group Policy policy category path and name are mapped to a MDM area and policy name

___


Below is the internal OS mapping of a Group Policy to a MDM area and name. This is part of a set of Windows manifests (extension wm.xml) that when compiled parses out the associated ADMX file, finds the specified Group Policy policy and stores that definition (metadata) in the MDM Policy CSP client store.  ADMX backed policies are organized hierarchically. Their scope can be machine, user, or have a scope of both. When the MDM policy is referred to through a Syncml command and the Policy CSP URI, as shown below, this metadata is referenced and determines what registry keys are set or removed. Machine-scope policies are referenced via .\Device and the user scope policies via .\User.

`./[Device|User]/Vendor/MSFT/Policy/Config/[config|result]/<area>/<policy>`

The **wm.xml** for each mapped area can be found in its own directory under:

`\\SDXROOT\onecoreuap\admin\enterprisemgmt\policymanager\policydefinition\`

Note that the data payload of the SyncML needs to be encoded so that it does not conflict with the boilerplate SyncML XML tags. Use this online tool for encoding and encoding the policy data [Coder's Toolbox](http://coderstoolbox.net/string/#!encoding=xml&action=encode&charset=us_ascii)

**Snippet of wm.xml for AppVirtualization area:**

```XML
<identity xmlns="urn:Microsoft.CompPlat/ManifestSchema.v1.00"  xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" owner="Microsoft" namespace="Windows-DeviceManagement-PolicyDefinition" name="AppVirtualization">
  <policyDefinitions>
    <area name="AppVirtualization">
      <policies>
.
.
.
                 <stringPolicy name="PublishingAllowServer2" notSupportedOnPlatform="phone" admxbacked="appv.admx" scope="machine">
                    <ADMXPolicy area="appv~AT~System~CAT_AppV~CAT_Publishing" name="Publishing_Server2_Policy" scope="machine" />
                   <registryKeyRedirect path="SOFTWARE\Policies\Microsoft\AppV\Client\Publishing\Servers\2" />
                 </stringPolicy >
.
.
.
```

The **LocURI** for the above GP policy is:

`.\Device\Vendor\MSFT\Policy\Config\AppVirtualization\PublishingAllowServer2`

To construct SyncML for your area/policy using the samples below, you need to update the data id and the value in the <Data> section of the SyncML. The items highlighted in gray are the escape characters needed and can be retained as shown.

## Text Element

___


The text element simply corresponds to a string and correspondingly to an edit box in a policy panel display by gpedit.msc. The string is stored in the registry of type REG_SZ.

**ADMX file: inetres.admx**

```XML
<policy name="RestrictHomePage" class="User" displayName="$(string.RestrictHomePage)" explainText="$(string.IE_ExplainRestrictHomePage)" presentation="$(presentation.RestrictHomePage)" key="Software\Policies\Microsoft\Internet Explorer\Control Panel" valueName="HomePage">
  <parentCategory ref="InternetExplorer" />
  <supportedOn ref="SUPPORTED_IE5" />
  <elements>
	<text id="EnterHomePagePrompt" key="Software\Policies\Microsoft\Internet Explorer\Main" valueName="Start Page" required="true" />
  </elements>
</policy>
```

### Corresponding SyncML:

```XML
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>$CmdId$</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableHomePageChange</LocURI>
        </Target>
        <Data><![CDATA[<enabled/><data id="EnterHomePagePrompt" value="mystartpage"/>]]></Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

## MultiText Element

___


The multiText element simply corresponds to a REG_MULTISZ registry string and correspondingly to a grid to enter multiple strings in a policy panel display by gpedit.msc.  Note that it is expected that each string in the SyncML is to be separated by the Unicode character 0xF000 (encoded version: &#xF000;)

```XML
<policy name="Virtualization_JITVAllowList" class="Machine" displayName="$(string.Virtualization_JITVAllowList)"
		explainText="$(string.Virtualization_JITVAllowList_Help)" presentation="$(presentation.Virtualization_JITVAllowList)"
		  key="SOFTWARE\Policies\Microsoft\AppV\Client\Virtualization"
		  valueName="ProcessesUsingVirtualComponents">
	<parentCategory ref="CAT_Virtualization" />
  <supportedOn ref="windows:SUPPORTED_Windows7" />
  <elements>
	<multiText id="Virtualization_JITVAllowList_Prompt" valueName="ProcessesUsingVirtualComponents" />
  </elements>
</policy>
```

### Corresponding SyncML:

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
          <LocURI>./Device/Vendor/MSFT/Policy/Config/AppVirtualization/VirtualComponentsAllowList</LocURI>
        </Target>
        <Data>&lt;enabled/&gt;&lt;data id=&quot;Virtualization_JITVAllowList_Prompt&quot; value=&quot;C:\QuickPatch\TEST\snot.exe&#xF000;C:\QuickPatch\TEST\foo.exe&#xF000;C:\QuickPatch\TEST\bar.exe&quot;/&gt;</Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

## List Element (and its variations)

___


The List element simply corresponds to a hive of REG_SZ registry strings and correspondingly to a grid to enter multiple strings in a policy panel display by gpedit.msc. How this is represented in SyncML is as a string containing pairs of strings. Each pair is a REG_SZ name/value key. 
Note that it is expected that each string in the SyncML is to be separated by the Unicode character 0xF000 (encoded version: &#xF000;) 
Variations of the List element dictated by attributes. These attributes are ignored by the Policy Manager runtime. It is expected that the MDM server to manage the name/value pairs. See below a simple writeup of Group Policy List. 

**ADMX file: inetres.admx**

```XML
<policy name="SecondaryHomePages" class="Both" displayName="$(string.SecondaryHomePages)" explainText="$(string.IE_ExplainSecondaryHomePages)" presentation="$(presentation.SecondaryHomePages)" key="Software\Policies\Microsoft\Internet Explorer\Main\SecondaryStartPages">
  <parentCategory ref="InternetExplorer" />
  <supportedOn ref="SUPPORTED_IE8" />
  <elements>
	<list id="SecondaryHomePagesList" additive="true" />
  </elements>
</policy>
```

### Corresponding SyncML:

```XML
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
          <LocURI>./User/Vendor/MSFT/Policy/Config/InternetExplorer/DisableSecondaryHomePageChange</LocURI>
        </Target>
        <Data>&lt;Enabled/&gt;&lt;Data id=&quot;SecondaryHomePagesList&quot; value=&quot;http://name1&#xF000;http://name1&#xF000;http://name2&#xF000;http://name2&quot;/&gt;</Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

## No Elements

___


```XML
<policy name="NoUpdateCheck" class="Machine" displayName="$(string.NoUpdateCheck)" explainText="$(string.IE_ExplainNoUpdateCheck)" key="Software\Policies\Microsoft\Internet Explorer\Infodelivery\Restrictions" valueName="NoUpdateCheck">
  <parentCategory ref="InternetExplorer" />
  <supportedOn ref="SUPPORTED_IE5_6" />
</policy>
```

### Corresponding SyncML:

```XML
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
          <LocURI>./Device/Vendor/MSFT/Policy/Config/InternetExplorer/DisableUpdateCheck</LocURI>
        </Target>
        <Data>&lt;Enabled/&gt;</Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

## Enum

___


```XML
<policy name="EncryptionMethodWithXts_Name" class="Machine" displayName="$(string.EncryptionMethodWithXts_Name)" explainText="$(string.EncryptionMethodWithXts_Help)" presentation="$(presentation.EncryptionMethodWithXts_Name)" key="SOFTWARE\Policies\Microsoft\FVE">
        <parentCategory ref="FVECategory" />
        <!--Bug OS:4242178 -->
        <supportedOn ref="windows:SUPPORTED_Windows_10_0" />

        <elements>
            <enum id="EncryptionMethodWithXtsOsDropDown_Name" valueName="EncryptionMethodWithXtsOs" required="true">
                <item displayName="$(string.EncryptionMethodDropDown_AES128_Name2)">
                    <value>
                        <decimal value="3" />
                    </value>
                </item>
                <item displayName="$(string.EncryptionMethodDropDown_AES256_Name2)">
                    <value>
                        <decimal value="4" />
                    </value>
                </item>
                <item displayName="$(string.EncryptionMethodDropDown_XTS_AES128_Name)">
                    <value>
                        <decimal value="6" />
                    </value>
                </item>
                <item displayName="$(string.EncryptionMethodDropDown_XTS_AES256_Name)">
                    <value>
                        <decimal value="7" />
                    </value>
                </item>
            </enum>

        </elements>
</policy>
```

### Corresponding SyncML:

```XML
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/Policy/Config/BitLocker/EncryptionMethodByDriveType</LocURI>
        </Target>
        <Data>
          &lt;enabled/&gt;
          &lt;data id=&quot;EncryptionMethodWithXtsOsDropDown_Name&quot; value=&quot;4&quot;/&gt;
        </Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

## Decimal Element

___


```XML
<policy name="Streaming_Reestablishment_Interval" class="Machine" displayName="$(string.Streaming_Reestablishment_Interval)" 
            explainText="$(string.Streaming_Reestablishment_Interval_Help)" presentation="$(presentation.Streaming_Reestablishment_Interval)" 
            key="SOFTWARE\Policies\Microsoft\AppV\Client\Streaming">
      <parentCategory ref="CAT_Streaming" />
      <supportedOn ref="windows:SUPPORTED_Windows7" />
      <elements>
        <decimal id="Streaming_Reestablishment_Interval_Prompt" valueName="ReestablishmentInterval" minValue="0" maxValue="3600"/>
      </elements>
</policy>
```

### Corresponding SyncML:

```XML
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingAllowReestablishmentInterval</LocURI>
        </Target>
        <Data>
          &lt;enabled/&gt;
          &lt;data id=&quot;Streaming_Reestablishment_Interval_Prompt&quot; value=&quot;4&quot;/&gt;
        </Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

## Boolean Element

___


```XML
<policy name="DeviceInstall_Classes_Deny" class="Machine" displayName="$(string.DeviceInstall_Classes_Deny)" explainText="$(string.DeviceInstall_Classes_Deny_Help)" presentation="$(presentation.DeviceInstall_Classes_Deny)" key="Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions" valueName="DenyDeviceClasses">
      <parentCategory ref="DeviceInstall_Restrictions_Category" />
      <supportedOn ref="windows:SUPPORTED_WindowsVista" />
      <enabledValue>
        <decimal value="1" />
      </enabledValue>
      <disabledValue>
        <decimal value="0" />
      </disabledValue>
      <elements>
        <list id="DeviceInstall_Classes_Deny_List" key="Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses" valuePrefix="" />
        <boolean id="DeviceInstall_Classes_Deny_Retroactive" valueName="DenyDeviceClassesRetroactive" >
          <trueValue>
            <decimal value="1" />
          </trueValue>
          <falseValue>
            <decimal value="0" />
          </falseValue>
        </boolean>
      </elements>
</policy>
```

### Corresponding SyncML:

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
          <LocURI>./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses</LocURI>
        </Target>
        <Data>
          &lt;enabled/&gt;&lt;data id=&quot;DeviceInstall_Classes_Deny_Retroactive&quot; value=&quot;true&quot;/&gt;
          &lt;Data id=&quot;DeviceInstall_Classes_Deny_List&quot; value=&quot;1&#xF000;deviceId1&#xF000;2&#xF000;deviceId2&quot;/&gt;
        </Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

	