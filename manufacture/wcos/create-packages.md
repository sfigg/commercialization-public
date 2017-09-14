---
author: kpacquer
Description: Creating OneCore OEM Packages
ms.assetid: cbae6949-ccfe-4015-a9b0-a269f6f30d5a
MSHAttr: 'PreferredLib:/library'
title: Windows Core Operating System (WCOS) features
ms.author: kenpacq
ms.date: 09/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Creating OneCore OEM Packages

## Overview
Packages are the logical building blocks of Windows Core Operating System (WCOS).

*  **Everything you add is packaged**. Every file, library, registry setting and customization that you add to the device is included in a package. Each package includes a package project file (*.wm.xml) that lists the content and its locations.
*  **Packages are signed**. Every customization on your device is trackable to a package with a signature. Only you and partners that you trust can update the packages.
*  **Packages are versioned for easy web-based updates**. Need to change a setting or a file? Update the package and put it on an update server, and the devices can update themselves.

![A sample package file (sample_pkg.cab) includes a package definition file, package contents like apps, drivers, and files, plus a signature file and a version number](images/WCOSPackages.png)

Packages fall into three primary categories:
* Microsoft prebuilt packages that are delivered with mobileos and contain the core operating system
* SoC vendor prebuilt packages that are delivered by the vendor and contain the drivers and firmware that support the device's chipset
* OEM packages that are built by partners to contain their device-specific drivers and customizations

[Learn about how to combine these packages into images for devices.](core-manufacturing-guide.md)


## Create a package project with no content
A package project XML file generally starts with no content. The following is an example of an empty package project.

>[!IMPORTANT]
> The package project XML file must use the "wm.xml" extension.

```xml
<?xml version='1.0' encoding='utf-8' standalone='yes'?>
<identity
  xmlns="urn:Microsoft.CompPlat/ManifestSchema.v1.00"
  xmlns:xsd="http://www.w3.org/2001/XMLSchema"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  name="MediaService"
  namespace="Media"
  owner="OEM"
  >
</identity>
```

If you run the package generator (pkggen.exe) against this project file, a package with no contents will be created.

```
c:\oemsample>pkggen myPackage.wm.xml /universalbsp

 Directory of c:\oemsample

04/03/2017  05:56 PM    <DIR>          .
04/03/2017  05:56 PM    <DIR>          ..
04/03/2017  05:43 PM               333 myPackage.wm.xml
04/03/2017  05:56 PM             8,239 OEM-Media-MediaService.cab
```

## Add content to a package

The contents of a package are organized as a list of XML elements in the package project XML file. To add contents to a package, add a **Components** element with the appropriate child elements as shown in the following excerpt that demonstrates the addition of some files and registry settings to a package.

```xml
<?xml version='1.0' encoding='utf-8' standalone='yes'?>
<identity
    xmlns="urn:Microsoft.CompPlat/ManifestSchema.v1.00"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    name="MediaService"
    namespace="Media"
    owner="OEM"    
    >
  <files>
    <file source="$(_RELEASEDIR)\MediaService.dll"/>
  </files>
  <regKeys>
    <regKey keyName="$(hklm.software)\OEMName\MediaService">
      <regValue
          name="StringValue"
          type="REG_SZ"
          value="MediaService"
          />
      <regValue
          name="DWordValue"
          type="REG_DWORD"
          value="0x00000020"
          />
    </regKey>
  </regKeys>
</identity>
</syntaxhighlight>
<syntaxhighlight lang="text">
```

```text
c:\oemsample>pkggen myPackage.wm.xml /universalbsp /variables:"_RELEASEDIR=c:\release"
```

## Run the pkggen.exe tool

PkgGen.exe [project] /universalbsp ...

