---
author: kpacquer
Description: Windows Universal OEM Package Schema
ms.assetid: cbae6949-ccfe-4015-a9b0-a269f6f30d5a
MSHAttr: 'PreferredLib:/library'
title: Windows Universal OEM Package Schema
ms.author: kenpacq
ms.date: 09/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Universal OEM Package Schema

You can manually edit your packages using the Universal OEM Package Schema.

[Creating Windows Universal OEM Packages](create-packages.md)



## Schema
Only the common elements and attributes are documented here.  To get the full schema run "pkggen /universalbsp /wmxsd:.", then open WM0.XSD with Visual Studio.  

### identity
|Attribute |Type   |Required|Macro |Notes |
|----------|-------|--------|------|------|
|owner     |string |*       |      |      |
|name      |string |*       |*     |      |
|namespace |string |        |*     |      |
|buildWow  |boolean|        |      |Default = false, set to true to generate WOW packages|

```xml
<identity name="FeatureName" namespace="FeatureArea" owner="OEM" buildWow="false"/>
```

### onecorePackageInfo
|Attribute      |Type   |Required|Macro |Notes |
|---------------|-------|--------|------|------|
|targetPartition|MainOS  Data  UpdateOS  EFIESP  PLAT |* | |If onecorePackageInfo is not specified, Default = MainOS    |
|releaseType    |Production   Test                    |  | |If onecorePackageInfo is not specified, Default = Production|

```xml
<onecorePackageInfo targetPartition="MainOS" releaseType="Production"/>
```

### file
|Attribute     |Type   |Required|Macro |Notes |
|--------------|-------|--------|------|------|
|source        |string |*       |*     |      |
|destinationDir|string |        |*     |destinationDir must start with one of the following built in runtime macros below:|
|name |string | | |used to rename the source file|
|buildFilter |string | | | |

destinationDir must start with:
- $(runtime.bootDrive)
- $(runtime.systemDrive)
- $(runtime.systemRoot)
- $(runtime.windows)
- $(runtime.system32)
- $(runtime.system)
- $(runtime.drivers)
- $(runtime.help)
- $(runtime.inf)
- $(runtime.fonts)
- $(runtime.wbem)
- $(runtime.appPatch)
- $(runtime.sysWow64)
- $(runtime.mui)
- $(runtime.commonFiles)
- $(runtime.commonFilesX86)
- $(runtime.programFiles)
- $(runtime.programFilesX86)
- $(runtime.programData)
- $(runtime.userProfile)
- $(runtime.startMenu)
- $(runtime.documentSettings)
- $(runtime.sharedData)
- $(runtime.apps)
- $(runtime.clipAppLicenseInstall)
- If not specifed, the default is $(runtime.system32) 

```xml
<file buildFilter="(not build.isWow) and (build.arch = arm)" name="output.dll" source="$(_RELEASEDIR)\input.dll" destinationDir="$(runtime.system32)"/>
```

### regKey
|Attribute      |Type   |Required|Macro |Notes |
|---------------|-------|--------|------|------|
|keyName        |string |*       |*     |keyName must start with $(hklm.system), $(hklm.software), $(hklm.hardware), $(hklm.sam), $(hklm.security), $(hklm.bcd), $(hklm.drivers), $(hklm.svchost), $(hklm.policies), $(hklm.microsoft), $(hklm.windows), $(hklm.windowsnt), $(hklm.currentcontrolset), $(hklm.services), $(hklm.control), $(hklm.autologger), $(hklm.enum), $(hkcr.root), $(hkcr.classes), $(hkcu.root), $(hkuser.default)| 
|buildFilter    |string |        |      |      |

```xml
<regKey buildFilter="buildFilter1" keyName="keyName1">
  <regValue buildFilter="buildFilter1" name="name1" value="value1" type="REG_SZ" />
</regKey>
```

### regValue
|Attribute      |Type   |Required|Macro |Notes |
|---------------|-------|--------|------|------|
|name           |string |        |      |Name of the value you are specifying. If not specified, the Default value in the key will be over-written|
|type           |string |*       |      |type must be one of these: REG_SZ, REG_MULTI_SZ, REG_DWORD, REG_QWORD, REG_BINARY, REG_EXPAND_SZ|
|value          |string |        |      |       |
|buildFilter    |string |        |      |       |

```xml
<regKey buildFilter="buildFilter1" keyName="keyName1">
  <regValue buildFilter="buildFilter1" name="name1" value="value1" type="REG_SZ" />
  <regValue buildFilter="buildFilter2" name="name2" value="value1,value2" type="REG_MULTI_SZ" />
  <regValue buildFilter="buildFilter3" name="name3" value="00000000FFFFFFFF" type="REG_QWORD" />
  <regValue buildFilter="buildFilter4" name="name4" value="FFFFFFFF" type="REG_DWORD" />
  <regValue buildFilter="buildFilter5" name="name5" value="0AFB2" type="REG_BINARY" />
  <regValue buildFilter="buildFilter6" name="name6" value="&quot;%ProgramFiles%\MediaPlayer\wmplayer.exe&quot;" type="REG_EXPAND_SZ" />
</regKey>
```

## Schema file