```
  [project]··········· Full path to input file : .wm.xml, .pkg.xml, .man
                       Values:<Free Text> Default=NULL

  [universalbsp]······ Convert wm.xml BSP package to cab
                       Values:<true | false> Default=False

  [variables]········· Additional variables used in the project file,syntax:<name>=<value>;<name>=<value>;....
                       Values:<Free Text> Default=NULL

  [cpu]··············· CPU type. Values: (x86|arm|arm64|amd64)
                       Values:<Free Text> Default="arm"

  [languages]········· Supported language identifier list, separated by ';'
                       Values:<Free Text> Default=NULL

  [version]··········· Version string in the form of <major>.<minor>.<qfe>.<build>
                       Values:<Free Text> Default="1.0.0.0"

  [output]············ Output directory for the CAB(s).
                       Values:<Free Text> Default="CurrentDir"
```

## View the contents of a package

Packages use Windows cabinet file technology to store a set of files, double click on the CAB file to view and extract its contents.  Use notepad.exe to view update.mum, this describes how the files are installed onto the device.

```text
arm_dual_media.inf_31bf3856ad364e35_1.0.0.0_none_75dfa724a55b489d
arm_dual_media.inf_31bf3856ad364e35_1.0.0.0_none_75dfa724a55b489d.manifest
arm_dual_sample.inf_31bf3856ad364e35_1.0.0.0_none_a7012ffdafd1caf1
arm_oem-featurearea-feature_31bf3856ad364e35_1.0.0.0_none_9e7ea37811ad5588
arm_oem-media-mediaserv..ployment-deployment_31bf3856ad364e35_1.0.0.0_none_6127250c45e77506.manifest
arm_oem-media-mediaservice_31bf3856ad364e35_1.0.0.0_none_7307c54952eeb87a
arm_oem-media-mediaservice_31bf3856ad364e35_1.0.0.0_none_7307c54952eeb87a.manifest
update.cat
update.mum
```

## Add a language-specific content to a package

In the preceding example, all the files and registry values are language neutral. You can use the package project XML file to add language-related files and registry values to a package. Special flags are used to notify the package generator of language-specific content. The following XML example demonstrates how to designate language-specific content.
```xml
   <language culture="en-us">
    <files>
      <file
          destinationDir="$(runtime.system32)\$(langId)"
          source="$(_RELEASEDIR)\$(langId)\MediaService.mui"
          />
    </files>
  </language>
  <language culture="fr-fr">
    <files>
      <file
          destinationDir="$(runtime.system32)\$(langId)"
          source="$(_RELEASEDIR)\$(langId)\MediaService.mui"
          />
    </files>
  </language>
```

```
pkggen myPackage.wm.xml /universalbsp /variables:"_RELEASEDIR=c:\release" /languages:"en-us;fr-fr"
```

```text
Directory of c:\oemsample

04/04/2017  10:18 PM    <DIR>          .
04/04/2017  10:18 PM    <DIR>          ..
04/04/2017  10:17 PM             2,296 myPackage.wm.xml
04/04/2017  10:17 PM            11,560 OEM-Media-MediaService.cab
04/04/2017  10:17 PM             8,750 OEM-Media-MediaService.Resources_Lang_en-us.cab
04/04/2017  10:17 PM             8,752 OEM-Media-MediaService.Resources_Lang_fr-fr.cab
```

## Add a driver component

Driver injection is supported by using the **driver** element in the package project XML.  Files imported by the INF should be relative to the INF source path (i.e. the default INF file import path is equal to the INF source path). This is the recommended least complex way to author your INF.

```xml
  <drivers>
    <driver>
      <inf source="$(_RELEASEDIR)\Media.inf"/>
    </driver>
  </drivers>
```

If the default file import path is not equal to the INF source path, you can use the defaultImportPath attribute. In the following example, the INF is in the current directory, but the files to be imported are relative to $(_RELEASEDIR).  

```xml
  <drivers>
    <driver defaultImportPath="$(_RELEASEDIR)">
      <inf source="Media.inf"/>
    </driver>
  </drivers>
```

If files to be imported are in random location (not relative to how they are defined in the INF), file overrides can be applied. This is not recommended but is available for special cases.