```xml
<?xml version="1.0" encoding="utf-8"?>
<xsd:schema xmlns:td="urn:Microsoft.CompPlat/ManifestSchema.v1.00" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="urn:Microsoft.CompPlat/ManifestSchema.v1.00" xmlns:wm="urn:Microsoft.CompPlat/ManifestSchema.v1.00" attributeFormDefault="unqualified" elementFormDefault="qualified" targetNamespace="urn:Microsoft.CompPlat/ManifestSchema.v1.00">
  <xs:element name="COM" type="wm:CT_COM" />
  <xs:complexType name="CT_COM">
    <xs:all>
      <xs:element minOccurs="0" maxOccurs="1" name="interfaces" type="wm:CT_Interfaces" />
      <xs:element minOccurs="0" maxOccurs="1" name="appIds" type="wm:CT_AppIds" />
      <xs:element minOccurs="0" maxOccurs="1" name="classDefinitions" type="wm:CT_ClassDefinitions" />
      <xs:element minOccurs="0" maxOccurs="1" name="servers" type="wm:CT_Servers" />
      <xs:element minOccurs="0" maxOccurs="1" name="typeLibs" type="wm:CT_TypeLibs" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="CT_Interfaces">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="unbounded" name="interface">
        <xs:complexType>
          <xs:attribute name="id" type="wm:ST_GUID" use="required" />
          <xs:attribute name="name" type="xs:string" use="optional" />
          <xs:attribute name="proxyStubClsId" type="wm:ST_GUID" use="optional" />
          <xs:attribute name="buildFilter" type="xs:string" use="optional" />
        </xs:complexType>
      </xs:element>
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_AppIds">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="unbounded" name="appId">
        <xs:complexType>
          <xs:attribute name="id" type="wm:ST_GUID" use="required" />
          <xs:attribute name="accessPermission" type="wm:ST_Permissions" use="optional" />
          <xs:attribute name="launchAndActivationPermission" type="wm:ST_Permissions" use="optional" />
          <xs:attribute name="buildFilter" type="xs:string" use="optional" />
        </xs:complexType>
      </xs:element>
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_Servers">
    <xs:choice minOccurs="0" maxOccurs="unbounded">
      <xs:element minOccurs="0" maxOccurs="unbounded" name="exeServer" type="wm:CT_OutOfProcServer" />
      <xs:element minOccurs="0" maxOccurs="unbounded" name="inProcServer" type="wm:CT_InProcServer" />
    </xs:choice>
  </xs:complexType>
  <xs:complexType name="CT_TypeLibs">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" name="typeLib" type="wm:CT_TypeLib" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_Clients">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="unbounded" name="client">
        <xs:complexType>
          <xs:all>
            <xs:element minOccurs="0" maxOccurs="1" name="securityDescriptor" type="wm:CT_SecurityDescriptor" />
          </xs:all>
          <xs:attribute name="name" type="xs:string" use="required" />
          <xs:attribute name="appId" type="wm:ST_GUID" use="required" />
          <xs:attribute name="description" type="xs:string" use="optional" />
          <xs:attribute name="comment" type="xs:string" use="optional" />
          <xs:attribute name="buildFilter" type="xs:string" use="optional" />
        </xs:complexType>
      </xs:element>
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_TypeLibPath">
    <xs:attribute name="path" type="xs:string" use="required" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_ClassDefinitions">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="unbounded" name="classDefinition" type="wm:CT_ClassDefinition" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_ClassDefinition">
    <xs:attribute name="id" type="wm:ST_GUID" use="required" />
    <xs:attribute name="name" type="xs:string" use="optional" />
    <xs:attribute name="appId" type="xs:string" use="optional" />
    <xs:attribute name="version" type="wm:ST_Version" use="optional" />
    <xs:attribute name="progId" type="wm:ST_ProgId" use="optional" />
    <xs:attribute name="versionIndependentProgId" type="wm:ST_VersionIndependentProgId" use="optional" />
    <xs:attribute name="typeLib" type="wm:ST_GUID" use="optional" />
    <xs:attribute name="defaultIcon" type="wm:ST_ResourcePath" use="optional" />
    <xs:attribute name="defaultIconSymbolName" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_SecurityDescriptor">
    <xs:attribute name="name" type="xs:string" use="required" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_Elevation">
    <xs:attribute name="iconReference" type="xs:string" use="optional" />
    <xs:attribute name="iconReferenceSymbolName" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_ClassImpl">
    <xs:attribute name="clsId" type="wm:ST_GUID" use="required" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_InProcHandlerClassImpl">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:CT_ClassImpl">
        <xs:attribute name="systemTrustedMarshaler" type="xs:boolean" use="optional" />
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="CT_InProcServerClassImpl">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:CT_InProcHandlerClassImpl">
        <xs:attribute name="threading" type="wm:ST_ThreadingModel" use="required" />
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="CT_InProcHandlerClassDefinition">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:CT_ClassDefinition">
        <xs:attribute name="systemTrustedMarshaler" type="xs:boolean" use="optional" />
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="CT_InProcServerClassDefinition">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:CT_InProcHandlerClassDefinition">
        <xs:attribute name="threading" type="wm:ST_ThreadingModel" use="required" />
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="CT_Classes">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" name="classImpl" type="wm:CT_ClassImpl" />
      <xs:element minOccurs="0" maxOccurs="unbounded" name="classDefinition" type="wm:CT_ClassDefinition" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_InProcHandlerClasses">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" name="classImpl" type="wm:CT_InProcHandlerClassImpl" />
      <xs:element minOccurs="0" maxOccurs="unbounded" name="classDefinition" type="wm:CT_InProcHandlerClassDefinition" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_InProcServerClasses">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" name="classImpl" type="wm:CT_InProcServerClassImpl" />
      <xs:element minOccurs="0" maxOccurs="unbounded" name="classDefinition" type="wm:CT_InProcServerClassDefinition" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_WinRTOutOfProcClass">
    <xs:all>
      <xs:element minOccurs="0" maxOccurs="1" name="securityDescriptor" type="wm:CT_SecurityDescriptor" />
    </xs:all>
    <xs:attribute name="activatableClassId" type="wm:ST_ActivatableClassId" use="required" />
    <xs:attribute name="trustLevel" type="wm:ST_TrustLevel" use="required" />
    <xs:attribute name="activatableClassIdSymbolName" type="xs:string" use="optional" />
    <xs:attribute name="comment" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_WinRTInProcClass">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:CT_WinRTOutOfProcClass">
        <xs:attribute name="threading" type="wm:ST_WinRTThreadingModel" use="required" />
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="CT_WinRTOutOfProcClasses">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="unbounded" name="class" type="wm:CT_WinRTOutOfProcClass" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_WinRTInProcClasses">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="unbounded" name="class" type="wm:CT_WinRTInProcClass" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_ServiceServer">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="1" name="classes" type="wm:CT_Classes" />
    </xs:sequence>
    <xs:attribute name="appId" type="xs:string" use="required" />
    <xs:attribute name="comment" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_OutOfProcServer">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="1" name="classes" type="wm:CT_Classes" />
    </xs:sequence>
    <xs:attribute name="path" type="xs:string" use="required" />
    <xs:attribute name="commandLineArguments" type="xs:string" use="optional" />
    <xs:attribute name="comment" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_SurrogateServer">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="1" name="classes" type="wm:CT_Classes" />
    </xs:sequence>
    <xs:attribute name="path" type="xs:string" use="required" />
    <xs:attribute name="comment" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_InProcServer">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="1" name="classes" type="wm:CT_InProcServerClasses" />
    </xs:sequence>
    <xs:attribute name="path" type="xs:string" use="required" />
    <xs:attribute name="comment" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_InProcHandler">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="1" name="classes" type="wm:CT_InProcHandlerClasses" />
    </xs:sequence>
    <xs:attribute name="path" type="xs:string" use="required" />
    <xs:attribute name="comment" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_ProxyStub">
    <xs:all>
      <xs:element minOccurs="0" maxOccurs="1" name="securityDescriptor" type="wm:CT_SecurityDescriptor" />
    </xs:all>
    <xs:attribute name="path" type="xs:string" use="required" />
    <xs:attribute name="id" type="wm:ST_GUID" use="required" />
    <xs:attribute name="idSymbolName" type="xs:string" use="optional" />
    <xs:attribute name="name" type="xs:string" use="optional" />
    <xs:attribute name="comment" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_WinRTOutOfProcServer">
    <xs:all>
      <xs:element minOccurs="0" maxOccurs="1" name="securityDescriptor" type="wm:CT_SecurityDescriptor" />
      <xs:element minOccurs="1" maxOccurs="1" name="classes" type="wm:CT_WinRTOutOfProcClasses" />
    </xs:all>
    <xs:attribute name="name" type="wm:ST_ServerName" use="required" />
    <xs:attribute name="permissions" type="wm:ST_Permissions" use="optional" />
    <xs:attribute name="comment" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_WinRTExeServer">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:CT_WinRTOutOfProcServer">
        <xs:attribute name="path" type="xs:string" use="required" />
        <xs:attribute name="commandLineArguments" type="xs:string" use="optional" />
        <xs:attribute name="identity" type="wm:ST_WinRTIdentity" use="required" />
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="CT_WinRTSvchostService">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:CT_WinRTOutOfProcServer">
        <xs:attribute name="serviceName" type="xs:string" use="required" />
        <xs:attribute name="identity" type="wm:ST_WinRTServiceIdentity" use="required" />
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="CT_WinRTExeService">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:CT_WinRTSvchostService">
        <xs:attribute name="path" type="xs:string" use="optional" />
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="CT_WinRTInProcServer">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="1" name="classes" type="wm:CT_WinRTInProcClasses" />
    </xs:sequence>
    <xs:attribute name="path" type="xs:string" use="required" />
    <xs:attribute name="comment" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_TypeLibRef">
    <xs:attribute name="id" type="wm:ST_GUID" use="required" />
    <xs:attribute name="version" type="wm:ST_Version" use="required" />
  </xs:complexType>
  <xs:complexType name="CT_TypeLib">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="1" name="versions" type="wm:CT_TypeLibVersions" />
      <xs:element minOccurs="0" maxOccurs="1" name="securityDescriptor" type="wm:CT_SecurityDescriptor" />
    </xs:sequence>
    <xs:attribute name="id" type="wm:ST_GUID" use="required" />
    <xs:attribute name="idSymbolName" type="xs:string" use="optional" />
    <xs:attribute name="comment" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_TypeLibVersions">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" name="version" type="wm:CT_TypeLibVersion" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_TypeLibVersion">
    <xs:choice minOccurs="1" maxOccurs="2">
      <xs:element minOccurs="1" maxOccurs="1" name="win32Path" type="wm:CT_TypeLibPath" />
      <xs:element minOccurs="1" maxOccurs="1" name="win64Path" type="wm:CT_TypeLibPath" />
    </xs:choice>
    <xs:attribute name="versionNumber" type="wm:ST_Version" use="required" />
    <xs:attribute name="localeId" type="wm:ST_HexadecimalNumber" use="required" />
    <xs:attribute name="flags" type="xs:unsignedInt" use="optional" />
    <xs:attribute name="helpDir" type="xs:string" use="optional" />
    <xs:attribute name="buildFilter" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_ServiceRef">
    <xs:attribute name="name" type="xs:string" use="required" />
    <xs:attribute name="commandLineArguments" type="xs:string" use="optional" />
  </xs:complexType>
  <xs:complexType name="CT_ImplementedCategories">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="unbounded" name="implementedCategory" type="wm:CT_ImplementedCategory" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="CT_ImplementedCategory">
    <xs:attribute name="id" type="wm:ST_GUID" use="required" />
  </xs:complexType>
  <xs:simpleType name="ST_ResourcePath">
    <xs:restriction base="xs:string">
      <xs:pattern value=".+, -\d+" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_Permissions">
    <xs:restriction base="xs:string">
      <xs:pattern value=".+" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_ServerName">
    <xs:restriction base="xs:string">
      <xs:pattern value="[A-Za-z0-9]*" />
      <xs:maxLength value="255" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_ProgId">
    <xs:restriction base="xs:string">
      <xs:pattern value=".+" />
      <xs:maxLength value="39" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_VersionIndependentProgId">
    <xs:restriction base="xs:string">
      <xs:pattern value="[A-Za-z\.][A-Za-z0-9\.]+" />
      <xs:maxLength value="39" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_Version">
    <xs:restriction base="xs:string">
      <xs:pattern value="[0-9a-fA-F]+\.[0-9a-fA-F]+" />
      <xs:maxLength value="255" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_HexadecimalNumber">
    <xs:restriction base="xs:string">
      <xs:pattern value="[0-9a-fA-F]+" />
      <xs:maxLength value="255" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_GUID">
    <xs:restriction base="xs:string">
      <xs:maxLength value="255" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_COMIdentity">
    <xs:restriction base="xs:string">
      <xs:enumeration value="InteractiveUser" />
      <xs:enumeration value="ActivateAsActivator" />
      <xs:enumeration value="System" />
      <xs:enumeration value="LocalService" />
      <xs:enumeration value="NetworkService" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_ServerBitness">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Default" />
      <xs:enumeration value="MatchClient" />
      <xs:enumeration value="x86" />
      <xs:enumeration value="x64" />
      <xs:enumeration value="arm32" />
      <xs:enumeration value="arm64" />
      <xs:enumeration value="NativeArchitecture" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_AuthenticationLevel">
    <xs:restriction base="xs:string">
      <xs:enumeration value="None" />
      <xs:enumeration value="Connect" />
      <xs:enumeration value="Call" />
      <xs:enumeration value="Pkt" />
      <xs:enumeration value="PktIntegrity" />
      <xs:enumeration value="PktPrivacy" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_WinRTIdentity">
    <xs:restriction base="xs:string">
      <xs:enumeration value="ActivateAsActivator" />
      <xs:enumeration value="System" />
      <xs:enumeration value="LocalService" />
      <xs:enumeration value="NetworkService" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_WinRTServiceIdentity">
    <xs:restriction base="wm:ST_WinRTIdentity">
      <xs:enumeration value="System" />
      <xs:enumeration value="LocalService" />
      <xs:enumeration value="NetworkService" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_ActivatableClassId">
    <xs:restriction base="xs:string">
      <xs:pattern value="[A-Za-z0-9][.A-Za-z0-9]*" />
      <xs:maxLength value="255" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_WinRTThreadingModel">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Both" />
      <xs:enumeration value="STA" />
      <xs:enumeration value="MTA" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_ThreadingModel">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Both" />
      <xs:enumeration value="STA" />
      <xs:enumeration value="MTA" />
      <xs:enumeration value="MainSTA" />
      <xs:enumeration value="Neutral" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_TrustLevel">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Base" />
      <xs:enumeration value="Partial" />
      <xs:enumeration value="Full" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ST_AppIdFlags">
    <xs:restriction base="xs:string">
      <xs:pattern value="((ActivateInteractiveUserInDesktop|SecureServerProcessSDAndBind|IssueActivationRpcAtIdentify|InteractiveUserUnmodifiedLogonToken|InteractiveUserSelfSIDInLaunchPermission|InteractiveUserActivateInClientSessionOnly|InternalAppBroker))(\W(ActivateInteractiveUserInDesktop|SecureServerProcessSDAndBind|IssueActivationRpcAtIdentify|InteractiveUserUnmodifiedLogonToken|InteractiveUserSelfSIDInLaunchPermission|InteractiveUserActivateInClientSessionOnly|InternalAppBroker))*" />
      <xs:maxLength value="255" />
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="configuration">
    <xs:complexType>
      <xs:sequence>
        <xs:any minOccurs="0" namespace="##any" processContents="skip" />
      </xs:sequence>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="file" type="wm:fileType" />
  <xs:complexType name="fileType">
    <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
    <xs:attribute name="name" type="xs:string" use="optional" />
    <xs:attribute name="source" type="xs:string" use="required" />
    <xs:attribute name="destinationDir" type="wm:DevicePathType" use="optional" />
  </xs:complexType>
  <xs:simpleType name="securityDescriptorType">
    <xs:annotation>
      <xs:documentation>Security Descriptor</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:minLength value="1" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="DevicePathType">
    <xs:annotation>
      <xs:documentation>It must start with a macro.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="(\.\\)|(\$\([a-zA-Z_][a-zA-Z_0-9.]*\)(|\\[a-zA-Z0-9\-_!@#%\^\.,;=\+~`'\{\}\(\)\[\]\$ \\]+))" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="attributesType">
    <xs:restriction base="xs:string">
      <xs:pattern value="((archive|hidden|readOnly|system|normal)( (archive|hidden|readOnly|system|normal))*)" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="MacroIdType">
    <xs:restriction base="xs:string">
      <xs:pattern value="[a-zA-Z_][a-zA-Z_0-9.]*" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ResolutionType">
    <xs:restriction base="xs:string">
      <xs:minLength value="1" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="MacroValueStringType">
    <xs:restriction base="xs:string">
      <xs:pattern value="[a-zA-Z0-9\-_!@#%\^\.,;:=\+~`'\{\}\(\)\[\]\$ \\]*" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="RegKeyNameType">
    <xs:annotation>
      <xs:documentation>It must start with a macro.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="\$\([a-zA-Z_][a-zA-Z_0-9.]*\)(|\\[\x20-\x7F]+)" />
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="files">
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" name="file" type="wm:fileType" />
      </xs:sequence>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
      <xs:attribute name="resolution" type="wm:ResolutionType" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="macros">
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:macro" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="macro">
    <xs:complexType>
      <xs:attribute name="id" type="wm:MacroIdType" use="required">
        <xs:annotation>
          <xs:documentation>Required. The Id for this macro, used in macro references. For example, if the
            Id for this macro is "runtime.windows", the macro would be referenced as $(runtime.windows).</xs:documentation>
        </xs:annotation>
      </xs:attribute>
      <xs:attribute name="value" type="wm:MacroValueStringType" use="required">
        <xs:annotation>
          <xs:documentation>Required. The value that will be substituted for macro references in macro- enabled XML attributes.</xs:documentation>
        </xs:annotation>
      </xs:attribute>
    </xs:complexType>
    <xs:unique name="UniqueMacroId">
      <xs:selector xpath="wm:macro" />
      <xs:field xpath="@id" />
    </xs:unique>
  </xs:element>
  <xs:element name="drivers">
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:driver" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="driver">
    <xs:complexType>
      <xs:choice maxOccurs="unbounded">
        <xs:element minOccurs="1" maxOccurs="1" ref="wm:inf" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:files" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:security" />
      </xs:choice>
      <xs:attribute name="defaultImportPath" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="inf">
    <xs:complexType>
      <xs:attribute name="source" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:element name="security">
    <xs:complexType>
      <xs:choice maxOccurs="unbounded">
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:accessedByCapability" />
      </xs:choice>
      <xs:attribute name="infSectionName" type="xs:string" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:element name="accessedByCapability">
    <xs:complexType>
      <xs:attribute name="id" type="wm:capabilityIdType" use="required" />
      <xs:attribute name="rights" type="wm:MultiMacroIdsRefType" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:element name="regKeys">
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:regKey" />
      </xs:sequence>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="regKey">
    <xs:complexType>
      <xs:choice maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:regValue" />
      </xs:choice>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
      <xs:attribute name="keyName" use="required">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="regValue">
    <xs:complexType>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
      <xs:attribute name="name" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="value" type="xs:string" use="optional" />
      <xs:attribute name="type" use="required">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="REG_SZ" />
            <xs:enumeration value="REG_MULTI_SZ" />
            <xs:enumeration value="REG_DWORD" />
            <xs:enumeration value="REG_QWORD" />
            <xs:enumeration value="REG_BINARY" />
            <xs:enumeration value="REG_EXPAND_SZ" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="bcdStore">
    <xs:complexType>
      <xs:attribute name="source" type="xs:string" use="required" />
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="directories">
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:directory" />
      </xs:sequence>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="directory">
    <xs:complexType>
      <xs:attribute name="path" use="required">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="owner" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="attributes" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="bootCritical">
    <xs:annotation>
      <xs:documentation>Marks this component as boot critical.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="bootRecovery">
    <xs:annotation>
      <xs:documentation>Marks this component as boot recovery.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="serviceGroup">
    <xs:annotation>
      <xs:documentation>Allows you to order services in a service group.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
      <xs:attribute name="groupName" use="required">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="serviceName" use="required">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="position" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="first" />
            <xs:enumeration value="last" />
            <xs:enumeration value="any" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:element name="service">
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:failureActions" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:serviceTrigger" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:privateResources" />
      </xs:choice>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
      <xs:attribute name="subCategory" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="name" use="required">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="objectName" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="securityDescriptor" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:minLength value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="displayName" type="xs:string" use="optional" />
      <xs:attribute name="description" type="xs:string" use="optional" />
      <xs:attribute name="imagePath" type="xs:string" use="optional" />
      <xs:attribute name="group" type="xs:string" use="optional" />
      <xs:attribute name="start" use="required">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="boot" />
            <xs:enumeration value="system" />
            <xs:enumeration value="auto" />
            <xs:enumeration value="demand" />
            <xs:enumeration value="disabled" />
            <xs:enumeration value="delayedAuto" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="type" use="required">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="win32ShareProcess" />
            <xs:enumeration value="win32OwnProcess" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="dependOnGroup" type="xs:string" use="optional" />
      <xs:attribute name="dependOnService" type="xs:string" use="optional" />
      <xs:attribute name="failureActionsFlag" type="xs:boolean" use="optional" />
      <xs:attribute name="requiredPrivileges" type="xs:string" use="optional" />
      <xs:attribute name="requiredCapabilities" type="xs:string" use="optional" />
      <xs:attribute name="sidType" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="none" />
            <xs:enumeration value="restricted" />
            <xs:enumeration value="unrestricted" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="startAfterInstall" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="none" />
            <xs:enumeration value="synchronous" />
            <xs:enumeration value="asynchronous" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="errorControl" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="ignore" />
            <xs:enumeration value="normal" />
            <xs:enumeration value="critical" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
    </xs:complexType>
  </xs:element>
  <xs:simpleType name="IdentityNameType">
    <xs:restriction base="xs:string">
      <xs:pattern value="[a-zA-Z0-9\-\$\(\)]+" />
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="language">
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:files" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:regKeys" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:directories" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:localization" />
      </xs:choice>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
      <xs:attribute default="false" name="multilingual" type="xs:boolean" use="optional" />
      <xs:attribute name="culture" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="tasks">
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:task" />
      </xs:choice>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
      <xs:attribute name="discoverable" type="xs:boolean" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="identity">
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:bcdStore" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:language" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:files" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:drivers" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:macros" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:regKeys" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:directories" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:service" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:serviceGroup" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:accounts" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:COM" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:trustInfo" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:onecorePackageInfo" />
      </xs:choice>
      <xs:attribute name="name" type="wm:IdentityNameType" use="required" />
      <xs:attribute name="namespace" type="wm:IdentityNameType" use="optional" />
      <xs:attribute name="owner" type="wm:IdentityNameType" use="required" />
      <xs:attribute name="legacyName" type="xs:string" use="optional" />
      <xs:attribute default="false" name="buildWow" type="xs:boolean" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="localization" type="wm:localizationType" />
  <xs:complexType name="localizationType">
    <xs:annotation>
      <xs:documentation>Localization information</xs:documentation>
    </xs:annotation>
    <xs:choice minOccurs="0" maxOccurs="unbounded">
      <xs:element name="resources">
        <xs:complexType>
          <xs:choice minOccurs="0" maxOccurs="unbounded">
            <xs:element name="stringTable" type="wm:stringTableType" />
            <xs:any namespace="##other" />
          </xs:choice>
          <xs:attribute default="##fallback" name="culture" type="xs:string" use="optional" />
          <xs:anyAttribute namespace="##other" />
        </xs:complexType>
      </xs:element>
      <xs:any namespace="##other" />
    </xs:choice>
    <xs:attribute default="en-us" name="fallbackCulture" type="xs:string" use="optional" />
    <xs:anyAttribute namespace="##other" />
  </xs:complexType>
  <xs:complexType name="stringTableType">
    <xs:annotation>
      <xs:documentation>Indicates a string table</xs:documentation>
    </xs:annotation>
    <xs:choice minOccurs="0" maxOccurs="unbounded">
      <xs:element name="string">
        <xs:complexType>
          <xs:attribute name="id" type="xs:string" use="required" />
          <xs:attribute name="value" type="xs:string" use="optional" />
          <xs:attribute name="stringType" use="optional">
            <xs:simpleType>
              <xs:restriction base="xs:string">
                <xs:enumeration value="text/plain" />
                <xs:enumeration value="text/html" />
                <xs:enumeration value="text/xml" />
              </xs:restriction>
            </xs:simpleType>
          </xs:attribute>
        </xs:complexType>
      </xs:element>
    </xs:choice>
    <xs:anyAttribute namespace="##other" />
  </xs:complexType>
  <xs:element name="migration">
    <xs:complexType>
      <xs:sequence>
        <xs:choice maxOccurs="unbounded">
          <xs:element ref="wm:machineSpecific" />
          <xs:group ref="wm:migXml" />
          <xs:element ref="wm:supportedComponents" />
        </xs:choice>
        <xs:element minOccurs="0" ref="wm:plugin" />
        <xs:element minOccurs="0" form="unqualified" name="supportedComponents">
          <xs:complexType>
            <xs:sequence>
              <xs:element maxOccurs="unbounded" form="unqualified" name="supportedComponent">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element ref="wm:supportedComponentIdentity" />
                    <xs:group minOccurs="0" ref="wm:migXml" />
                    <xs:element minOccurs="0" form="unqualified" name="machineSpecific">
                      <xs:complexType>
                        <xs:group ref="wm:migXml" />
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element minOccurs="0" ref="wm:migrationDisplayID" />
      </xs:sequence>
      <xs:attribute name="scope" />
      <xs:attribute name="settingsVersion" type="xs:integer" />
    </xs:complexType>
  </xs:element>
  <xs:element name="supportedComponents">
    <xs:complexType>
      <xs:sequence>
        <xs:element maxOccurs="unbounded" ref="wm:supportedComponent" />
        <xs:element minOccurs="0" ref="wm:machineSpecific" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="supportedComponent">
    <xs:complexType>
      <xs:sequence>
        <xs:element ref="wm:supportedComponentIdentity" />
        <xs:group minOccurs="0" ref="wm:migXml" />
        <xs:element minOccurs="0" ref="wm:machineSpecific" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="plugin">
    <xs:complexType>
      <xs:attribute name="classId" use="required" />
      <xs:attribute name="file" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:element name="migrationDisplayID" type="xs:string" />
  <xs:element name="supportedComponentIdentity">
    <xs:complexType>
      <xs:attribute name="buildType" />
      <xs:attribute name="language" />
      <xs:attribute name="name" type="xs:NCName" use="required" />
      <xs:attribute name="buildFilter" type="xs:string" use="optional" />
      <xs:attribute name="type" type="xs:string" use="optional" />
      <xs:attribute name="processorArchitecture" use="required" />
      <xs:attribute name="publicKeyToken" type="xs:string" />
      <xs:attribute name="settingsVersionRange" type="xs:NMTOKEN" />
      <xs:attribute name="version" />
      <xs:attribute name="versionScope" type="xs:NCName" />
    </xs:complexType>
  </xs:element>
  <xs:element name="machineSpecific">
    <xs:complexType>
      <xs:choice>
        <xs:group ref="wm:migXml" />
        <xs:element ref="wm:migXml" />
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:element name="migXml">
    <xs:complexType>
      <xs:sequence>
        <xs:element maxOccurs="unbounded" ref="wm:rules" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="rules">
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" ref="wm:include" />
        <xs:element ref="wm:merge" />
      </xs:sequence>
      <xs:attribute name="context" type="xs:NCName" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:element name="include" type="wm:objectSet" />
  <xs:element name="merge">
    <xs:complexType>
      <xs:complexContent mixed="false">
        <xs:extension base="wm:objectSet">
          <xs:attribute name="script" use="required" />
        </xs:extension>
      </xs:complexContent>
    </xs:complexType>
  </xs:element>
  <xs:element name="objectSet">
    <xs:complexType>
      <xs:sequence>
        <xs:element maxOccurs="unbounded" ref="wm:pattern" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="pattern">
    <xs:complexType mixed="true">
      <xs:attribute name="type" type="xs:NCName" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:complexType name="objectSet">
    <xs:sequence>
      <xs:element form="unqualified" name="objectSet">
        <xs:complexType mixed="true">
          <xs:choice minOccurs="0" maxOccurs="unbounded">
            <xs:element form="unqualified" name="content">
              <xs:complexType>
                <xs:complexContent mixed="false">
                  <xs:extension base="wm:objectSet">
                    <xs:attribute name="filter" use="required" />
                  </xs:extension>
                </xs:complexContent>
              </xs:complexType>
            </xs:element>
            <xs:element form="unqualified" name="pattern">
              <xs:complexType mixed="true">
                <xs:attribute name="type" type="xs:NCName" use="required" />
              </xs:complexType>
            </xs:element>
          </xs:choice>
        </xs:complexType>
      </xs:element>
    </xs:sequence>
  </xs:complexType>
  <xs:group name="migXml">
    <xs:sequence>
      <xs:element form="unqualified" name="migXml">
        <xs:complexType>
          <xs:sequence>
            <xs:choice minOccurs="0">
              <xs:element form="unqualified" name="detects">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element form="unqualified" name="detect">
                      <xs:complexType>
                        <xs:group ref="wm:condition" />
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element form="unqualified" name="environment">
                <xs:complexType>
                  <xs:sequence>
                    <xs:group minOccurs="0" ref="wm:conditions" />
                    <xs:element maxOccurs="unbounded" form="unqualified" name="variable">
                      <xs:complexType>
                        <xs:choice>
                          <xs:group ref="wm:script" />
                          <xs:element form="unqualified" name="text" type="xs:string" />
                        </xs:choice>
                        <xs:attribute name="name" type="xs:NCName" use="required" />
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                  <xs:attribute name="context" type="xs:NCName" />
                </xs:complexType>
              </xs:element>
            </xs:choice>
            <xs:choice minOccurs="0" maxOccurs="unbounded">
              <xs:element form="unqualified" name="plugin">
                <xs:complexType>
                  <xs:attribute name="classId" use="required" />
                  <xs:attribute name="file" use="required" />
                </xs:complexType>
              </xs:element>
              <xs:element form="unqualified" name="rules">
                <xs:complexType>
                  <xs:sequence>
                    <xs:group minOccurs="0" ref="wm:conditions" />
                    <xs:element minOccurs="0" maxOccurs="unbounded" form="unqualified" name="include" type="wm:objectSet" />
                    <xs:element minOccurs="0" form="unqualified" name="exclude" type="wm:objectSet" />
                    <xs:element minOccurs="0" form="unqualified" name="destinationCleanup" type="wm:objectSet" />
                    <xs:element minOccurs="0" maxOccurs="unbounded" form="unqualified" name="locationModify">
                      <xs:complexType>
                        <xs:complexContent mixed="false">
                          <xs:extension base="wm:objectSet">
                            <xs:attribute name="script" use="required" />
                          </xs:extension>
                        </xs:complexContent>
                      </xs:complexType>
                    </xs:element>
                    <xs:element minOccurs="0" maxOccurs="unbounded" form="unqualified" name="merge">
                      <xs:complexType>
                        <xs:complexContent mixed="false">
                          <xs:extension base="wm:objectSet">
                            <xs:attribute name="script" use="required" />
                          </xs:extension>
                        </xs:complexContent>
                      </xs:complexType>
                    </xs:element>
                    <xs:choice>
                      <xs:element form="unqualified" name="addObjects">
                        <xs:complexType>
                          <xs:sequence>
                            <xs:group ref="wm:conditions" />
                            <xs:element maxOccurs="unbounded" form="unqualified" name="object">
                              <xs:complexType>
                                <xs:sequence>
                                  <xs:element form="unqualified" name="location">
                                    <xs:complexType mixed="true">
                                      <xs:attribute name="type" type="xs:NCName" use="required" />
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element form="unqualified" name="attributes" type="xs:NCName" />
                                  <xs:element form="unqualified" name="bytes" type="xs:NMTOKEN" />
                                </xs:sequence>
                              </xs:complexType>
                            </xs:element>
                          </xs:sequence>
                        </xs:complexType>
                      </xs:element>
                      <xs:element form="unqualified" name="contentModify">
                        <xs:complexType>
                          <xs:complexContent mixed="false">
                            <xs:extension base="wm:objectSet">
                              <xs:attribute name="script" use="required" />
                            </xs:extension>
                          </xs:complexContent>
                        </xs:complexType>
                      </xs:element>
                      <xs:choice minOccurs="0" maxOccurs="unbounded">
                        <xs:element form="unqualified" name="externalProcess">
                          <xs:complexType>
                            <xs:sequence>
                              <xs:element form="unqualified" name="commandLine" type="xs:string" />
                            </xs:sequence>
                            <xs:attribute name="when" type="xs:NCName" use="required" />
                          </xs:complexType>
                        </xs:element>
                        <xs:element form="unqualified" name="processing">
                          <xs:complexType>
                            <xs:group ref="wm:script" />
                            <xs:attribute name="when" type="xs:NCName" use="required" />
                          </xs:complexType>
                        </xs:element>
                      </xs:choice>
                    </xs:choice>
                  </xs:sequence>
                  <xs:attribute name="context" type="xs:NCName" use="required" />
                </xs:complexType>
              </xs:element>
            </xs:choice>
          </xs:sequence>
        </xs:complexType>
      </xs:element>
    </xs:sequence>
  </xs:group>
  <xs:group name="condition">
    <xs:sequence>
      <xs:element form="unqualified" name="condition">
        <xs:complexType mixed="true">
          <xs:attribute name="negation" type="xs:NCName" />
        </xs:complexType>
      </xs:element>
    </xs:sequence>
  </xs:group>
  <xs:group name="conditions">
    <xs:sequence>
      <xs:element form="unqualified" name="conditions">
        <xs:complexType>
          <xs:group maxOccurs="unbounded" ref="wm:condition" />
          <xs:attribute name="operation" type="xs:NCName" />
        </xs:complexType>
      </xs:element>
    </xs:sequence>
  </xs:group>
  <xs:group name="script">
    <xs:sequence>
      <xs:element form="unqualified" name="script" type="xs:string" />
    </xs:sequence>
  </xs:group>
  <xs:element name="failureActions" type="wm:failureActionsType" />
  <xs:element name="serviceTrigger" type="wm:serviceTriggerType" />
  <xs:element name="systemProtection" type="wm:systemProtectionType" />
  <xs:complexType name="serviceFailureActionsType">
    <xs:annotation>
      <xs:documentation>Abstracts a service failure actions</xs:documentation>
    </xs:annotation>
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="unbounded" name="action" type="wm:failureActionType" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="failureActionsType">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="1" name="actions" type="wm:serviceFailureActionsType" />
    </xs:sequence>
    <xs:attribute name="resetPeriod" use="required">
      <xs:simpleType>
        <xs:restriction base="xs:string">
          <xs:pattern value="\d+|INFINITE" />
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
    <xs:attribute name="rebootMessage" use="optional">
      <xs:annotation>
        <xs:documentation>Indicates the message to broadcast to server users before rebooting in response to the SC_ACTION_REBOOT action.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction base="xs:string">
          <xs:maxLength value="256" />
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
    <xs:attribute name="command" use="optional">
      <xs:annotation>
        <xs:documentation>Command line of the process for the CreateProcess function to execute in response to the SC_ACTION_RUN_COMMAND service controller action. This process runs under the same account as the service.</xs:documentation>
      </xs:annotation>
      <xs:simpleType>
        <xs:restriction base="xs:string">
          <xs:maxLength value="256" />
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
  </xs:complexType>
  <xs:complexType name="failureActionType">
    <xs:attribute name="type" use="required">
      <xs:simpleType>
        <xs:restriction base="xs:string">
          <xs:enumeration value="none" />
          <xs:enumeration value="rebootMachine" />
          <xs:enumeration value="restartService" />
          <xs:enumeration value="runCommand" />
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
    <xs:attribute name="delay" type="xs:nonNegativeInteger" use="required" />
  </xs:complexType>
  <xs:complexType name="serviceTriggerType">
    <xs:annotation>
      <xs:documentation />
    </xs:annotation>
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" name="triggerData" type="wm:triggerDataType" />
    </xs:sequence>
    <xs:attribute name="action" use="required">
      <xs:simpleType>
        <xs:restriction base="xs:string">
          <xs:enumeration value="start" />
          <xs:enumeration value="stop" />
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
    <xs:attribute name="subtype" use="required">
      <xs:simpleType>
        <xs:restriction base="xs:string" />
      </xs:simpleType>
    </xs:attribute>
    <xs:attribute name="type" use="required">
      <xs:simpleType>
        <xs:restriction base="xs:string" />
      </xs:simpleType>
    </xs:attribute>
  </xs:complexType>
  <xs:complexType name="triggerDataType">
    <xs:annotation>
      <xs:documentation />
    </xs:annotation>
    <xs:attribute name="type" use="required">
      <xs:simpleType>
        <xs:restriction base="xs:string" />
      </xs:simpleType>
    </xs:attribute>
    <xs:attribute name="value" use="required">
      <xs:simpleType>
        <xs:restriction base="xs:string" />
      </xs:simpleType>
    </xs:attribute>
  </xs:complexType>
  <xs:complexType name="systemProtectionType">
    <xs:annotation>
      <xs:documentation>System protection type</xs:documentation>
    </xs:annotation>
    <xs:attribute name="behavior" use="optional">
      <xs:simpleType>
        <xs:restriction base="xs:string">
          <xs:enumeration value="readOnlyIgnoreWrites" />
          <xs:enumeration value="readOnlyFailWrites" />
          <xs:enumeration value="OSOnlyIgnoreWrites" />
          <xs:enumeration value="OSOnlyFailWrites" />
          <xs:enumeration value="transacted" />
          <xs:enumeration value="applicationVirtualized" />
          <xs:enumeration value="userVirtualized" />
          <xs:enumeration value="applicationAndUserVirtualized" />
          <xs:enumeration value="inherit" />
          <xs:enumeration value="notProtected" />
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
    <xs:attribute default="Default" name="perUserVirtualization" type="wm:perUserVirtualizationEnumerationType" use="optional" />
    <xs:attribute name="disableJournaling" type="wm:yesNoType" use="optional" />
    <xs:attribute name="disablePerUserVirtualization" type="wm:yesNoType" use="optional" />
  </xs:complexType>
  <xs:simpleType name="perUserVirtualizationEnumerationType">
    <xs:annotation>
      <xs:documentation>Different enumerations for per user virtualization</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="Default" />
      <xs:enumeration value="Enable" />
      <xs:enumeration value="EnableRecurse" />
      <xs:enumeration value="Disable" />
      <xs:enumeration value="DisableRecurse" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="yesNoType">
    <xs:annotation>
      <xs:documentation>Boolean yes or no enumeration. This is needed for backward compatability with  existing fusion manifest</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="yes" />
      <xs:enumeration value="no" />
      <xs:enumeration value="true" />
      <xs:enumeration value="false" />
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="gac">
    <xs:complexType>
      <xs:attribute name="clrversion" type="xs:decimal" />
      <xs:attribute name="managedversion" type="xs:string" use="required" />
      <xs:attribute name="parameter" />
    </xs:complexType>
  </xs:element>
  <xs:element name="signatureDescriptor">
    <xs:complexType>
      <xs:attribute name="PETrust" type="xs:boolean" />
      <xs:attribute name="pageHash" type="xs:boolean" />
      <xs:attribute name="DRMLevel" type="xs:string" />
    </xs:complexType>
  </xs:element>
  <xs:element name="signatureInfo">
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:signatureDescriptor" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="ngen">
    <xs:complexType>
      <xs:attribute name="managedversion" type="xs:string" use="required" />
      <xs:attribute name="parameter" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:element name="mof">
    <xs:complexType>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" />
      <xs:attribute name="name" use="required" />
      <xs:attribute name="uninstallmof" />
      <xs:attribute name="compileNativeOnly" type="xs:boolean" />
    </xs:complexType>
  </xs:element>
  <xs:simpleType name="buildFilterType">
    <xs:annotation>
      <xs:documentation>Support for existing windows build filters</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:minLength value="1" />
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="firewallRule">
    <xs:complexType>
      <xs:attribute name="Action" type="xs:NCName" />
      <xs:attribute name="Active" type="xs:NCName" />
      <xs:attribute name="Binary" />
      <xs:attribute name="Desc" />
      <xs:attribute name="Dir" type="xs:NCName" />
      <xs:attribute name="Group" />
      <xs:attribute name="ICMP4" />
      <xs:attribute name="ICMP6" />
      <xs:attribute name="InternalName" type="xs:NCName" />
      <xs:attribute name="LPort" type="xs:NMTOKEN" />
      <xs:attribute name="Lport" type="xs:NMTOKEN" />
      <xs:attribute name="Name" />
      <xs:attribute name="Profile" />
      <xs:attribute name="Protocol" type="xs:NMTOKEN" />
      <xs:attribute name="Svc" type="xs:NCName" />
      <xs:attribute name="action" type="xs:NCName" />
      <xs:attribute name="active" type="xs:NCName" />
      <xs:attribute name="binary" />
      <xs:attribute name="desc" />
      <xs:attribute name="dir" type="xs:NCName" />
      <xs:attribute name="group" />
      <xs:attribute name="icmp4" />
      <xs:attribute name="icmp6" />
      <xs:attribute name="internalName" type="xs:NCName" />
      <xs:attribute name="lport" type="xs:NMTOKEN" />
      <xs:attribute name="name" />
      <xs:attribute name="protocol" type="xs:NMTOKEN" />
      <xs:attribute name="rport" type="xs:integer" />
      <xs:attribute name="svc" type="xs:NCName" />
      <xs:anyAttribute namespace="##any" processContents="skip" />
    </xs:complexType>
  </xs:element>
  <xs:element name="genericCommands">
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:genericCommand" />
      </xs:sequence>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" />
    </xs:complexType>
  </xs:element>
  <xs:element name="genericCommand">
    <xs:complexType>
      <xs:attribute name="arguments" use="required" />
      <xs:attribute name="executableName" use="required" />
      <xs:attribute name="install" type="xs:boolean" />
      <xs:attribute name="passes" type="xs:NCName" />
      <xs:attribute name="successCode" type="xs:NCName" />
      <xs:anyAttribute namespace="##any" processContents="skip" />
    </xs:complexType>
  </xs:element>
  <xs:element name="instrumentation">
    <xs:complexType>
      <xs:sequence>
        <xs:any minOccurs="0" maxOccurs="unbounded" namespace="##any" processContents="skip" />
      </xs:sequence>
      <xs:anyAttribute namespace="##any" processContents="skip" />
    </xs:complexType>
  </xs:element>
  <xs:element name="appxRegistration">
    <xs:complexType>
      <xs:sequence>
        <xs:any minOccurs="0" maxOccurs="unbounded" namespace="##any" processContents="skip" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="task" type="wm:taskType">
    <xs:key name="principalKey">
      <xs:selector xpath="td:principals/td:principal" />
      <xs:field xpath="@id" />
    </xs:key>
    <xs:keyref name="contextKeyRef" refer="wm:principalKey">
      <xs:selector xpath="td:actions" />
      <xs:field xpath="@context" />
    </xs:keyref>
    <xs:unique name="uniqueId">
      <xs:selector xpath="td:principals/td:principal|td:triggers/td:bootTrigger|td:triggers/td:registrationTrigger|td:triggers/td:idleTrigger|td:triggers/td:timeTrigger|td:triggers/td:eventTrigger|td:triggers/td:logonTrigger|td:triggers/td:sessionStateChangeTrigger|td:triggers/td:calendarTrigger|td:actions/td:exec|td:actions/td:comHandler|td:actions/td:sendEmail" />
      <xs:field xpath="@id" />
    </xs:unique>
  </xs:element>
  <xs:simpleType name="nonEmptyString">
    <xs:restriction base="xs:string">
      <xs:minLength value="1" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="pathType">
    <xs:restriction base="wm:nonEmptyString">
      <xs:maxLength value="260" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="versionType">
    <xs:restriction base="xs:string">
      <xs:pattern value="\d+(\.\d+){1,4}" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="wnfStateNameType">
    <xs:restriction base="xs:hexBinary">
      <xs:maxLength value="8" fixed="true" />
      <xs:minLength value="8" fixed="true" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="taskType">
    <xs:all>
      <xs:element minOccurs="0" name="registrationInfo" type="wm:registrationInfoType" />
      <xs:element minOccurs="0" name="triggers" type="wm:triggersType" />
      <xs:element minOccurs="0" name="settings" type="wm:settingsType" />
      <xs:element minOccurs="0" name="data" type="wm:dataType" />
      <xs:element minOccurs="0" name="principals" type="wm:principalsType" />
      <xs:element name="actions" type="wm:actionsType" />
    </xs:all>
    <xs:attribute fixed="1.4" name="version" type="wm:versionType" use="optional" />
  </xs:complexType>
  <xs:complexType name="registrationInfoType">
    <xs:all>
      <xs:element minOccurs="0" name="uri" type="xs:anyURI" />
      <xs:element minOccurs="0" name="securityDescriptor" type="xs:string" />
      <xs:element minOccurs="0" name="source" type="xs:string" />
      <xs:element minOccurs="0" name="date" type="xs:dateTime" />
      <xs:element minOccurs="0" name="author" type="xs:string" />
      <xs:element minOccurs="0" name="version" type="xs:string" />
      <xs:element minOccurs="0" name="description" type="xs:string" />
      <xs:element minOccurs="0" name="documentation" type="xs:string" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="triggersType">
    <xs:group minOccurs="0" maxOccurs="48" ref="wm:triggerGroup" />
  </xs:complexType>
  <xs:group name="triggerGroup">
    <xs:choice>
      <xs:element minOccurs="0" name="bootTrigger" type="wm:bootTriggerType" />
      <xs:element minOccurs="0" name="registrationTrigger" type="wm:registrationTriggerType" />
      <xs:element minOccurs="0" name="idleTrigger" type="wm:idleTriggerType" />
      <xs:element minOccurs="0" name="timeTrigger" type="wm:timeTriggerType" />
      <xs:element minOccurs="0" name="eventTrigger" type="wm:eventTriggerType" />
      <xs:element minOccurs="0" name="logonTrigger" type="wm:logonTriggerType" />
      <xs:element minOccurs="0" name="sessionStateChangeTrigger" type="wm:sessionStateChangeTriggerType" />
      <xs:element minOccurs="0" name="calendarTrigger" type="wm:calendarTriggerType" />
      <xs:element minOccurs="0" name="wnfStateChangeTrigger" type="wm:wnfStateChangeTriggerType" />
    </xs:choice>
  </xs:group>
  <xs:complexType name="triggerBaseType" abstract="true">
    <xs:sequence>
      <xs:element minOccurs="0" default="true" name="enabled" type="xs:boolean" />
      <xs:element minOccurs="0" name="startBoundary" type="xs:dateTime" />
      <xs:element minOccurs="0" name="endBoundary" type="xs:dateTime" />
      <xs:element minOccurs="0" name="repetition" type="wm:repetitionType" />
      <xs:element minOccurs="0" default="PT72H" name="executionTimeLimit" type="xs:duration" />
    </xs:sequence>
    <xs:attribute name="id" type="xs:ID" use="optional" />
  </xs:complexType>
  <xs:complexType name="repetitionType">
    <xs:all>
      <xs:element name="interval">
        <xs:simpleType>
          <xs:restriction base="xs:duration">
            <xs:minInclusive value="PT1M" />
            <xs:maxInclusive value="P31D" />
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element minOccurs="0" name="duration">
        <xs:simpleType>
          <xs:restriction base="xs:duration">
            <xs:minInclusive value="PT1M" />
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element minOccurs="0" default="false" name="stopAtDurationEnd" type="xs:boolean" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="bootTriggerType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:triggerBaseType">
        <xs:sequence>
          <xs:element minOccurs="0" default="PT0M" name="delay" type="xs:duration" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="registrationTriggerType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:triggerBaseType">
        <xs:sequence>
          <xs:element minOccurs="0" default="PT0M" name="delay" type="xs:duration" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="idleTriggerType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:triggerBaseType" />
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="timeTriggerType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:triggerBaseType">
        <xs:sequence>
          <xs:element minOccurs="0" default="PT0M" name="randomDelay" type="xs:duration" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="namedValues">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="32" name="value" type="wm:namedValue" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="namedValue">
    <xs:simpleContent>
      <xs:extension base="wm:nonEmptyString">
        <xs:attribute name="name" type="wm:nonEmptyString" use="required" />
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>
  <xs:complexType name="eventTriggerType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:triggerBaseType">
        <xs:sequence>
          <xs:element name="subscription" type="wm:nonEmptyString" />
          <xs:element minOccurs="0" default="PT0M" name="delay" type="xs:duration" />
          <xs:element minOccurs="0" default="PT0M" name="periodOfOccurrence" type="xs:duration" />
          <xs:element minOccurs="0" default="1" name="numberOfOccurrences">
            <xs:simpleType>
              <xs:restriction base="xs:unsignedByte">
                <xs:minInclusive value="1" />
                <xs:maxInclusive value="32" />
              </xs:restriction>
            </xs:simpleType>
          </xs:element>
          <xs:element minOccurs="0" name="matchingElement" type="wm:nonEmptyString" />
          <xs:element minOccurs="0" name="valueQueries" type="wm:namedValues" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="logonTriggerType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:triggerBaseType">
        <xs:sequence>
          <xs:element minOccurs="0" maxOccurs="1" name="userId" type="wm:nonEmptyString" />
          <xs:element minOccurs="0" default="PT0M" name="delay" type="xs:duration" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:simpleType name="sessionStateChangeType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="ConsoleConnect" />
      <xs:enumeration value="ConsoleDisconnect" />
      <xs:enumeration value="RemoteConnect" />
      <xs:enumeration value="RemoteDisconnect" />
      <xs:enumeration value="SessionLock" />
      <xs:enumeration value="SessionUnlock" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="sessionStateChangeTriggerType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:triggerBaseType">
        <xs:sequence>
          <xs:element minOccurs="0" maxOccurs="1" name="userId" type="wm:nonEmptyString" />
          <xs:element minOccurs="0" default="PT0M" name="delay" type="xs:duration" />
          <xs:element minOccurs="1" maxOccurs="1" name="stateChange" type="wm:sessionStateChangeType" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="calendarTriggerType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:triggerBaseType">
        <xs:sequence>
          <xs:element minOccurs="0" default="PT0M" name="randomDelay" type="xs:duration" />
          <xs:choice>
            <xs:element name="scheduleByDay" type="wm:dailyScheduleType" />
            <xs:element name="scheduleByWeek" type="wm:weeklyScheduleType" />
            <xs:element name="scheduleByMonth" type="wm:monthlyScheduleType" />
            <xs:element name="scheduleByMonthDayOfWeek" type="wm:monthlyDayOfWeekScheduleType" />
          </xs:choice>
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="dailyScheduleType">
    <xs:all>
      <xs:element minOccurs="0" name="daysInterval">
        <xs:simpleType>
          <xs:restriction base="xs:unsignedInt">
            <xs:minInclusive value="1" />
            <xs:maxInclusive value="365" />
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
    </xs:all>
  </xs:complexType>
  <xs:complexType name="wnfStateChangeTriggerType">
    <xs:all>
      <xs:element minOccurs="1" maxOccurs="1" name="stateName" type="wm:wnfStateNameType" />
      <xs:element minOccurs="0" maxOccurs="1" name="dataOffset" type="xs:unsignedInt" />
      <xs:element minOccurs="0" maxOccurs="1" name="data" type="xs:hexBinary" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="weeklyScheduleType">
    <xs:all>
      <xs:element minOccurs="0" name="weeksInterval">
        <xs:simpleType>
          <xs:restriction base="xs:unsignedByte">
            <xs:minInclusive value="1" />
            <xs:maxInclusive value="52" />
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element minOccurs="0" name="daysOfWeek" type="wm:daysOfWeekType" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="monthlyScheduleType">
    <xs:all>
      <xs:element minOccurs="0" name="daysOfMonth" type="wm:daysOfMonthType" />
      <xs:element minOccurs="0" name="months" type="wm:monthsType" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="monthlyDayOfWeekScheduleType">
    <xs:all>
      <xs:element minOccurs="0" name="weeks" type="wm:weeksType" />
      <xs:element name="daysOfWeek" type="wm:daysOfWeekType" />
      <xs:element minOccurs="0" name="months" type="wm:monthsType" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="daysOfWeekType">
    <xs:all>
      <xs:element minOccurs="0" fixed="" name="monday" />
      <xs:element minOccurs="0" fixed="" name="tuesday" />
      <xs:element minOccurs="0" fixed="" name="wednesday" />
      <xs:element minOccurs="0" fixed="" name="thursday" />
      <xs:element minOccurs="0" fixed="" name="friday" />
      <xs:element minOccurs="0" fixed="" name="saturday" />
      <xs:element minOccurs="0" fixed="" name="sunday" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="monthsType">
    <xs:all>
      <xs:element minOccurs="0" fixed="" name="january" />
      <xs:element minOccurs="0" fixed="" name="february" />
      <xs:element minOccurs="0" fixed="" name="march" />
      <xs:element minOccurs="0" fixed="" name="april" />
      <xs:element minOccurs="0" fixed="" name="may" />
      <xs:element minOccurs="0" fixed="" name="june" />
      <xs:element minOccurs="0" fixed="" name="july" />
      <xs:element minOccurs="0" fixed="" name="august" />
      <xs:element minOccurs="0" fixed="" name="september" />
      <xs:element minOccurs="0" fixed="" name="october" />
      <xs:element minOccurs="0" fixed="" name="november" />
      <xs:element minOccurs="0" fixed="" name="december" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="daysOfMonthType">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="32" name="day" type="wm:dayOfMonthType" />
    </xs:sequence>
  </xs:complexType>
  <xs:simpleType name="dayOfMonthType">
    <xs:restriction base="xs:string">
      <xs:pattern value="[1-9]|[1-2][0-9]|3[0-1]|Last" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="weeksType">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="5" name="week" type="wm:weekType" />
    </xs:sequence>
  </xs:complexType>
  <xs:simpleType name="weekType">
    <xs:restriction base="xs:string">
      <xs:pattern value="[1-4]|Last" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="settingsType">
    <xs:all>
      <xs:element minOccurs="0" default="true" name="allowStartOnDemand" type="xs:boolean" />
      <xs:element minOccurs="0" name="restartOnFailure" type="wm:restartType" />
      <xs:element minOccurs="0" default="IgnoreNew" name="multipleInstancesPolicy" type="wm:multipleInstancesPolicyType" />
      <xs:element minOccurs="0" default="true" name="disallowStartIfOnBatteries" type="xs:boolean" />
      <xs:element minOccurs="0" default="true" name="stopIfGoingOnBatteries" type="xs:boolean" />
      <xs:element minOccurs="0" default="true" name="allowHardTerminate" type="xs:boolean" />
      <xs:element minOccurs="0" default="false" name="startWhenAvailable" type="xs:boolean" />
      <xs:element minOccurs="0" name="networkProfileName" type="xs:string" />
      <xs:element minOccurs="0" default="false" name="runOnlyIfNetworkAvailable" type="xs:boolean" />
      <xs:element minOccurs="0" default="false" name="wakeToRun" type="xs:boolean" />
      <xs:element minOccurs="0" default="true" name="enabled" type="xs:boolean" />
      <xs:element minOccurs="0" default="false" name="hidden" type="xs:boolean" />
      <xs:element minOccurs="0" default="PT0S" name="deleteExpiredTaskAfter" type="xs:duration" />
      <xs:element minOccurs="0" name="idleSettings" type="wm:idleSettingsType" />
      <xs:element minOccurs="0" name="networkSettings" type="wm:networkSettingsType" />
      <xs:element minOccurs="0" name="maintenanceSettings" type="wm:maintenanceSettingsType" />
      <xs:element minOccurs="0" default="PT72H" name="executionTimeLimit" type="xs:duration" />
      <xs:element minOccurs="0" default="7" name="priority" type="wm:priorityType" />
      <xs:element minOccurs="0" default="false" name="runOnlyIfIdle" type="xs:boolean" />
      <xs:element minOccurs="0" default="false" name="useUnifiedSchedulingEngine" type="xs:boolean" />
      <xs:element minOccurs="0" default="false" name="disallowStartOnRemoteAppSession" type="xs:boolean" />
      <xs:element minOccurs="0" default="false" name="volatile" type="xs:boolean" />
    </xs:all>
  </xs:complexType>
  <xs:simpleType name="multipleInstancesPolicyType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Parallel" />
      <xs:enumeration value="Queue" />
      <xs:enumeration value="IgnoreNew" />
      <xs:enumeration value="StopExisting" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="priorityType">
    <xs:restriction base="xs:byte">
      <xs:minInclusive value="0" fixed="true" />
      <xs:maxInclusive value="10" fixed="true" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="idleSettingsType">
    <xs:all>
      <xs:element minOccurs="0" default="PT10M" name="duration">
        <xs:simpleType>
          <xs:restriction base="xs:duration">
            <xs:minInclusive value="PT1M" />
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element minOccurs="0" default="PT1H" name="waitTimeout">
        <xs:simpleType>
          <xs:restriction base="xs:duration">
            <xs:minInclusive value="PT1M" />
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element minOccurs="0" default="true" name="stopOnIdleEnd" type="xs:boolean" />
      <xs:element minOccurs="0" default="false" name="restartOnIdle" type="xs:boolean" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="networkSettingsType">
    <xs:all>
      <xs:element minOccurs="0" name="name" type="wm:nonEmptyString" />
      <xs:element minOccurs="0" name="id" type="wm:guidType" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="maintenanceSettingsType">
    <xs:all>
      <xs:element minOccurs="1" maxOccurs="1" name="period">
        <xs:simpleType>
          <xs:restriction base="xs:duration">
            <xs:minInclusive value="P1D" />
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element minOccurs="0" maxOccurs="1" name="deadline">
        <xs:simpleType>
          <xs:restriction base="xs:duration">
            <xs:minInclusive value="P1D" />
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element minOccurs="0" name="exclusive" type="xs:boolean" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="restartType">
    <xs:all>
      <xs:element name="interval">
        <xs:simpleType>
          <xs:restriction base="xs:duration">
            <xs:minInclusive value="PT1M" />
            <xs:maxInclusive value="P31D" />
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element name="count">
        <xs:simpleType>
          <xs:restriction base="xs:unsignedByte">
            <xs:minInclusive value="1" />
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
    </xs:all>
  </xs:complexType>
  <xs:complexType name="dataType">
    <xs:sequence>
      <xs:any />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="principalsType">
    <xs:sequence>
      <xs:element maxOccurs="1" name="principal" type="wm:principalType" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="principalType">
    <xs:all>
      <xs:element minOccurs="0" name="userId" type="wm:nonEmptyString" />
      <xs:element minOccurs="0" maxOccurs="1" name="logonType" type="wm:logonType" />
      <xs:element minOccurs="0" name="groupId" type="wm:nonEmptyString" />
      <xs:element minOccurs="0" name="displayName" type="xs:string" />
      <xs:element minOccurs="0" maxOccurs="1" name="runLevel" type="wm:runLevelType" />
      <xs:element minOccurs="0" maxOccurs="1" name="processTokenSidType" type="wm:processTokenSidType" />
      <xs:element minOccurs="0" name="requiredPrivileges" type="wm:requiredPrivilegesType" />
      <xs:element minOccurs="0" name="packageId" type="wm:nonEmptyString" />
      <xs:element minOccurs="0" ref="wm:privateResources" />
      <xs:element minOccurs="0" name="capabilities" type="wm:capabilitiesType" />
    </xs:all>
    <xs:attribute name="id" type="xs:ID" use="optional" />
  </xs:complexType>
  <xs:simpleType name="logonType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="S4U" />
      <xs:enumeration value="Password" />
      <xs:enumeration value="InteractiveToken" />
      <xs:enumeration value="InteractiveTokenOrPassword" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="runLevelType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="LeastPrivilege" />
      <xs:enumeration value="HighestAvailable" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="processTokenSidType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="None" />
      <xs:enumeration value="Unrestricted" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="requiredPrivilegesType">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="64" name="privilege" type="wm:TS_privilegeType" />
    </xs:sequence>
  </xs:complexType>
  <xs:simpleType name="TS_privilegeType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="SeCreateTokenPrivilege" />
      <xs:enumeration value="SeAssignPrimaryTokenPrivilege" />
      <xs:enumeration value="SeLockMemoryPrivilege" />
      <xs:enumeration value="SeIncreaseQuotaPrivilege" />
      <xs:enumeration value="SeUnsolicitedInputPrivilege" />
      <xs:enumeration value="SeMachineAccountPrivilege" />
      <xs:enumeration value="SeTcbPrivilege" />
      <xs:enumeration value="SeSecurityPrivilege" />
      <xs:enumeration value="SeTakeOwnershipPrivilege" />
      <xs:enumeration value="SeLoadDriverPrivilege" />
      <xs:enumeration value="SeSystemProfilePrivilege" />
      <xs:enumeration value="SeSystemtimePrivilege" />
      <xs:enumeration value="SeProfileSingleProcessPrivilege" />
      <xs:enumeration value="SeIncreaseBasePriorityPrivilege" />
      <xs:enumeration value="SeCreatePagefilePrivilege" />
      <xs:enumeration value="SeCreatePermanentPrivilege" />
      <xs:enumeration value="SeBackupPrivilege" />
      <xs:enumeration value="SeRestorePrivilege" />
      <xs:enumeration value="SeShutdownPrivilege" />
      <xs:enumeration value="SeDebugPrivilege" />
      <xs:enumeration value="SeAuditPrivilege" />
      <xs:enumeration value="SeSystemEnvironmentPrivilege" />
      <xs:enumeration value="SeChangeNotifyPrivilege" />
      <xs:enumeration value="SeRemoteShutdownPrivilege" />
      <xs:enumeration value="SeUndockPrivilege" />
      <xs:enumeration value="SeSyncAgentPrivilege" />
      <xs:enumeration value="SeEnableDelegationPrivilege" />
      <xs:enumeration value="SeManageVolumePrivilege" />
      <xs:enumeration value="SeImpersonatePrivilege" />
      <xs:enumeration value="SeCreateGlobalPrivilege" />
      <xs:enumeration value="SeTrustedCredManAccessPrivilege" />
      <xs:enumeration value="SeRelabelPrivilege" />
      <xs:enumeration value="SeIncreaseWorkingSetPrivilege" />
      <xs:enumeration value="SeTimeZonePrivilege" />
      <xs:enumeration value="SeCreateSymbolicLinkPrivilege" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="capabilitiesType">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="64" name="capability" type="wm:nonEmptyString" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="actionsType">
    <xs:sequence>
      <xs:group maxOccurs="32" ref="wm:actionGroup" />
    </xs:sequence>
    <xs:attribute name="context" type="xs:IDREF" use="optional" />
  </xs:complexType>
  <xs:group name="actionGroup">
    <xs:choice>
      <xs:element name="exec" type="wm:execType" />
      <xs:element name="comHandler" type="wm:comHandlerType" />
      <xs:element name="sendEmail" type="wm:sendEmailType" />
      <xs:element name="showMessage" type="wm:showMessageType" />
    </xs:choice>
  </xs:group>
  <xs:complexType name="actionBaseType" abstract="true">
    <xs:attribute name="id" type="xs:ID" use="optional" />
  </xs:complexType>
  <xs:complexType name="execType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:actionBaseType">
        <xs:all>
          <xs:element name="command" type="wm:pathType" />
          <xs:element minOccurs="0" name="arguments" type="xs:string" />
          <xs:element minOccurs="0" name="workingDirectory" type="wm:pathType" />
        </xs:all>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="comHandlerType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:actionBaseType">
        <xs:all>
          <xs:element name="classId" type="wm:guidType" />
          <xs:element minOccurs="0" name="data" type="wm:dataType" />
        </xs:all>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:simpleType name="guidType">
    <xs:restriction base="xs:string">
      <xs:pattern value="\{([0-9a-fA-F]){8}(\-[0-9a-fA-F]{4}){3}\-[0-9a-fA-F]{12}\}" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="sendEmailType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:actionBaseType">
        <xs:all>
          <xs:element name="server" type="wm:nonEmptyString" />
          <xs:element minOccurs="0" name="subject" type="xs:string" />
          <xs:element minOccurs="0" name="to" type="xs:string" />
          <xs:element minOccurs="0" name="cc" type="xs:string" />
          <xs:element minOccurs="0" name="bcc" type="xs:string" />
          <xs:element minOccurs="0" name="replyTo" type="xs:string" />
          <xs:element minOccurs="0" name="from" type="xs:string" />
          <xs:element minOccurs="0" name="headerFields" type="wm:headerFieldsType" />
          <xs:element minOccurs="0" name="body" type="xs:string" />
          <xs:element minOccurs="0" name="attachments" type="wm:attachmentsType" />
        </xs:all>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="headerFieldsType">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="32" name="headerField" type="wm:headerFieldType" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="headerFieldType">
    <xs:all>
      <xs:element name="name" type="wm:nonEmptyString" />
      <xs:element name="value" type="xs:string" />
    </xs:all>
  </xs:complexType>
  <xs:complexType name="attachmentsType">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="8" name="file" type="wm:nonEmptyString" />
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="showMessageType">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:actionBaseType">
        <xs:all>
          <xs:element name="title" type="wm:nonEmptyString" />
          <xs:element name="body" type="wm:nonEmptyString" />
        </xs:all>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:element name="trustInfo" type="wm:trustInfoType" />
  <xs:complexType name="trustInfoType">
    <xs:sequence minOccurs="0">
      <xs:element minOccurs="0" name="security">
        <xs:complexType>
          <xs:choice>
            <xs:element minOccurs="0" name="accessControl" type="wm:accessControlInformationType" />
          </xs:choice>
        </xs:complexType>
      </xs:element>
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="accessControlInformationType">
    <xs:annotation>
      <xs:documentation>Top level element type to describe all the security information</xs:documentation>
    </xs:annotation>
    <xs:choice minOccurs="1" maxOccurs="unbounded">
      <xs:element minOccurs="0" name="trustees">
        <xs:complexType>
          <xs:sequence>
            <xs:element minOccurs="1" maxOccurs="unbounded" name="groupTrustee" type="wm:groupTrusteeType" />
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:element minOccurs="0" name="securityDescriptorDefinitions">
        <xs:complexType>
          <xs:sequence>
            <xs:element maxOccurs="unbounded" name="securityDescriptorDefinition" type="wm:securityDescriptorDefinitionType" />
          </xs:sequence>
        </xs:complexType>
      </xs:element>
      <xs:any minOccurs="0" namespace="##other" />
    </xs:choice>
    <xs:anyAttribute namespace="##any" />
  </xs:complexType>
  <xs:complexType name="securityDescriptorDefinitionType">
    <xs:annotation>
      <xs:documentation>Indicates a definition of security descriptor</xs:documentation>
    </xs:annotation>
    <xs:sequence>
      <xs:any minOccurs="0" namespace="##any" />
    </xs:sequence>
    <xs:attribute name="name" type="xs:string" use="required">
      <xs:annotation>
        <xs:documentation>Indicates the ID for this security descriptor in cases it needs to be reused across different securable objects</xs:documentation>
      </xs:annotation>
    </xs:attribute>
    <xs:attribute name="displayName" type="xs:string" use="optional">
      <xs:annotation>
        <xs:documentation>A user friendly name for display in tools while picking up security descriptor definitions to cross refer from securable objects</xs:documentation>
      </xs:annotation>
    </xs:attribute>
    <xs:attribute name="description" type="xs:string" use="optional">
      <xs:annotation>
        <xs:documentation>The description about the security descriptor for UI purposes</xs:documentation>
      </xs:annotation>
    </xs:attribute>
    <xs:attribute name="sddl" type="wm:sddlType" use="required">
      <xs:annotation>
        <xs:documentation>The SDDL representation of the security descriptor. The SID portion of the SDDL can contain string tokens for substitutions.</xs:documentation>
      </xs:annotation>
    </xs:attribute>
    <xs:attribute default="replace" name="operationHint" type="wm:operationHintEnumerationType" use="optional">
      <xs:annotation>
        <xs:documentation>Indicates what to do the instance of security description. The three possible values are replace, add and remove. "replace" is the default value.</xs:documentation>
      </xs:annotation>
    </xs:attribute>
    <xs:anyAttribute namespace="##any" />
  </xs:complexType>
  <xs:complexType name="groupTrusteeType">
    <xs:annotation>
      <xs:documentation>Group trustee type</xs:documentation>
    </xs:annotation>
    <xs:sequence>
      <xs:element minOccurs="0" name="privileges" type="wm:privilegesType" />
      <xs:element minOccurs="0" name="members" type="wm:trusteeNamesType" />
      <xs:element minOccurs="0" name="capabilities" type="wm:trusteeNamesType" />
    </xs:sequence>
    <xs:attribute name="name" type="wm:trusteeNameType" use="required">
      <xs:annotation>
        <xs:documentation>name of trustee</xs:documentation>
      </xs:annotation>
    </xs:attribute>
    <xs:attribute name="type" type="xs:string" use="optional">
      <xs:annotation>
        <xs:documentation>type of trustee</xs:documentation>
      </xs:annotation>
    </xs:attribute>
    <xs:attribute name="fullName" type="xs:string" use="optional">
      <xs:annotation>
        <xs:documentation>complete name of trustee for display purposes</xs:documentation>
      </xs:annotation>
    </xs:attribute>
    <xs:attribute name="description" type="xs:string" use="optional">
      <xs:annotation>
        <xs:documentation>description text for trustee explaining the trustee</xs:documentation>
      </xs:annotation>
    </xs:attribute>
    <xs:attribute name="sid" type="wm:sidType" use="optional">
      <xs:annotation>
        <xs:documentation>the SID for trustee</xs:documentation>
      </xs:annotation>
    </xs:attribute>
  </xs:complexType>
  <xs:simpleType name="sidType">
    <xs:annotation>
      <xs:documentation>String representation of SID</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string" />
  </xs:simpleType>
  <xs:simpleType name="operationHintEnumerationType">
    <xs:annotation>
      <xs:documentation>Different types of operation hint for container data types</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="replace" />
      <xs:enumeration value="append" />
      <xs:enumeration value="prepend" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="sddlType">
    <xs:annotation>
      <xs:documentation>SDDL string representation</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string" />
  </xs:simpleType>
  <xs:simpleType name="privilegesType">
    <xs:annotation>
      <xs:documentation>List of priviledges</xs:documentation>
    </xs:annotation>
    <xs:list itemType="wm:privilegeType" />
  </xs:simpleType>
  <xs:simpleType name="privilegeType">
    <xs:annotation>
      <xs:documentation>Indicates different types of priviledges available for accounts</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="CreateToken" />
      <xs:enumeration value="AssignPrimaryToken" />
      <xs:enumeration value="LockMemory" />
      <xs:enumeration value="IncreaseQuota" />
      <xs:enumeration value="UnsolicitedInput" />
      <xs:enumeration value="MachineAccount" />
      <xs:enumeration value="TrustedComputerBase" />
      <xs:enumeration value="Security" />
      <xs:enumeration value="TakeOwnership" />
      <xs:enumeration value="LoadDriver" />
      <xs:enumeration value="SystemProfile" />
      <xs:enumeration value="SystemTime" />
      <xs:enumeration value="ProfileSingleProcess" />
      <xs:enumeration value="IncreaseBasePriority" />
      <xs:enumeration value="CreatePageFile" />
      <xs:enumeration value="CreatePermanent" />
      <xs:enumeration value="Backup" />
      <xs:enumeration value="Restore" />
      <xs:enumeration value="Shutdown" />
      <xs:enumeration value="Debug" />
      <xs:enumeration value="Audit" />
      <xs:enumeration value="SystemEnvironment" />
      <xs:enumeration value="ChangeNotify" />
      <xs:enumeration value="RemoteShutdown" />
      <xs:enumeration value="Undock" />
      <xs:enumeration value="SyncAgent" />
      <xs:enumeration value="EnableDelegation" />
      <xs:enumeration value="ManageVolume" />
      <xs:enumeration value="Impersonate" />
      <xs:enumeration value="CreateGlobal" />
      <xs:enumeration value="InteractiveLogon" />
      <xs:enumeration value="NetworkLogon" />
      <xs:enumeration value="BatchLogon" />
      <xs:enumeration value="ServiceLogon" />
      <xs:enumeration value="DenyInteractiveLogon" />
      <xs:enumeration value="DenyNetworkLogon" />
      <xs:enumeration value="DenyBatchLogon" />
      <xs:enumeration value="DenyServiceLogon" />
      <xs:enumeration value="RemoteInteractiveLogon" />
      <xs:enumeration value="DenyRemoteInteractiveLogon" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="trusteeNameType">
    <xs:annotation>
      <xs:documentation>Represents the name of the trustee</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string" />
  </xs:simpleType>
  <xs:simpleType name="trusteeNamesType">
    <xs:annotation>
      <xs:documentation>List of trustee names</xs:documentation>
    </xs:annotation>
    <xs:list itemType="wm:trusteeNameType" />
  </xs:simpleType>
  <xs:simpleType name="trusteeEnumType">
    <xs:annotation>
      <xs:documentation>Different types of possible trustees</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="Unknown" />
      <xs:enumeration value="User" />
      <xs:enumeration value="Group" />
      <xs:enumeration value="Domain" />
      <xs:enumeration value="Alias" />
      <xs:enumeration value="WellKnownGroup" />
      <xs:enumeration value="Deleted" />
      <xs:enumeration value="Invalid" />
      <xs:enumeration value="Computer" />
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="provisioningSettings">
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="1" name="include" type="wm:IncludesType" />
        <xs:sequence minOccurs="0" maxOccurs="unbounded">
          <xs:element name="group" type="wm:GroupSetting" />
        </xs:sequence>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:complexType name="ApplyTargetless">
    <xs:sequence>
      <xs:choice minOccurs="0" maxOccurs="1">
        <xs:sequence maxOccurs="unbounded">
          <xs:element name="during">
            <xs:complexType>
              <xs:attribute name="pass" type="wm:UnattendApplyPass" />
            </xs:complexType>
          </xs:element>
        </xs:sequence>
        <xs:sequence maxOccurs="1">
          <xs:element minOccurs="0" maxOccurs="1" name="after">
            <xs:complexType>
              <xs:attribute name="pass" type="wm:ApplyPass" />
            </xs:complexType>
          </xs:element>
          <xs:element minOccurs="0" maxOccurs="1" name="before">
            <xs:complexType>
              <xs:attribute name="pass" type="wm:ApplyPass" />
            </xs:complexType>
          </xs:element>
        </xs:sequence>
      </xs:choice>
      <xs:element minOccurs="0" maxOccurs="unbounded" name="afterSetting">
        <xs:complexType>
          <xs:attribute name="path" type="xs:string" use="required" />
        </xs:complexType>
      </xs:element>
    </xs:sequence>
    <xs:attribute name="atFirstSIMDetectOnly" type="xs:boolean" />
    <xs:attribute name="doesRequireReboot" type="xs:boolean" />
  </xs:complexType>
  <xs:complexType name="ApplyDefault">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:ApplyTargetless">
        <xs:sequence>
          <xs:choice minOccurs="0" maxOccurs="1">
            <xs:element name="registry">
              <xs:complexType>
                <xs:attribute name="path" type="xs:string" use="required" />
                <xs:attribute name="onLastRemove" type="wm:RegistryOnLastRemove" />
              </xs:complexType>
            </xs:element>
            <xs:element name="csp">
              <xs:complexType>
                <xs:attribute name="path" type="xs:string" use="required" />
                <xs:attribute name="action" type="wm:Action" />
                <xs:attribute name="context" type="wm:Context" />
              </xs:complexType>
            </xs:element>
          </xs:choice>
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="ApplyText">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:ApplyTargetless">
        <xs:sequence>
          <xs:choice minOccurs="0" maxOccurs="1">
            <xs:element name="registry">
              <xs:complexType>
                <xs:attribute name="path" type="xs:string" use="required" />
                <xs:attribute name="onLastRemove" type="wm:RegistryOnLastRemove" />
                <xs:attribute name="type" type="wm:RegistryTextType" />
              </xs:complexType>
            </xs:element>
            <xs:element name="csp">
              <xs:complexType>
                <xs:attribute name="path" type="xs:string" use="required" />
                <xs:attribute name="action" type="wm:Action" />
                <xs:attribute name="context" type="wm:Context" />
              </xs:complexType>
            </xs:element>
          </xs:choice>
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:simpleType name="UnattendApplyPass">
    <xs:restriction base="xs:string">
      <xs:enumeration value="windowsPE" />
      <xs:enumeration value="offlineServicing" />
      <xs:enumeration value="specialize" />
      <xs:enumeration value="auditSystem" />
      <xs:enumeration value="auditUser" />
      <xs:enumeration value="generalize" />
      <xs:enumeration value="oobeSystem" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ApplyPass">
    <xs:restriction base="xs:string">
      <xs:enumeration value="oobeStart" />
      <xs:enumeration value="oobeNetwork" />
      <xs:enumeration value="oobeEnd" />
      <xs:enumeration value="noRestrictions" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="Action">
    <xs:restriction base="xs:string">
      <xs:enumeration value="add" />
      <xs:enumeration value="exec" />
      <xs:enumeration value="delete" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="Context">
    <xs:restriction base="xs:string">
      <xs:enumeration value="device" />
      <xs:enumeration value="user" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="RegistryOnLastRemove">
    <xs:restriction base="xs:string">
      <xs:enumeration value="zero" />
      <xs:enumeration value="delete" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="RegistryTextType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="normal" />
      <xs:enumeration value="expand" />
      <xs:enumeration value="multistring" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="BaseVisibility">
    <xs:sequence>
      <xs:element minOccurs="0" maxOccurs="unbounded" name="show" type="wm:Show" />
    </xs:sequence>
    <xs:attribute name="isOrdered" type="xs:boolean" />
    <xs:attribute name="description" type="xs:string" />
    <xs:attribute name="display" type="xs:string" />
  </xs:complexType>
  <xs:complexType name="AllowedValueVisibility">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:BaseVisibility" />
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="SettingVisibility">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:BaseVisibility">
        <xs:attribute name="category" type="wm:SettingCategory" />
        <xs:attribute name="isPrivate" type="xs:boolean" />
        <xs:attribute name="isSensitive" type="xs:boolean" />
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:simpleType name="SettingCategory">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Provisioning" />
      <xs:enumeration value="Languages" />
      <xs:enumeration value="Drivers" />
      <xs:enumeration value="InitialCustomization" />
      <xs:enumeration value="Applications" />
      <xs:enumeration value="Certificates" />
      <xs:enumeration value="Updates" />
      <xs:enumeration value="Connectivity" />
      <xs:enumeration value="UxLockdown" />
      <xs:enumeration value="Security" />
      <xs:enumeration value="Content" />
      <xs:enumeration value="Legacy" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="Show">
    <xs:choice>
      <xs:element minOccurs="0" maxOccurs="unbounded" name="when">
        <xs:complexType>
          <xs:attribute name="setting" type="xs:string" use="required" />
          <xs:attribute name="condition" type="wm:VisibilityCondition" use="required" />
          <xs:attribute name="value" type="xs:string" use="required" />
        </xs:complexType>
      </xs:element>
    </xs:choice>
  </xs:complexType>
  <xs:simpleType name="VisibilityCondition">
    <xs:restriction base="xs:string">
      <xs:enumeration value="AreEqual" />
      <xs:enumeration value="NotEqual" />
      <xs:enumeration value="LessThan" />
      <xs:enumeration value="LessEqual" />
      <xs:enumeration value="GreaterThan" />
      <xs:enumeration value="GreaterEqual" />
      <xs:enumeration value="Contains" />
      <xs:enumeration value="MatchesRegex" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="UserExperienceHint">
    <xs:restriction base="xs:string">
      <xs:enumeration value="ShowAssetTargetPath" />
      <xs:enumeration value="GenerateGUID" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="Serialization">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Normal" />
      <xs:enumeration value="WLANXML" />
      <xs:enumeration value="Base64EncodedString" />
      <xs:enumeration value="CertificateHash" />
      <xs:enumeration value="HostedInstallAppx" />
      <xs:enumeration value="AssetXml" />
      <xs:enumeration value="Base64EncodedBinary" />
      <xs:enumeration value="AppLicense" />
      <xs:enumeration value="HostedInstallDependency" />
      <xs:enumeration value="StoreInstallAppx" />
    </xs:restriction>
  </xs:simpleType>
  <xs:complexType name="ShowKey">
    <xs:sequence>
      <xs:choice>
        <xs:element maxOccurs="unbounded" name="when">
          <xs:complexType>
            <xs:attribute name="setting" type="xs:string" use="required" />
            <xs:attribute name="condition" type="wm:VisibilityCondition" use="required" />
            <xs:attribute name="key" type="xs:string" use="required" />
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="SettingBase">
    <xs:attribute name="name" type="xs:string" use="required" />
    <xs:attribute name="isDeprecated" type="xs:boolean" />
    <xs:attribute name="isRequired" type="xs:boolean" />
    <xs:attribute name="userExperienceHint" type="wm:UserExperienceHint" />
  </xs:complexType>
  <xs:complexType name="BoolSetting">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:SettingBase">
        <xs:sequence>
          <xs:element minOccurs="0" name="apply" type="wm:ApplyDefault" />
          <xs:element minOccurs="0" name="visibility" type="wm:SettingVisibility" />
          <xs:element minOccurs="0" name="default" type="xs:boolean" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="IntSetting">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:SettingBase">
        <xs:sequence>
          <xs:element minOccurs="0" name="apply" type="wm:ApplyDefault" />
          <xs:element minOccurs="0" name="visibility" type="wm:SettingVisibility" />
          <xs:element minOccurs="0" name="validation">
            <xs:complexType>
              <xs:sequence>
                <xs:element minOccurs="0" name="allowedValues">
                  <xs:complexType>
                    <xs:sequence>
                      <xs:element maxOccurs="unbounded" name="value">
                        <xs:complexType>
                          <xs:simpleContent>
                            <xs:extension base="xs:int">
                              <xs:attribute name="display" type="xs:string" />
                              <xs:attribute name="description" type="xs:string" />
                            </xs:extension>
                          </xs:simpleContent>
                        </xs:complexType>
                      </xs:element>
                    </xs:sequence>
                  </xs:complexType>
                </xs:element>
              </xs:sequence>
              <xs:attribute name="minimum" type="xs:int" />
              <xs:attribute name="maximum" type="xs:int" />
            </xs:complexType>
          </xs:element>
          <xs:element minOccurs="0" name="default" type="xs:int" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="TextSetting">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:SettingBase">
        <xs:sequence>
          <xs:element minOccurs="0" name="apply" type="wm:ApplyText" />
          <xs:element minOccurs="0" name="visibility" type="wm:SettingVisibility" />
          <xs:element minOccurs="0" maxOccurs="1" name="serialization" type="wm:Serialization" />
          <xs:element minOccurs="0" name="validation">
            <xs:complexType>
              <xs:sequence maxOccurs="1">
                <xs:element minOccurs="0" name="allowedValues">
                  <xs:complexType>
                    <xs:sequence>
                      <xs:element maxOccurs="unbounded" name="value">
                        <xs:complexType>
                          <xs:simpleContent>
                            <xs:extension base="xs:string">
                              <xs:attribute name="display" type="xs:string" />
                              <xs:attribute name="description" type="xs:string" />
                            </xs:extension>
                          </xs:simpleContent>
                        </xs:complexType>
                      </xs:element>
                    </xs:sequence>
                  </xs:complexType>
                </xs:element>
                <xs:element minOccurs="0" maxOccurs="1" name="allowedValueReference">
                  <xs:complexType>
                    <xs:attribute name="path" type="xs:string" />
                  </xs:complexType>
                </xs:element>
              </xs:sequence>
              <xs:attribute name="minLength" type="xs:unsignedInt" />
              <xs:attribute name="maxLength" type="xs:unsignedInt" />
              <xs:attribute name="pattern" type="xs:string" />
            </xs:complexType>
          </xs:element>
          <xs:element minOccurs="0" name="default" type="xs:string" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="BinarySetting">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:SettingBase">
        <xs:sequence>
          <xs:element minOccurs="0" name="apply" type="wm:ApplyDefault" />
          <xs:element minOccurs="0" name="visibility" type="wm:SettingVisibility" />
          <xs:element minOccurs="0" name="default" type="xs:string" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="AssetSetting">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:SettingBase">
        <xs:sequence>
          <xs:element minOccurs="0" name="apply" type="wm:ApplyDefault" />
          <xs:element minOccurs="0" name="visibility" type="wm:SettingVisibility" />
          <xs:choice minOccurs="1">
            <xs:element name="serialization" type="wm:Serialization" />
            <xs:element name="destination">
              <xs:complexType>
                <xs:attribute name="path" type="xs:string" />
                <xs:attribute name="removable" type="xs:boolean" />
              </xs:complexType>
            </xs:element>
          </xs:choice>
          <xs:element minOccurs="0" name="validation">
            <xs:complexType>
              <xs:sequence>
                <xs:element minOccurs="0" name="allowedFileExtensions">
                  <xs:complexType>
                    <xs:sequence>
                      <xs:element maxOccurs="unbounded" name="extension">
                        <xs:complexType>
                          <xs:simpleContent>
                            <xs:extension base="xs:string" />
                          </xs:simpleContent>
                        </xs:complexType>
                      </xs:element>
                    </xs:sequence>
                  </xs:complexType>
                </xs:element>
              </xs:sequence>
            </xs:complexType>
          </xs:element>
          <xs:element minOccurs="0" name="registration">
            <xs:complexType>
              <xs:choice minOccurs="0">
                <xs:element name="valueList">
                  <xs:complexType>
                    <xs:attribute name="oemKey" type="xs:string" use="required" />
                    <xs:attribute name="moKey" type="xs:string" />
                  </xs:complexType>
                </xs:element>
                <xs:element name="multiStringList">
                  <xs:complexType>
                    <xs:sequence>
                      <xs:element name="key" type="xs:string" />
                      <xs:element name="value" type="xs:string" />
                    </xs:sequence>
                  </xs:complexType>
                </xs:element>
              </xs:choice>
            </xs:complexType>
          </xs:element>
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="IncludesType">
    <xs:sequence>
      <xs:element minOccurs="1" maxOccurs="unbounded" name="file">
        <xs:complexType>
          <xs:attribute name="path" type="xs:string" use="required" />
        </xs:complexType>
      </xs:element>
    </xs:sequence>
  </xs:complexType>
  <xs:complexType name="GroupSetting">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:SettingBase">
        <xs:sequence>
          <xs:element minOccurs="0" name="apply" type="wm:ApplyDefault" />
          <xs:element minOccurs="0" name="visibility" type="wm:SettingVisibility" />
          <xs:element minOccurs="0" maxOccurs="1" name="serialization" type="wm:Serialization" />
          <xs:element name="settings" type="wm:AnySettings" />
        </xs:sequence>
        <xs:attribute name="isAtomic" type="xs:boolean" />
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="ListSetting">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:SettingBase">
        <xs:sequence>
          <xs:element minOccurs="0" name="apply" type="wm:ApplyDefault" />
          <xs:element minOccurs="0" name="visibility" type="wm:SettingVisibility" />
          <xs:element minOccurs="0" name="validation">
            <xs:complexType>
              <xs:attribute name="maxItemCount" type="xs:unsignedInt" use="required" />
            </xs:complexType>
          </xs:element>
          <xs:element name="item" type="wm:AnySetting" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="MapSetting">
    <xs:complexContent mixed="false">
      <xs:extension base="wm:SettingBase">
        <xs:sequence>
          <xs:element minOccurs="0" name="apply" type="wm:ApplyDefault" />
          <xs:element minOccurs="0" name="visibility" type="wm:SettingVisibility" />
          <xs:element maxOccurs="1" name="key">
            <xs:complexType>
              <xs:sequence>
                <xs:element minOccurs="0" name="validation">
                  <xs:complexType>
                    <xs:sequence>
                      <xs:element minOccurs="0" name="allowedKeys">
                        <xs:complexType>
                          <xs:sequence>
                            <xs:element minOccurs="0" maxOccurs="unbounded" name="key">
                              <xs:complexType>
                                <xs:simpleContent>
                                  <xs:extension base="xs:string">
                                    <xs:attribute name="display" type="xs:string" />
                                    <xs:attribute name="description" type="xs:string" />
                                  </xs:extension>
                                </xs:simpleContent>
                              </xs:complexType>
                            </xs:element>
                            <xs:element minOccurs="0" maxOccurs="unbounded" name="conditionalKey">
                              <xs:complexType>
                                <xs:sequence>
                                  <xs:element minOccurs="0" maxOccurs="1" name="visibility" type="wm:AllowedValueVisibility" />
                                </xs:sequence>
                                <xs:attribute name="name" type="xs:string" use="required" />
                                <xs:attribute name="display" type="xs:string" />
                                <xs:attribute name="description" type="xs:string" />
                              </xs:complexType>
                            </xs:element>
                          </xs:sequence>
                        </xs:complexType>
                      </xs:element>
                    </xs:sequence>
                    <xs:attribute name="minLength" type="xs:unsignedInt" />
                    <xs:attribute name="maxLength" type="xs:unsignedInt" />
                    <xs:attribute name="pattern" type="xs:string" />
                  </xs:complexType>
                </xs:element>
              </xs:sequence>
              <xs:attribute name="name" type="xs:string" use="required" />
            </xs:complexType>
          </xs:element>
          <xs:element name="item" type="wm:AnySetting" />
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:group name="SelectSetting">
    <xs:choice>
      <xs:element name="bool" type="wm:BoolSetting" />
      <xs:element name="int" type="wm:IntSetting" />
      <xs:element name="text" type="wm:TextSetting" />
      <xs:element name="binary" type="wm:BinarySetting" />
      <xs:element name="asset" type="wm:AssetSetting" />
      <xs:element name="list" type="wm:ListSetting" />
      <xs:element name="map" type="wm:MapSetting" />
      <xs:element name="group" type="wm:GroupSetting" />
    </xs:choice>
  </xs:group>
  <xs:complexType name="AnySetting">
    <xs:group ref="wm:SelectSetting" />
  </xs:complexType>
  <xs:complexType name="AnySettings">
    <xs:sequence>
      <xs:group maxOccurs="unbounded" ref="wm:SelectSetting" />
    </xs:sequence>
  </xs:complexType>
  <xs:element name="onecorePackageInfo">
    <xs:complexType>
      <xs:choice maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:binaryPartition" />
      </xs:choice>
      <xs:attribute name="targetPartition" type="xs:string" use="required" />
      <xs:attribute name="releaseType" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="Production" />
            <xs:enumeration value="Test" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="ownerType" use="optional">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="OEM" />
            <xs:enumeration value="MobileOperator" />
            <xs:enumeration value="SiliconVendor" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute default="false" name="binaryPartition" type="xs:boolean" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="binaryPartition">
    <xs:complexType>
      <xs:attribute name="imageSource" type="xs:string" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:element name="policyDefinitions">
    <xs:annotation>
      <xs:documentation>Policy definitions for an area.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="1" ref="wm:area" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  <xs:element name="area">
    <xs:annotation>
      <xs:documentation>Policy area.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:all>
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:areaWnf" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:evaluatorWnf" />
        <xs:element minOccurs="1" maxOccurs="1" ref="wm:policies" />
      </xs:all>
      <xs:attribute name="name" type="xs:string" use="required" />
      <xs:attribute name="description" type="xs:string" use="optional" />
      <xs:attribute name="owner" type="xs:string" use="optional" />
    </xs:complexType>
    <xs:unique name="uniqueArea">
      <xs:selector xpath="wm:Area" />
      <xs:field xpath="@name" />
    </xs:unique>
  </xs:element>
  <xs:element name="policies">
    <xs:annotation>
      <xs:documentation>Policies.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:numericPolicy" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:booleanPolicy" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:stringPolicy" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:binaryPolicy" />
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:element name="numericPolicy">
    <xs:annotation>
      <xs:documentation>Numeric policy.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:all>
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:policyWnf" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:range" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:groupPolicy" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:registryKeyRedirect" />
      </xs:all>
      <xs:attribute name="name" type="xs:string" use="required" />
      <xs:attribute name="description" type="xs:string" use="optional" />
      <xs:attribute name="defaultValue" type="xs:integer" use="required" />
      <xs:attribute name="perUser" type="xs:boolean" use="optional" />
      <xs:attribute name="preference" type="xs:boolean" use="optional" />
      <xs:attribute name="enableForMAM" type="xs:boolean" use="optional" />
      <xs:attribute name="scope" type="wm:ScopeValueType" use="optional" />
      <xs:attribute name="conflictResolution" type="wm:AllConflictResolutionType" use="required" />
      <xs:attribute name="isParentPolicyMajor" type="xs:boolean" use="optional" />
      <xs:attribute name="parentPolicyMajor" type="xs:string" use="optional" />
      <xs:attribute name="isParentPolicyMinor" type="xs:boolean" use="optional" />
      <xs:attribute name="parentPolicyMinor" type="xs:string" use="optional" />
      <xs:attribute name="precheckDllPath" type="xs:string" use="optional" />
      <xs:attribute name="translationDllPath" type="xs:string" use="optional" />
      <xs:attribute name="allowedValues" type="xs:string" use="optional" />
      <xs:attribute name="owner" type="xs:string" use="optional" />
      <xs:attribute name="notPolicyCSPVisible" type="xs:boolean" use="optional" />
      <xs:attribute name="virtualDelete" type="xs:boolean" use="optional" />
      <xs:attribute name="evaluators" type="xs:string" use="optional" />
      <xs:attribute name="notSupportedOnPlatform" type="xs:string" use="optional" />
      <xs:attribute name="startOSVersion" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="booleanPolicy">
    <xs:annotation>
      <xs:documentation>Boolean policy.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:all>
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:policyWnf" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:groupPolicy" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:registryKeyRedirect" />
      </xs:all>
      <xs:attribute name="name" type="xs:string" use="required" />
      <xs:attribute name="description" type="xs:string" use="optional" />
      <xs:attribute name="defaultValue" type="xs:integer" use="optional" />
      <xs:attribute name="perUser" type="xs:boolean" use="optional" />
      <xs:attribute name="preference" type="xs:boolean" use="optional" />
      <xs:attribute name="enableForMAM" type="xs:boolean" use="optional" />
      <xs:attribute name="scope" type="wm:ScopeValueType" use="optional" />
      <xs:attribute name="precheckDllPath" type="xs:string" use="optional" />
      <xs:attribute name="translationDllPath" type="xs:string" use="optional" />
      <xs:attribute name="conflictResolution" type="wm:BooleanConflictResolutionType" use="optional" />
      <xs:attribute name="owner" type="xs:string" use="optional" />
      <xs:attribute name="notPolicyCSPVisible" type="xs:boolean" use="optional" />
      <xs:attribute name="virtualDelete" type="xs:boolean" use="optional" />
      <xs:attribute name="evaluators" type="xs:string" use="optional" />
      <xs:attribute name="notSupportedOnPlatform" type="xs:string" use="optional" />
      <xs:attribute name="startOSVersion" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="stringPolicy">
    <xs:annotation>
      <xs:documentation>String policy.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:all>
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:policyWnf" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:groupPolicy" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:registryKeyRedirect" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:ADMXPolicy" />
      </xs:all>
      <xs:attribute name="name" type="xs:string" use="required" />
      <xs:attribute name="description" type="xs:string" use="optional" />
      <xs:attribute name="defaultValue" type="xs:string" use="optional" />
      <xs:attribute name="perUser" type="xs:boolean" use="optional" />
      <xs:attribute name="multisz" type="xs:boolean" use="optional" />
      <xs:attribute name="enableForMAM" type="xs:boolean" use="optional" />
      <xs:attribute name="scope" type="wm:ScopeValueType" use="optional" />
      <xs:attribute name="conflictResolution" type="wm:StringConflictResolutionType" use="required" />
      <xs:attribute name="precheckDllPath" type="xs:string" use="optional" />
      <xs:attribute name="translationDllPath" type="xs:string" use="optional" />
      <xs:attribute name="owner" type="xs:string" use="optional" />
      <xs:attribute name="notPolicyCSPVisible" type="xs:boolean" use="optional" />
      <xs:attribute name="virtualDelete" type="xs:boolean" use="optional" />
      <xs:attribute name="evaluators" type="xs:string" use="optional" />
      <xs:attribute name="notSupportedOnPlatform" type="xs:string" use="optional" />
      <xs:attribute name="admxbacked" type="xs:string" use="optional" />
      <xs:attribute name="startOSVersion" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="binaryPolicy">
    <xs:annotation>
      <xs:documentation>Binary policy.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:all>
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:policyWnf" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:range" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:groupPolicy" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:registryKeyRedirect" />
      </xs:all>
      <xs:attribute name="name" type="xs:string" use="required" />
      <xs:attribute name="description" type="xs:string" use="optional" />
      <xs:attribute name="defaultValue" type="xs:hexBinary" use="optional" />
      <xs:attribute name="perUser" type="xs:boolean" use="optional" />
      <xs:attribute name="enableForMAM" type="xs:boolean" use="optional" />
      <xs:attribute name="scope" type="wm:ScopeValueType" use="optional" />
      <xs:attribute name="conflictResolution" type="wm:BinaryConflictResolutionType" use="required" />
      <xs:attribute name="precheckDllPath" type="xs:string" use="optional" />
      <xs:attribute name="translationDllPath" type="xs:string" use="optional" />
      <xs:attribute name="owner" type="xs:string" use="optional" />
      <xs:attribute name="notPolicyCSPVisible" type="xs:boolean" use="optional" />
      <xs:attribute name="virtualDelete" type="xs:boolean" use="optional" />
      <xs:attribute name="evaluators" type="xs:string" use="optional" />
      <xs:attribute name="notSupportedOnPlatform" type="xs:string" use="optional" />
      <xs:attribute name="startOSVersion" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="ADMXPolicy">
    <xs:annotation>
      <xs:documentation>ADMX policy type</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="area" type="xs:string" use="required" />
      <xs:attribute name="name" type="xs:string" use="required" />
      <xs:attribute name="scope" type="wm:ScopeValueType" use="required" />
      <xs:attribute name="area1" type="xs:string" use="optional" />
      <xs:attribute name="name1" type="xs:string" use="optional" />
      <xs:attribute name="scope1" type="wm:ScopeValueType" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="policyWnf">
    <xs:annotation>
      <xs:documentation>Policy WNF.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="wnfStateName1" type="wm:HexNumberType" use="required" />
      <xs:attribute name="wnfStateName2" type="wm:HexNumberType" use="required" />
      <xs:attribute name="cache" type="xs:boolean" use="optional" />
      <xs:attribute name="delayPublish" type="xs:boolean" use="optional" />
      <xs:attribute name="publishWNFIndependentOfChange" type="xs:boolean" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="areaWnf">
    <xs:annotation>
      <xs:documentation>Area WNF.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="wnfStateName1" type="wm:HexNumberType" use="required" />
      <xs:attribute name="wnfStateName2" type="wm:HexNumberType" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:element name="evaluatorWnf">
    <xs:annotation>
      <xs:documentation>Evaluator WNF.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="name" type="xs:string" use="required" />
      <xs:attribute name="wnfStateName1" type="wm:HexNumberType" use="required" />
      <xs:attribute name="wnfStateName2" type="wm:HexNumberType" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:element name="range">
    <xs:annotation>
      <xs:documentation>low and high range of numeric value.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="low" type="xs:integer" use="required" />
      <xs:attribute name="high" type="xs:integer" use="required" />
      <xs:attribute name="forceMinValue" type="xs:boolean" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="groupPolicy">
    <xs:annotation>
      <xs:documentation>sister group policy</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="name" type="xs:string" use="required" />
      <xs:attribute name="path" type="xs:string" use="required" />
      <xs:attribute name="multisz" type="xs:boolean" use="optional" />
      <xs:attribute name="multiszSeparatorChar" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="registryKeyRedirect">
    <xs:annotation>
      <xs:documentation>registry key and value name where the current policy value is stored.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="name" type="xs:string" use="optional" />
      <xs:attribute name="path" type="xs:string" use="required" />
      <xs:attribute name="deleteWhenLastConfigSourceRemoved" type="xs:boolean" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:simpleType name="HexNumberType">
    <xs:restriction base="xs:string">
      <xs:pattern value="0x[0-9A-Fa-f]+|[0-9]+" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ScopeValueType">
    <xs:annotation>
      <xs:documentation>The policy scope values.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="both">
        <xs:annotation>
          <xs:documentation>Policy can be applied per user and machine.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="perUser">
        <xs:annotation>
          <xs:documentation>Policy can be applied per user.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="machine">
        <xs:annotation>
          <xs:documentation>Policy can be applied machine wide.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="AllConflictResolutionType">
    <xs:annotation>
      <xs:documentation>The type of the conflict resolution.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="NoMerge">
        <xs:annotation>
          <xs:documentation>No policy merge.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="LowestValueMostSecure">
        <xs:annotation>
          <xs:documentation>The lowest value is the most secure policy value.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="HighestValueMostSecure">
        <xs:annotation>
          <xs:documentation>The highest value is the most secure policy value.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="LastWrite">
        <xs:annotation>
          <xs:documentation>The last written value is current value</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="LowestValueMostSecureZeroHasNoLimits">
        <xs:annotation>
          <xs:documentation>The lowest value is the most secure policy value unless the value is zero.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="HighestValueMostSecureZeroHasNoLimits">
        <xs:annotation>
          <xs:documentation>The highest value is the most secure policy value unless the value is zero.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="BooleanConflictResolutionType">
    <xs:annotation>
      <xs:documentation>The type of the conflict resolution for boolean.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="LowestValueMostSecure">
        <xs:annotation>
          <xs:documentation>The lowest value is the most secure policy value.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="HighestValueMostSecure">
        <xs:annotation>
          <xs:documentation>The highest value is the most secure policy value.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="StringConflictResolutionType">
    <xs:annotation>
      <xs:documentation>The type of the conflict resolution.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="NoMerge">
        <xs:annotation>
          <xs:documentation>No policy merge.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="LastWrite">
        <xs:annotation>
          <xs:documentation>The last written value is current value</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="BinaryConflictResolutionType">
    <xs:annotation>
      <xs:documentation>The type of the conflict resolution.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="NoMerge">
        <xs:annotation>
          <xs:documentation>No policy merge.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="LastWrite">
        <xs:annotation>
          <xs:documentation>The last written value is current value</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="authorization">
    <xs:annotation>
      <xs:documentation>An Authorization element contains one or more principalClass, capabilityClass or capabilityRule elements.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:principalClass" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:capabilityClass" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:capabilityRule" />
      </xs:choice>
    </xs:complexType>
    <xs:unique name="uniquePrincipalClass">
      <xs:selector xpath="wm:principalClass" />
      <xs:field xpath="@name" />
    </xs:unique>
    <xs:unique name="uniqueCapabilityClass">
      <xs:selector xpath="wm:capabilityClass" />
      <xs:field xpath="@name" />
    </xs:unique>
    <xs:unique name="uniqueCapabilityRule">
      <xs:selector xpath="wm:capabilityRule" />
      <xs:field xpath="@name" />
    </xs:unique>
  </xs:element>
  <xs:element name="principalClass">
    <xs:annotation>
      <xs:documentation>A principalClass element contains at least one certificates element.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:certificates" />
      </xs:choice>
      <xs:attribute name="name" type="wm:principalClassNameType" use="required" />
      <xs:attribute name="description" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="certificates">
    <xs:annotation>
      <xs:documentation>A certificates element contains at least one certificate element.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="1" maxOccurs="unbounded" name="certificate" type="wm:classCertificateType" />
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:complexType name="classCertificateType">
    <xs:annotation>
      <xs:documentation>A certificate element contains the properties of a certificate.</xs:documentation>
    </xs:annotation>
    <xs:attribute name="type" type="wm:certificateType" use="required" />
    <xs:attribute name="eku" type="wm:certificateEkuType" use="optional" />
    <xs:attribute default="sha256" name="alg" type="wm:certificateHashType" use="optional" />
    <xs:attribute name="thumbprint" type="wm:certificateThumbprintType" use="optional" />
  </xs:complexType>
  <xs:element name="capabilityClass">
    <xs:annotation>
      <xs:documentation>A capabilityClass element contains at least one memberCapability or memberCapabilityClass element.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="unbounded" name="memberCapability" type="wm:memberCapabilityType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="memberCapabilityClass" type="wm:memberCapabilityClassType" />
      </xs:choice>
      <xs:attribute name="name" type="wm:capabilityClassNameType" use="required" />
      <xs:attribute name="description" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:complexType name="memberCapabilityType">
    <xs:annotation>
      <xs:documentation>A capability that is a member of a capability class.</xs:documentation>
    </xs:annotation>
    <xs:attribute name="id" type="wm:capabilityIdType" use="required" />
  </xs:complexType>
  <xs:complexType name="memberCapabilityClassType">
    <xs:annotation>
      <xs:documentation>A capability class that is nested in another capability class.</xs:documentation>
    </xs:annotation>
    <xs:attribute name="name" type="wm:capabilityClassNameType" use="required" />
  </xs:complexType>
  <xs:element name="capabilityRule">
    <xs:annotation>
      <xs:documentation>An authorization rule for capabilities.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="name" type="wm:capabilityRuleNameType" use="required" />
      <xs:attribute name="description" type="xs:string" use="optional" />
      <xs:attribute name="capabilityClass" type="wm:capabilityClassNameType" use="required" />
      <xs:attribute name="principalClass" type="wm:principalClassNameType" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:element name="accounts">
    <xs:annotation>
      <xs:documentation>An accounts element defines a collection of one or more user or service account</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:account" />
      </xs:sequence>
    </xs:complexType>
    <xs:unique name="uniqueAccountName">
      <xs:selector xpath="wm:account" />
      <xs:field xpath="@name" />
    </xs:unique>
  </xs:element>
  <xs:element name="account">
    <xs:annotation>
      <xs:documentation>An account element defines a user or service account</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:accountPrivileges" />
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:accountCapabilities" />
      </xs:sequence>
      <xs:attribute name="name" type="xs:string" use="required" />
      <xs:attribute name="description" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="accountCapabilities">
    <xs:annotation>
      <xs:documentation>An accountCapabilities element defines the capabilities required for a service account</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:requiredCapability" />
      </xs:sequence>
    </xs:complexType>
    <xs:unique name="uniqueAccountRequiredCapabilityId">
      <xs:selector xpath="wm:requiredCapability" />
      <xs:field xpath="@id" />
    </xs:unique>
  </xs:element>
  <xs:element name="requiredCapability">
    <xs:annotation>
      <xs:documentation>A requiredCapability defines a requested capability Id</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:attribute name="id" type="wm:CapabilityIdType" />
    </xs:complexType>
  </xs:element>
  <xs:element name="accountPrivileges">
    <xs:annotation>
      <xs:documentation>An accountPrivileges element defines the privileges for a user or service account</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:requiredPrivilege" />
      </xs:sequence>
    </xs:complexType>
    <xs:unique name="uniqueAccountRequiredPrivilegeId">
      <xs:selector xpath="wm:requiredPrivilege" />
      <xs:field xpath="@name" />
    </xs:unique>
  </xs:element>
  <xs:element name="requiredPrivilege">
    <xs:complexType>
      <xs:attribute name="name" type="wm:privilegeNameType" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:simpleType name="principalClassNameType">
    <xs:annotation>
      <xs:documentation>The principalClass name should start with principalClass, with a length less than 256 characters.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="principalClass[-_.A-Za-z0-9]+" />
      <xs:minLength value="1" />
      <xs:maxLength value="256" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="capabilityClassNameType">
    <xs:annotation>
      <xs:documentation>The capabilityClass name should start with capabilityClass, with a length less than 256 characters.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="capabilityClass[-_.A-Za-z0-9]+" />
      <xs:minLength value="1" />
      <xs:maxLength value="256" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="capabilityRuleNameType">
    <xs:annotation>
      <xs:documentation>The capabilityRule name should start with capabilityRule, with a length less than 256 characters.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="capabilityRule[-_.A-Za-z0-9]+" />
      <xs:minLength value="1" />
      <xs:maxLength value="256" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="certificateType">
    <xs:annotation>
      <xs:documentation>The type of the certificate.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="leaf">
        <xs:annotation>
          <xs:documentation>The certificate is the leaf certificate.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="intermediate">
        <xs:annotation>
          <xs:documentation>The certificate is the first intermediate certificate (above the leaf).</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="root">
        <xs:annotation>
          <xs:documentation>The certificate is the root certificate.</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="certificateEkuType">
    <xs:annotation>
      <xs:documentation>The EKU of the certificate</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="[1-9][0-9]*(.[1-9][0-9]*)+" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="certificateHashType">
    <xs:annotation>
      <xs:documentation>The hash algorithm used to generate the thumbprint for the certificate.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="sha256" />
      <xs:enumeration value="sha384" />
      <xs:enumeration value="sha512" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="certificateThumbprintType">
    <xs:annotation>
      <xs:documentation>The thumbprint of the certificate</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="[a-fA-F0-9]+" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="capabilityIdType">
    <xs:annotation>
      <xs:documentation>CapabilityId should be a camel cased string upto 128 characters in length or a macro for a device capability. 
        Legacy capabilities must start with ID_CAP_ or be a macro for a Windows capability.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="[a-z][-_.A-Za-z0-9]+|\$\([deviceCapability][-_.A-Za-z0-9]+\)" />
      <xs:pattern value="\$\(deviceCapability" />
      <xs:pattern value="ID_CAP_[A-Z][_A-Z0-9]*|\$\([WINCAP_][A-Z_0-9.]*\)" />
      <xs:minLength value="1" />
      <xs:maxLength value="128" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="privilegeNameType">
    <xs:annotation>
      <xs:documentation>Privileges allowed to accounts. The following privileges are intentionally left
        off this enumeration as they allow an elevation path to TCB.
        TrustedComputerBase
        TakeOwnership
        Impersonate
        LoadDriver
        Backup
        Restore
        Debug
        AssignPrimaryToken
        LockMemory
        Security
        CreatePageFile
        CreatePermanent
        IncreaseQuota
        ManageVolume
        SystemEnvironment</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="CreateToken" />
      <xs:enumeration value="UnsolicitedInput" />
      <xs:enumeration value="MachineAccount" />
      <xs:enumeration value="SystemProfile" />
      <xs:enumeration value="SystemTime" />
      <xs:enumeration value="ProfileSingleProcess" />
      <xs:enumeration value="IncreaseBasePriority" />
      <xs:enumeration value="Shutdown" />
      <xs:enumeration value="Audit" />
      <xs:enumeration value="ChangeNotify" />
      <xs:enumeration value="Audit" />
      <xs:enumeration value="RemoteShutdown" />
      <xs:enumeration value="Undock" />
      <xs:enumeration value="SyncAgent" />
      <xs:enumeration value="EnableDelegation" />
      <xs:enumeration value="CreateGlobal" />
      <xs:enumeration value="InteractiveLogon" />
      <xs:enumeration value="NetworkLogon" />
      <xs:enumeration value="BatchLogon" />
      <xs:enumeration value="ServiceLogon" />
      <xs:enumeration value="DenyInteractiveLogon" />
      <xs:enumeration value="DenyNetworkLogon" />
      <xs:enumeration value="DenyBatchLogon" />
      <xs:enumeration value="DenyServiceLogon" />
      <xs:enumeration value="RemoteInteractiveLogon" />
      <xs:enumeration value="DenyRemoteInteractiveLogon" />
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="capabilities">
    <xs:annotation>
      <xs:documentation>A Capabilities element contains at least one Capability element.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:capability" />
        <xs:element minOccurs="0" maxOccurs="unbounded" ref="wm:windowsRules" />
      </xs:choice>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
    </xs:complexType>
    <xs:unique name="UniqueCapabilityId">
      <xs:selector xpath="wm:Capability" />
      <xs:field xpath="@Id" />
    </xs:unique>
    <xs:unique name="UniqueWindowsRulesId">
      <xs:selector xpath="wm:WindowsRules" />
      <xs:field xpath="@Id" />
    </xs:unique>
  </xs:element>
  <xs:element name="capability">
    <xs:annotation>
      <xs:documentation>A Capability element defines a capability</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="0" maxOccurs="1" ref="wm:capabilityRules" />
      </xs:sequence>
      <xs:attribute name="id" type="wm:CapabilityIdType" use="required" />
      <xs:attribute name="friendlyName" type="wm:DescriptionStringType" use="required" />
      <xs:attribute name="adminOnMultiSession" type="wm:YesNoType" use="optional" />
      <xs:attribute name="visibility" type="wm:VisibilityType" use="optional" />
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="capabilityRules">
    <xs:annotation>
      <xs:documentation>A CapabilityRules element.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="unbounded" name="file" type="wm:CapRuleFileType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="directory" type="wm:CapRuleDirectoryType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="regKey" type="wm:CapRuleRegKeyType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="serviceAccess" type="wm:CapRuleServiceAccessType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="transientObject" type="wm:CapRuleTransientObjectType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="com" type="wm:CapRuleCOMType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="winRT" type="wm:CapRuleWinRTType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="etwProvider" type="wm:CapRuleETWProviderType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="wnf" type="wm:CapRuleWNFType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="sdRegValue" type="wm:CapRuleSDRegValueType" />
      </xs:choice>
    </xs:complexType>
  </xs:element>
  <xs:complexType name="CapRuleFileType">
    <xs:annotation>
      <xs:documentation>A capability rule for File</xs:documentation>
    </xs:annotation>
    <xs:attribute name="path" type="wm:DevicePathType" use="required" />
    <xs:attribute name="rights" type="wm:MultiMacroIdsRefType" use="required" />
  </xs:complexType>
  <xs:complexType name="CapRuleDirectoryType">
    <xs:annotation>
      <xs:documentation>A capability rule for Directory</xs:documentation>
    </xs:annotation>
    <xs:attribute name="path" type="wm:FolderPathType" use="required" />
    <xs:attribute name="rights" type="wm:MultiMacroIdsRefType" use="required" />
  </xs:complexType>
  <xs:complexType name="CapRuleRegKeyType">
    <xs:annotation>
      <xs:documentation>A capability rule for RegKey</xs:documentation>
    </xs:annotation>
    <xs:attribute name="path" type="wm:RegKeyPathType" use="required" />
    <xs:attribute name="rights" type="wm:MultiMacroIdsRefType" use="required" />
  </xs:complexType>
  <xs:complexType name="CapRuleServiceAccessType">
    <xs:annotation>
      <xs:documentation>A capability rule for Service</xs:documentation>
    </xs:annotation>
    <xs:attribute name="name" type="wm:LongServiceNameType" use="required" />
    <xs:attribute name="rights" type="wm:MultiMacroIdsRefType" use="required" />
  </xs:complexType>
  <xs:complexType name="CapRuleTransientObjectType">
    <xs:annotation>
      <xs:documentation>A capability rule for TransientObject</xs:documentation>
    </xs:annotation>
    <xs:attribute name="path" type="wm:TransientObjectPathType" use="required" />
    <xs:attribute name="type" type="wm:TransientObjectTypeType" use="required" />
    <xs:attribute name="rights" type="wm:MultiMacroIdsRefType" use="required" />
    <xs:attribute name="protectToUser" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="CapRuleCOMType">
    <xs:annotation>
      <xs:documentation>A capability rule for COM</xs:documentation>
    </xs:annotation>
    <xs:attribute name="appId" type="wm:GuidType" use="required" />
    <xs:attribute name="launchPermission" type="wm:MultiMacroIdsRefType" use="optional" />
    <xs:attribute name="accessPermission" type="wm:MultiMacroIdsRefType" use="optional" />
    <xs:attribute name="protectToUser" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="CapRuleWinRTType">
    <xs:annotation>
      <xs:documentation>A capability rule for WinRT out of process objects</xs:documentation>
    </xs:annotation>
    <xs:attribute name="serverName" type="xs:string" use="required" />
    <xs:attribute name="launchPermission" type="wm:MultiMacroIdsRefType" use="optional" />
    <xs:attribute name="accessPermission" type="wm:MultiMacroIdsRefType" use="optional" />
    <xs:attribute name="protectToUser" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="CapRuleETWProviderType">
    <xs:annotation>
      <xs:documentation>A capability rule for ETW Provider</xs:documentation>
    </xs:annotation>
    <xs:attribute name="guid" type="wm:GuidType2" use="required" />
    <xs:attribute name="rights" type="wm:MultiMacroIdsRefType" use="required" />
  </xs:complexType>
  <xs:complexType name="CapRuleWNFType">
    <xs:annotation>
      <xs:documentation>A capability rule for WNF</xs:documentation>
    </xs:annotation>
    <xs:attribute name="name" type="xs:string" use="optional" />
    <xs:attribute name="scope" type="wm:WNFScopeType" use="required" />
    <xs:attribute name="tag" use="required">
      <xs:simpleType>
        <xs:restriction base="xs:string">
          <xs:minLength value="1" />
          <xs:maxLength value="4" />
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
    <xs:attribute name="sequence" type="xs:integer" use="required" />
    <xs:attribute name="rights" type="wm:MultiMacroIdsRefType" use="required" />
    <xs:attribute default="0" name="dataPermanent" type="wm:WNFDataPermanentType" use="optional" />
  </xs:complexType>
  <xs:complexType name="CapRuleSDRegValueType">
    <xs:annotation>
      <xs:documentation>A SDRegValue Capability element</xs:documentation>
    </xs:annotation>
    <xs:attribute name="path" type="wm:RegValuePathType" use="required" />
    <xs:attribute name="rights" type="wm:MultiMacroIdsRefType" use="required" />
    <xs:attribute name="saveAsString" type="wm:YesNoType" use="optional" />
    <xs:attribute name="setOwner" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:element name="requiredCapabilities">
    <xs:annotation>
      <xs:documentation>A RequiredCapabilities element contains at least one RequiredCapability element.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:sequence>
        <xs:element minOccurs="1" maxOccurs="unbounded" ref="wm:requiredCapability" />
      </xs:sequence>
    </xs:complexType>
    <xs:unique name="UniqueRequiredCapabilityId">
      <xs:selector xpath="wm:RequiredCapability" />
      <xs:field xpath="@CapId" />
    </xs:unique>
  </xs:element>
  <xs:complexType name="PrivResFileType">
    <xs:annotation>
      <xs:documentation>A private resource for File</xs:documentation>
    </xs:annotation>
    <xs:attribute name="path" type="wm:DevicePathType" use="required" />
    <xs:attribute name="readOnly" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="PrivResDirectoryType">
    <xs:annotation>
      <xs:documentation>A private resource for Directory</xs:documentation>
    </xs:annotation>
    <xs:attribute name="path" type="wm:FolderPathType" use="required" />
    <xs:attribute name="readOnly" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="PrivResRegKeyType">
    <xs:annotation>
      <xs:documentation>A private resource for RegKey</xs:documentation>
    </xs:annotation>
    <xs:attribute name="path" type="wm:RegKeyPathType" use="required" />
    <xs:attribute name="readOnly" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="PrivResServiceAccessType">
    <xs:annotation>
      <xs:documentation>A private resource for Service</xs:documentation>
    </xs:annotation>
    <xs:attribute name="name" type="wm:LongServiceNameType" use="required" />
    <xs:attribute name="readOnly" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="PrivResTransientObjectType">
    <xs:annotation>
      <xs:documentation>A private resource for TransientObject</xs:documentation>
    </xs:annotation>
    <xs:attribute name="path" type="wm:TransientObjectPathType" use="required" />
    <xs:attribute name="type" type="wm:TransientObjectTypeType" use="required" />
    <xs:attribute name="readOnly" type="wm:YesNoType" use="optional" />
    <xs:attribute name="protectToUser" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="PrivResCOMType">
    <xs:annotation>
      <xs:documentation>A private resource for COM</xs:documentation>
    </xs:annotation>
    <xs:attribute name="appId" type="wm:GuidType" use="required" />
    <xs:attribute name="protectToUser" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="PrivResWinRTType">
    <xs:annotation>
      <xs:documentation>A private resource for WinRT out of process objects</xs:documentation>
    </xs:annotation>
    <xs:attribute name="serverName" type="xs:string" use="required" />
    <xs:attribute name="protectToUser" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="PrivResETWProviderType">
    <xs:annotation>
      <xs:documentation>A private resource for ETW Provider</xs:documentation>
    </xs:annotation>
    <xs:attribute name="guid" type="wm:GuidType2" use="required" />
  </xs:complexType>
  <xs:complexType name="PrivResWNFType">
    <xs:annotation>
      <xs:documentation>A private resource for WNF</xs:documentation>
    </xs:annotation>
    <xs:attribute name="name" type="xs:string" use="optional" />
    <xs:attribute name="scope" type="wm:WNFScopeType" use="required" />
    <xs:attribute name="tag" use="required">
      <xs:simpleType>
        <xs:restriction base="xs:string">
          <xs:minLength value="1" />
          <xs:maxLength value="4" />
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>
    <xs:attribute name="sequence" type="xs:integer" use="required" />
    <xs:attribute default="0" name="dataPermanent" type="wm:WNFDataPermanentType" use="optional" />
    <xs:attribute name="readOnly" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:complexType name="PrivResSDRegValueType">
    <xs:annotation>
      <xs:documentation>A SDRegValue private resource</xs:documentation>
    </xs:annotation>
    <xs:attribute name="path" type="wm:RegValuePathType" use="required" />
    <xs:attribute name="saveAsString" type="wm:YesNoType" use="optional" />
    <xs:attribute name="setOwner" type="wm:YesNoType" use="optional" />
    <xs:attribute name="readOnly" type="wm:YesNoType" use="optional" />
  </xs:complexType>
  <xs:element name="windowsRules">
    <xs:annotation>
      <xs:documentation>A WindowsRules element defines a set of rules for a single trustee SID</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="unbounded" name="file" type="wm:CapRuleFileType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="directory" type="wm:CapRuleDirectoryType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="regKey" type="wm:CapRuleRegKeyType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="serviceAccess" type="wm:CapRuleServiceAccessType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="transientObject" type="wm:CapRuleTransientObjectType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="com" type="wm:CapRuleCOMType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="etwProvider" type="wm:CapRuleETWProviderType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="wnf" type="wm:CapRuleWNFType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="sdRegValue" type="wm:CapRuleSDRegValueType" />
      </xs:choice>
      <xs:attribute name="id" type="wm:WindowsRulesIdType" use="required" />
      <xs:attribute name="friendlyName" type="wm:DescriptionStringType" use="required" />
      <xs:attribute name="sid" type="wm:SIDType" use="required" />
    </xs:complexType>
  </xs:element>
  <xs:simpleType name="WindowsRulesIdType">
    <xs:annotation>
      <xs:documentation>To avoid add WindowsRules into RequireCapabilities,
        The Id of WindowsRules should not start with ID_CAP_, with reasonable length that should be less than 50 characters.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="^(?!ID_CAP_)[a-zA-Z0-9\-_]+" />
      <xs:minLength value="1" />
      <xs:maxLength value="50" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="SIDType">
    <xs:annotation>
      <xs:documentation>The SID type.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="^S(\-[0-9]+)+" />
      <xs:minLength value="5" />
      <xs:maxLength value="512" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="MultiMacroIdsRefType">
    <xs:restriction base="xs:string">
      <xs:pattern value="(\$\([a-zA-Z_][a-zA-Z_0-9.]*\))+" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="FolderPathType">
    <xs:annotation>
      <xs:documentation>It must start with a macro and end with \(*) or \(+). The wildcard (*) indicates that self, all children and grandchilren
        will have/inherit the same permission. In SDDL, it will be translated to CIOI. The wildchar(+) indicates that all children and
        grandchildren, but not self will inherit the same permission.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="\$\([a-zA-Z_][a-zA-Z_0-9.]*\)(|\\[a-zA-Z0-9\-_!@#%\^\.,;=\+~`'\{\}\(\)\[\]\$ \\]+)\\\([\*\+]\)" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="RegKeyPathType">
    <xs:annotation>
      <xs:documentation>It must start with a macro and end with \(*). The wildcard (*) indicates that all children and grandchilren
        will inherit the same permission. In SDDL, it will be translated to CI.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="\$\([a-zA-Z_][a-zA-Z_0-9.]*\)(|\\[\x20-\x7F]+)\\\(\*\)" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="LongServiceNameType">
    <xs:annotation>
      <xs:documentation>The service name type for any service and it is case sensitive</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="[a-zA-Z0-9\-_]+" />
      <xs:minLength value="3" />
      <xs:maxLength value="256" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="TransientObjectPathType">
    <xs:annotation>
      <xs:documentation>It must be a path</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="[a-zA-Z0-9\-_!@#%\^\.,;=\+~`'\{\}\(\)\[\]\$ \\]+" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="GuidType">
    <xs:restriction base="xs:string">
      <xs:pattern value="\{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="TransientObjectTypeType">
    <xs:annotation>
      <xs:documentation>It must be a TransientObject type macro</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="\$\(OBJECT_[A-Z][_A-Z0-9]*\)" />
      <xs:minLength value="3" />
      <xs:maxLength value="256" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="GuidType2">
    <xs:restriction base="xs:string">
      <xs:pattern value="[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="WNFScopeType">
    <xs:annotation>
      <xs:documentation>The WNF scope string.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="System" />
      <xs:enumeration value="Session" />
      <xs:enumeration value="User" />
      <xs:enumeration value="Process" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="WNFDataPermanentType">
    <xs:annotation>
      <xs:documentation>The WNF Data Permanent. 1 - Permanent</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="1" />
      <xs:enumeration value="0" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="RegValuePathType">
    <xs:annotation>
      <xs:documentation>It must start with a macro.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="\$\([a-zA-Z_][a-zA-Z_0-9.]*\)(|\\[\x20-\x7F]+)" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="CapabilityIdType">
    <xs:annotation>
      <xs:documentation>CapabilityId should be a camel cased string upto 128 characters in length. Legacy capabilities must begin with ID_CAP_</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:pattern value="[a-z][-_.A-Za-z0-9]+" />
      <xs:pattern value="ID_CAP_[A-Z][_A-Z0-9]*" />
      <xs:minLength value="3" />
      <xs:maxLength value="128" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="DescriptionStringType">
    <xs:restriction base="xs:string" />
  </xs:simpleType>
  <xs:simpleType name="VisibilityType">
    <xs:annotation>
      <xs:documentation>The visibility of a Capability.</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="Public">
        <xs:annotation>
          <xs:documentation>The capability is opened for every application and service including 3rd pary applications</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
      <xs:enumeration value="Internal">
        <xs:annotation>
          <xs:documentation>The capability is only used by 1st party application and service</xs:documentation>
        </xs:annotation>
      </xs:enumeration>
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="YesNoType">
    <xs:annotation>
      <xs:documentation>Yes No type</xs:documentation>
    </xs:annotation>
    <xs:restriction base="xs:string">
      <xs:enumeration value="Yes" />
      <xs:enumeration value="No" />
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="privateResources">
    <xs:annotation>
      <xs:documentation>A PrivateResources element contains one or more PrivateResource.</xs:documentation>
    </xs:annotation>
    <xs:complexType>
      <xs:choice minOccurs="1" maxOccurs="unbounded">
        <xs:element minOccurs="0" maxOccurs="unbounded" name="file" type="wm:PrivResFileType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="directory" type="wm:PrivResDirectoryType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="regKey" type="wm:PrivResRegKeyType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="transientObject" type="wm:PrivResTransientObjectType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="serviceAccess" type="wm:PrivResServiceAccessType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="com" type="wm:PrivResCOMType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="winRT" type="wm:PrivResWinRTType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="etwProvider" type="wm:PrivResETWProviderType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="wnf" type="wm:PrivResWNFType" />
        <xs:element minOccurs="0" maxOccurs="unbounded" name="sdRegValue" type="wm:PrivResSDRegValueType" />
      </xs:choice>
      <xs:attribute name="buildFilter" type="wm:buildFilterType" use="optional" />
    </xs:complexType>
  </xs:element>
  <xs:element name="testSupport">
    <xs:annotation>
      <xs:documentation>Test support content will go here.</xs:documentation>
    </xs:annotation>
  </xs:element>
</xsd:schema>
```