<syntaxhighlight lang="xml">
  <drivers>
    <driver>
      <inf source="Media.inf"/>
      <files>
         <file name="mdr.sys" source="$(_RELEASEDIR)\path1\mdr.sys" />
         <file name="mdr.dll" source="$(_RELEASEDIR)\path2\mdr.dll" />
      </files>
    </driver>
  </drivers>
</syntaxhighlight>

## Add a service component
The **service** element in the package project XML file, its child elements, and its attributes can be used to define and package a system service.

```xml
   <service
      dependOnService="AudioSrv;AccountProvSvc"
      description="@%SystemRoot%\system32\MediaService.dll,-201"
      displayName="@%SystemRoot%\system32\MediaService.dll,-200"
      errorControl="normal"
      imagePath="%SystemRoot%\system32\svchost.exe -k netsvcs"
      name="MediaService"
      objectName="LocalSystem"
      requiredPrivileges="SeChangeNotifyPrivilege,SeCreateGlobalPrivilege"
      sidType="unrestricted"
      start="delayedAuto"
      startAfterInstall="none"
      type="win32UserShareProcess"
      >
```

## Add BCD Settings
If you wish to make changes to the BCD settings, you will need to do this with 2 files. 

* bcdsettings.xml - This file will contain the declarations for BCD settings.
* bcdsettings.wm.xml - This file is the manifest that will consume the bcdsettings.xml

The following example shows how to enable test signing:

**bcdsettings.xml**

```xml
  <?xml version="1.0" encoding="utf-8"?>
  <BootConfigurationDatabase xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/phone/2011/10/BootConfiguration">
  <Objects>

    <!--  Allow Test Signing Certificate -->
    <Object SaveKeyToRegistry="false">
      <FriendlyName>Global Settings Group</FriendlyName>
      <Elements>
        <Element>
          <DataType>
            <WellKnownType>Allow Pre-release Signatures</WellKnownType>
          </DataType>
          <ValueType>
            <BooleanValue>true</BooleanValue>
          </ValueType>
        </Element>
      </Elements>
    </Object>

    <Object SaveKeyToRegistry="false">
      <FriendlyName>Windows Boot Manager</FriendlyName>
      <Elements>
        <Element>
          <DataType>
            <WellKnownType>Allow Pre-release Signatures</WellKnownType>
          </DataType>
          <ValueType>
            <BooleanValue>true</BooleanValue>
          </ValueType>
        </Element>
      </Elements>
    </Object>

  </Objects>
</BootConfigurationDatabase>
</identity>
```

**bcdsettings.wm.xml**
```xml
  <?xml version='1.0' encoding='utf-8' standalone='yes'?>
  <identity
    xmlns="urn:Microsoft.CompPlat/ManifestSchema.v1.00"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    owner="OEM"
    name="BcdOEMPackageName"
    namespace="OEMName"
    >
    <onecorePackageInfo targetPartition="EFIESP" releaseType="Test" />
    <bcdStore source=".\bcdsettings.xml" buildFilter="not build.isWow"/>
  </identity>
```

See the [BCDLayout template](bcdlayout.md) for more detail on possible settings

## COM Registration

COM servers and class definitions should be registered using COM elements.

```xml
  <COM>
    <servers>
      <inProcServer path="%SystemRoot%\system32\MediaService.dll">
        <classes>
          <classDefinition
              id="{2B32ECC3-C3BB-4701-82BB-EB7FE370D999}"
              name="CLSID_MediaManager"
              threading="MTA"
              />
        </classes>
      </inProcServer>
    </servers>
  </COM>
```

## Project scope macros

Package projects can utilize macros to simplify the XML creation process. Some macros are already globally defined, in which case they can't be changed or modified, but you can also define local macros for use within your own package project XML file. This local macro definition is embedded in the specific package project file through the macros element. The following example demonstrates creating a local macro for use in a package project file.

```xml
  <macros>
    <macro
        id="ServiceName"
        value="MediaService"
        />
  </macros>
  <regKeys>
    <regKey keyName="$(hklm.software)\OEMName\MediaService">
      <regValue
          name="StringValue"
          type="REG_SZ"
          value="$(ServiceName)"
          />
    </regKey>
  </regKeys>
```

## Security

If resources in your manifest are sensitive from a privacy or security perspective, or your resource(s) need to be accessed from within an app container, then you need to secure them using either Declarative Security or SDDL's.

See quick overview of Declarative Security:

https://osgwiki.com/wiki/Security_Model#Declarative_Security

For more information on protecting or accessing protected resources using Declarative Security:

https://osgwiki.com/wiki/Security_Model_How-Tos

OEM Packages only support private resources defined on services.

### Private Resources

If a service requires exclusive access to data and/or RPC interfaces, these resources should be private.

```xml
  <service
      name="MediaService"
      objectName="LocalSystem"
      start="delayedAuto"
      ...
      >
    <privateResources>
      <regKey path="$(hklm.software)\OEMName\MediaService\Data\(*)"/>
      <transientObject
          path="MediaService\RpcServer"
          readOnly="Yes"
          type="$(OBJECT_RPC)"
          />
    </privateResources>
  </service>
```

## Build and Filter WOW Packages
To build Guest or WOW packages (32 bit packages to run on 64 bit devices) add the buildWow="true" attribute to myPackage.wm.wml

```xml
<identity
    xmlns="urn:Microsoft.CompPlat/ManifestSchema.v1.00"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    name="MediaService"
    namespace="Media"
    owner="OEM"
    buildWow="true"
    >
```

Running PkgGen.exe with now generate one WOW package for each host package.

```text
04/05/2017  07:59 AM            11,870 OEM-Media-MediaService.cab
04/05/2017  07:59 AM             8,750 OEM-Media-MediaService.Resources_Lang_en-us.cab
04/05/2017  08:00 AM             8,810 OEM-Media-MediaService.Resources_Lang_en-us_Wow_arm64.arm.cab
04/05/2017  08:00 AM             8,754 OEM-Media-MediaService.Resources_Lang_fr-fr.cab
04/05/2017  08:00 AM             8,812 OEM-Media-MediaService.Resources_Lang_fr-fr_Wow_arm64.arm.cab
04/05/2017  07:59 AM            10,021 OEM-Media-MediaService_Wow_arm64.arm.cab
```

Typically, the 64 bit device will get it's Host 64 bit package and it's Guest 32 bit or WOW package, both generated from myPackage.wm.xml.  To avoid resource conflicts between the two packages build filters are used:<syntaxhighlight lang="xml">
  <regKeys buildFilter="not build.isWow and build.arch = arm" >
    <regKey keyName="$(hklm.software)\OEMName\MediaService">
      <regValue
          name="StringValue"
          type="REG_SZ"
          value="MediaService"
          />
    </regKey>
</syntaxhighlight>In this case, the registry keys are exclusive to the Host 32 bit ARM package.  The CPU switch is used to set build.arch, and build.isWow is set by PkgGen to false when building the 32 bit Host Package, then true when building the 32 bit Guest or WOW package.

```text
[cpu]··············· CPU type. Values: (x86|arm|arm64|amd64)
                     Values:<Free Text> Default="arm"
```

## Schema
Only the common elements and attributes are documented here.  To get the full schema run "pkggen /universalbsp /wmxsd:.", then open WM0.XSD with Visual Studio.  

### <identity>

|Attribute |Type   |Required|Macro|Notes|
|----------|-------|---------|------|------|
|owner     |string |* | | |
|name      |string |* |*||
|namespace |string |  |*||
|buildWow  |boolean|  | |Default = false, set to true to generate WOW packages|

```xml
<identity name="FeatureName" namespace="FeatureArea" owner="OEM" buildWow="false"/>
```

### <onecorePackageInfo>
{| class="wikitable"
!Attribute
!Type
!Required
!Macro
!Notes
|-
|targetPartition
|MainOS
Data

UpdateOS

EFIESP

PLAT
|*
|
|If onecorePackageInfo is not specified, Default = MainOS
|-
|releaseType
|Production
Test
|
|
|if onecorePackageInfo is not specified, Default = Production
|}
<syntaxhighlight lang="xml">
<onecorePackageInfo targetPartition="MainOS" releaseType="Production"/>
</syntaxhighlight>

### <file>
{| class="wikitable"
!Attribute
!Type
!Required
!Macro
!Notes
|-
|source
|string
|*
|*
|
|-
|destinationDir
|string
|
|*
|destinationDir must start with one of the following built in runtime macros:
$(runtime.bootDrive),
$(runtime.systemDrive),
$(runtime.systemRoot),
$(runtime.windows),
$(runtime.system32),
$(runtime.system),
$(runtime.drivers),
$(runtime.help),
$(runtime.inf),
$(runtime.fonts),
$(runtime.wbem),
$(runtime.appPatch),
$(runtime.sysWow64),
$(runtime.mui),
$(runtime.commonFiles),
$(runtime.commonFilesX86),
$(runtime.programFiles),
$(runtime.programFilesX86),
$(runtime.programData),
$(runtime.userProfile),
$(runtime.startMenu),
$(runtime.documentSettings),
$(runtime.sharedData),
$(runtime.apps),
$(runtime.clipAppLicenseInstall), If not specifed, the default is $(runtime.system32)
|-
|name
|string
|
|
|used to rename the source file
|-
|buildFilter
|string
|
|
|
|}
<syntaxhighlight lang="xml">
<file buildFilter="(not build.isWow) and (build.arch = arm)" name="output.dll" source="$(_RELEASEDIR)\input.dll" destinationDir="$(runtime.system32)"/>
</syntaxhighlight>

### <regKey>
{| class="wikitable"
!Attribute
!Type
!Required
!Macro
!Notes
|-
|keyName
|string
|*
|*
|keyName must start with one of the following built in runtime macros: 
$(hklm.system),
$(hklm.software),
$(hklm.hardware),
$(hklm.sam),
$(hklm.security),
$(hklm.bcd),
$(hklm.drivers),
$(hklm.svchost),
$(hklm.policies),
$(hklm.microsoft),
$(hklm.windows),
$(hklm.windowsnt),
$(hklm.currentcontrolset),
$(hklm.services),
$(hklm.control),
$(hklm.autologger),
$(hklm.enum),
$(hkcr.root),
$(hkcr.classes),
$(hkcu.root),
$(hkuser.default)
|-
|buildFilter
|string
|
|
|
|}

### <regValue>
{| class="wikitable"
!Attribute
!Type
!Required
!Macro
!Notes
|-
|name
|string
|
|
|Name of the value you are specifying. If not specified, the Default value in the key will be over-written
|-
|type
|string
|*
|
|type must be one of the following:
REG_SZ,
REG_MULTI_SZ,
REG_DWORD,
REG_QWORD,
REG_BINARY,
REG_EXPAND_SZ
|-
|value
|string
|
|
|
|-
|buildFilter
|string
|
|
|
|}
<syntaxhighlight lang="xml">
<regKey buildFilter="buildFilter1" keyName="keyName1">
  <regValue buildFilter="buildFilter1" name="name1" value="value1" type="REG_SZ" />
  <regValue buildFilter="buildFilter2" name="name2" value="value1,value2" type="REG_MULTI_SZ" />
  <regValue buildFilter="buildFilter3" name="name3" value="00000000FFFFFFFF" type="REG_QWORD" />
  <regValue buildFilter="buildFilter4" name="name4" value="FFFFFFFF" type="REG_DWORD" />
  <regValue buildFilter="buildFilter5" name="name5" value="0AFB2" type="REG_BINARY" />
  <regValue buildFilter="buildFilter6" name="name6" value="&quot;%ProgramFiles%\MediaPlayer\wmplayer.exe&quot;" type="REG_EXPAND_SZ" />
</regKey>

</syntaxhighlight>
