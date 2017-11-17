---
title: Specifying components in a package project file
description: Specifying components in a package project file
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 23304e68-52d0-47c8-9f21-d74072116b8e
---

# Specifying components in a package project file


This section provides more detailed information about the supported
children of the **Components** element in a package project XML file.

## <span id="OSComponent_element"></span><span id="oscomponent_element"></span><span id="OSCOMPONENT_ELEMENT"></span>OSComponent element


The **OSComponent** element is a container for **Files** and **RegKeys**
elements. **OSComponent** has no attributes and is usually used to
include system components such as shared DLLs, data files, and registry
settings. For additional information about the **Files** and **RegKeys**
elements, see [Specifying files and registry entries in a package
project
file](specifying-files-and-registry-entries-in-a-package-project-file.md).

**Note**  

The **OSComponent** element must contain at least one **Files** element
or **RegKeys** element.

 

The following XML example uses the **OSComponents** element to include
various system files.

``` syntax
<Components>   
   <OSComponent>
      <Files>
         <File Source="$(_RELEASEDIR)\testdll.dll"/>
         <File Source="$(_RELEASEDIR)\testzh.dll"/>
         <File Source="$(_RELEASEDIR)\testEA.dll"/>
      </Files>
      <Files Language="*">
         <File DestinationDir="$(runtime.default)\mui\$(langid)" 
            Source="$(_RELEASEDIR)\$(LANGID)\testdll.dll.mui"/>
      </Files>
      <Files Language="(zh-CN;zh-TW)">
         <File DestinationDir="$(runtime.default)\mui\$(langid)" 
            Source="$(_RELEASEDIR)\$(LANGID)\testZH.dll.mui"/>
      </Files>
      <Files Language="(zh-CN;zh-TW;jp-jp;kr-kr)">
         <File DestinationDir="$(runtime.default)\mui\$(langid)" 
            Source="$(_RELEASEDIR)\$(LANGID)\testEA.dll.mui"/>
      </Files>
      <RegKeys Language="(zh-CN;zh-TW)">
         <RegKey KeyName="$(hklm.software)\microsoft\testZH\$(LANGID)">
            <RegValue Name="ZHConfig_$(LANGID)" Value="$(LANGID)" Type="REG_SZ"/>
            <RegValue Name="ZHConfig_$(LANGID)_Test" Value="$(LANGID)" 
               Type="REG_EXPAND_SZ"/>
         </RegKey>
      </RegKeys>
   </OSComponent>
</Components>
```

The files and registry keys can represent language-neutral or
language-specific components.

## <span id="Driver_element"></span><span id="driver_element"></span><span id="DRIVER_ELEMENT"></span>Driver element


Windows 10 Mobile uses some of the same driver model as Windows 10 for
desktop editions (Home, Pro, Enterprise, and Education). You must import
an .inf file for your driver into a package by using the **Driver**
element. When an .inf file is specified, the packaging infrastructure
calls the driver installation code to simulate the driver installation
and determine the necessary registry change for the driver.

The following table describes the attributes of the **Driver** element.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>InfSource</strong></p></td>
<td><p>Required. Specifies the .inf file for your driver to import into the driver package.</p></td>
</tr>
</tbody>
</table>

 

The following table describes the child elements of the **Driver**
element.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Element</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Reference</strong></p></td>
<td><p>Optional. Specifies any additional files that are required when installing the driver (such as the driver's .sys file). Adding a <strong>Reference</strong> element doesn't actually add the file to the package, however; to do that, you must still use a <strong>Files</strong> element.</p></td>
</tr>
<tr class="even">
<td><p><strong>Files</strong></p></td>
<td><p>Optional. Specifies a file to include in the driver package (such as the driver’s .sys file). For more info, see [Specifying files and registry entries in a package project file](specifying-files-and-registry-entries-in-a-package-project-file.md).</p></td>
</tr>
<tr class="odd">
<td><p><strong>Security</strong></p></td>
<td><p>Optional. Specifies how the driver is accessible applications and services. For more info, see [Security element](#driversecurity) below.</p></td>
</tr>
</tbody>
</table>

 

The following example adds a driver to a package.

``` syntax
<Components>   
   <Driver InfSource=
      "$(_WINPHONEROOT)\Sample.inf">
      <Reference Source="$(_RELEASEDIR)\Sample.sys" />
      <Files>
         <File Source="$(_RELEASEDIR)\Sample.sys"/>
      </Files>
   </Driver>
</Components>
```

The default file location for driver installation is
"$(runtime.drivers)". The staging of the driver object requires access
to the Mobile Core hive files. Therefore, it is necessary to set the
variable **HIVE\_ROOT** to the directory that contains those hives,
which by default is %WPDKCONTENTROOT%\\CoreSystem. The following example
shows a package generator (PkgGen.exe) command that sets the
**HIVE\_ROOT** variable.

``` syntax
Pkggen.exe <other arguments> /variables:"HIVE_ROOT=%WPDKCONTENTROOT%\CoreSystem";<other variables> <other arguments>
```

**Note**  

If the driver uses the **Include** INF directive to reference other
drivers that are part of the Mobile Core subset of the operating system,
use the **WIM\_ROOT** variable instead of the **HIVE\_ROOT** variable.
The default directory for the staging WIM image is the same as the
hives.

For Windows 10 Mobile, you must use both the **HIVE\_ROOT** and
**WIM\_ROOT** parameters. If you use only **WIM\_ROOT**, the package
might not be complete.

 

For more information about command-line arguments for PkgGen.exe, see
[Command-line arguments for package
generator](command-line-arguments-for-package-generator.md).

### <span id="driversecurity"></span><span id="DRIVERSECURITY"></span>Security element

Under the default security policy for drivers, drivers are accessible to
other TCB components (including other drivers and the kernel) and to
services. Some device experiences require a driver that can be accessed
by applications as well as services. To enable this scenario, OEMs may
need to add a **Security** element under the **Driver** element.

The **Security** element has the following attribute and child elements.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>InfSectionName</strong></p></td>
<td><p>Required. This attribute specifies the name of an <strong>AddReg</strong> directive section in the driver's .inf file. This specification allows for the injection of a Security Descriptor Definition Language (SDDL) string into the .inf file as part of package generation.</p></td>
</tr>
</tbody>
</table>

 

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Element</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>AccessedByCapability</strong></p></td>
<td><p>Optional. This element is used to specify a capability ID that is required for non-TCB code to access the driver, as well as the rights granted to that capability. The capability ID is specified through the <strong>Id</strong> attribute, which accepts a string that is the capability name. The rights are specified through the <strong>Rights</strong> attribute, which accepts one or more of the following strings:</p>
<ul>
<li><p>$(DEVICE_READ)</p></li>
<li><p>$(DEVICE_WRITE)</p></li>
<li><p>$(DEVICE_ALL)</p></li>
<li><p>$(DEVICE_EXECUTE)</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p><strong>AccessedByApplication</strong></p></td>
<td><p>Optional. This element is used to specify an app that can access the driver, as well as the rights granted to that application. The app is specified through the <strong>Name</strong> attribute, which accepts a string that is the app's product ID GUID. The rights are specified through the <strong>Rights</strong> attribute, which accepts one or more of the following strings:</p>
<ul>
<li><p>$(DEVICE_READ)</p></li>
<li><p>$(DEVICE_WRITE)</p></li>
<li><p>$(DEVICE_ALL)</p></li>
<li><p>$(DEVICE_EXECUTE)</p></li>
</ul>
<div class="alert">
<strong>Note</strong>  
<p>The product ID GUID must be specified including brackets, for example <code>{263AF644-C573-4e00-BB49-740DD4C69664}</code>.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p><strong>AccessedByService</strong></p></td>
<td><p>Optional. This element is used to specify a service that can access the driver, as well as the rights granted to that service. The service is specified through the <strong>Name</strong> attribute, which accepts a string that is the name of the service. This value must match the name of the service as it was declared in the <strong>Name</strong> attribute of the <strong>Service</strong> element. The rights are specified through the <strong>Rights</strong> attribute, which accepts one or more of the following strings:</p>
<ul>
<li><p>$(DEVICE_READ)</p></li>
<li><p>$(DEVICE_WRITE)</p></li>
<li><p>$(DEVICE_ALL)</p></li>
<li><p>$(DEVICE_EXECUTE)</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## <span id="Service_element"></span><span id="service_element"></span><span id="SERVICE_ELEMENT"></span>Service element


The **Service** element describes a service in the system and is used
for the packaging and configuration of partner services.

The following table describes the attributes of the **Service** element.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Name</strong></p></td>
<td><p>Required. The name of the service. The string is case sensitive.</p></td>
</tr>
<tr class="even">
<td><p><strong>DisplayName</strong></p></td>
<td><p>Optional. The displayable name of the service.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Description</strong></p></td>
<td><p>Optional. A description of the service.</p></td>
</tr>
<tr class="even">
<td><p><strong>Start</strong></p></td>
<td><p>Required. An enumeration value that defines when the service will start. Valid values are the following:</p>
<ul>
<li><p><strong>Demand</strong> – The service starts after the OS has finished booting and the shell is available. Microsoft strongly recommends using this value for services in Windows 10 Mobile wherever possible.</p></li>
<li><p><strong>Auto</strong> – The service starts automatically during system startup.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Required. An enumeration value that defines the service type. Valid values are the following:</p>
<ul>
<li><p><strong>Win32OwnProcess</strong> – A service that runs in its own process.</p></li>
<li><p><strong>Win32ShareProcess</strong> – A shared service that runs in a host process with other services.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p><strong>DependOnService</strong></p></td>
<td><p>Optional. A service on which the service being defined depends.</p></td>
</tr>
<tr class="odd">
<td><p><strong>ErrorControl</strong></p></td>
<td><p>Optional. An enumeration value that defines the severity of the error and the action to take if the service fails to start. Valid values are the following:</p>
<ul>
<li><p><strong>Ignore</strong> –The startup program should ignore the error and continue the startup operation.</p></li>
<li><p><strong>Normal</strong> – The startup program should log the error in the event log but continue the startup operation.</p></li>
<li><p><strong>Severe</strong> – The startup program should log the error in the event log. If the last-known-good configuration is being started, the startup operation continues. Otherwise, the system is restarted with the last-known-good configuration.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p><strong>SvcHostGroupName</strong></p></td>
<td><p>Required for shared services. A unique OEM-defined string that identifies a particular service group. All services shared in the same process must assign the <strong>SvcHostGroupName</strong> attribute to the same value.</p></td>
</tr>
</tbody>
</table>

 

The following table describes the child elements of the **Service**
element.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Element</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Executable</strong></p></td>
<td><p>Required for services that run in their own process. This element defines the service executable through the following four attributes.</p>
<ul>
<li><p><strong>Name</strong> - Optional. The name for the executable on the device. If a name is not specified, the file name in the source path is used.</p></li>
<li><p><strong>Source</strong> – Required. The source path of the service executable to be included in the package. This path can be an absolute or relative path. It is also valid to use macro references in the path.</p>
<div class="alert">
<strong>Note</strong>  
<p>If the executable file does not exist, package generation will fail.</p>
</div>
<div>
 
</div></li>
<li><p><strong>DestinationDir</strong> – Optional. The destination folder on the device for the service executable. This path must start with a globally defined macro for a directory. If this attribute is not specified, the default location for services is used.</p></li>
<li><p><strong>Attributes</strong> – Optional. The file system attributes for this file on the device. The value can be a combination of the following, separated by a space character.</p>
<ul>
<li><p>Archive</p></li>
<li><p>Hidden</p></li>
<li><p>Offline</p></li>
<li><p>ReadOnly</p></li>
<li><p>System</p></li>
<li><p>Temporary</p></li>
<li><p>SparseFile</p></li>
<li><p>NotContentIndexed</p></li>
</ul>
<p>When not specified, a predefined default value is used.</p>
<div class="alert">
<strong>Note</strong>  
<p>The file system might not support all of these attributes.</p>
</div>
<div>
 
</div></li>
</ul></td>
</tr>
<tr class="even">
<td><p><strong>FailureActions</strong></p></td>
<td><p>Optional. This element defines the actions taken on the failure of the service. It has one child element (<strong>Action</strong>) and two attributes (<strong>Command</strong> and <strong>ResetPeriod</strong>).</p>
<p>The <strong>Action</strong> element specifies the action to be performed. At least one <strong>Action</strong> element is required when <strong>FailureActions</strong> is included, and each <strong>Action</strong> element must contain two attributes. The first attribute is <strong>Type</strong>, which is an enumeration value that specifies the type of action to take. The second attribute is <strong>Delay</strong>, which is a non-negative integer that specifies the time, in milliseconds, to wait before performing the action. Valid values for <strong>Type</strong> are the following:</p>
<ul>
<li><p><strong>None</strong> – No action.</p></li>
<li><p><strong>RestartService</strong> – Restart the service.</p></li>
<li><p><strong>RunCommand</strong> – Run a command.</p></li>
</ul>
<p>The following list describes the two attributes of the <strong>FailureActions</strong> element.</p>
<ul>
<li><p><strong>Command</strong> – Optional. The command line of the process for the <strong>CreateProcess</strong> function to execute in response to a failure, when the <strong>RunCommand</strong> attribute is specified through the <strong>Action</strong> element. This process runs under the same account as the services.</p>
<div class="alert">
<strong>Note</strong>  
<p>If the value is NULL, the command is unchanged. If the value is an empty string (&quot;&quot;), the command is deleted and no command is run when the service fails.</p>
</div>
<div>
 
</div></li>
<li><p><strong>ResetPeriod</strong> – Required. The time, in seconds, after which to reset the failure count to zero if there are no failures. Specify INFINITE to indicate that the count should never be reset.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p><strong>Files</strong></p></td>
<td><p>Optional. This element, through its child element <strong>File</strong>, defines supporting files to include with the service. The <strong>File</strong> element has the following four attributes:</p>
<ul>
<li><p><strong>Name</strong> - Optional. The name for the file on the device. If a name is not specified, the file name in the source path is used.</p></li>
<li><p><strong>Source</strong> – Required. The source path of the file to be included in the package. This path can be an absolute or relative path. It is also valid to use macro references in the path.</p>
<div class="alert">
<strong>Note</strong>  
<p>If the file does not exist, package generation will fail.</p>
</div>
<div>
 
</div></li>
<li><p><strong>DestinationDir</strong> – Optional. The destination folder on the device for the file. This path must start with a globally defined macro for a directory. If this attribute is not specified, the default location for files is used.</p></li>
<li><p><strong>Attributes</strong> – Optional. The file system attributes for this file on the device. The value can be a combination of the following, separated by a space character.</p>
<ul>
<li><p>Archive</p></li>
<li><p>Hidden</p></li>
<li><p>Offline</p></li>
<li><p>ReadOnly</p></li>
<li><p>System</p></li>
<li><p>Temporary</p></li>
<li><p>SparseFile</p></li>
<li><p>NotContentIndexed</p></li>
</ul>
<p>When not specified, a predefined default value is used.</p>
<div class="alert">
<strong>Note</strong>  
<p>The file system might not support all of these attributes.</p>
</div>
<div>
 
</div></li>
</ul></td>
</tr>
<tr class="even">
<td><p><strong>RegKeys</strong></p></td>
<td><p>Optional. Specifies registry entries for the service through the child element <strong>RegKey</strong>. For additional information about the <strong>RegKey</strong> element, see [Specifying files and registry entries in a package project file](specifying-files-and-registry-entries-in-a-package-project-file.md).</p></td>
</tr>
<tr class="odd">
<td><p><strong>RequiredCapabilities</strong></p></td>
<td><p>Optional. Specifies platform capabilities required by the service. When used, at least one child <strong>RequiredCapability</strong> element must be provided. The <strong>RequiredCapability</strong> element has one attribute, <strong>CapId</strong>, which specifies a valid platform capability.</p></td>
</tr>
<tr class="even">
<td><p><strong>ServiceDll</strong></p></td>
<td><p>Required for shared services that run in a host executable. Specifies information about the DLL that implements the service. The <strong>ServiceDll</strong> element has the following attributes:</p>
<ul>
<li><p><strong>Source</strong> – Required. The full path of the service DLL on the development computer.</p></li>
<li><p><strong>HostExe</strong> – Required. The full path of the service host executable for the service on the image. For example, &quot;$(runtime.system32)\OEM_SampleHost.exe&quot;.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## <span id="BinaryPartition_element"></span><span id="binarypartition_element"></span><span id="BINARYPARTITION_ELEMENT"></span>BinaryPartition element


The **BinaryPartition** element is used to create binary partition
packages. If a package contains a **BinaryPartition** object, it can
contain no other objects, including other **BinaryPartition** objects.

There is also a special package-level Boolean attribute called
**BinaryPartition**. When this attribute is set, one and only one
**BinaryPartition** element must be added.

The **BinaryPartition** element has only one attribute, **ImageSource**,
which points to a file that contains a binary dump of the target
partition. You must specify the appropriate value for the package-level
**Partition** attribute.

## <span id="ComServer_element"></span><span id="comserver_element"></span><span id="COMSERVER_ELEMENT"></span>ComServer element


The **ComServer** element describes a DLL and all of the COM classes and
related items derived from the DLL. It is designed to simplify how
CLSID-related registry settings are specified. The **ComServer** element
is derived from **OSComponent** and includes three additional child
elements:

-   **Dll**: This element specifies the DLL that exports all the COM
    classes in the **ComServer** object. The path of the DLL will also
    be used for the path stored under the **InprocServer32** registry
    key.

-   **Classes**: This element specifies the classes exported from the
    **Dll** element. It contains multiple **Class** elements, each of
    which can have the following attributes.

    <table>
    <colgroup>
    <col style="width: 50%" />
    <col style="width: 50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Attribute</th>
    <th>Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p><strong>ID</strong></p></td>
    <td><p>Required. A string that specifies the class ID. For example, &quot;{a3079dc1-e685-4e37-af40-057ed6d0e252}&quot;</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>TypeLib</strong></p></td>
    <td><p>Optional. A string that specifies the <strong>TypeLib</strong> class ID.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>AppId</strong></p></td>
    <td><p>Optional. String.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>ProgId</strong></p></td>
    <td><p>Optional. String.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Description</strong></p></td>
    <td><p>Optional. String.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>VersionIndependentProgId</strong></p></td>
    <td><p>Optional. String.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Version</strong></p></td>
    <td><p>Optional. String.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>DefaultIcon</strong></p></td>
    <td><p>Optional. String.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>ThreadingModel</strong></p></td>
    <td><p>Optional. A string that specifies the threading model. Valid values are:</p>
    <ul>
    <li><p>Apartment</p></li>
    <li><p>Free</p></li>
    <li><p>Both</p></li>
    <li><p>Neutral</p></li>
    </ul></td>
    </tr>
    </tbody>
    </table>

     

    In addition to these attributes, you can also specify zero or more
    **RegKey** child elements under a **Class** element. When registry
    information is included here, the built-in macro $(hkcr.clsid)
    (which is mapped to the string
    "HKCR\\Classes\\CLSID\\&lt;*currentClsId*&gt;") can be used to add
    more settings for this class without mentioning the full key name.
    The following example demonstrates the definition of a **Class**
    object.

    ``` syntax
    <Class 
       Id="{2933BF90-7B36-11D2-B20E-00C04F983E60}" 
       Version="1.0" 
       TypeLib="{D63E0CE2-A0A2-11D0-9C02-00C04FC99C8E}" 
       ThreadingModel="Both" 
       ProgId="Microsoft.XMLDOM.1.0" 
       VersionIndependentProgId="Microsoft.XMLDOM" 
       Description="XML DOM Document">

       <RegKey KeyName="$(hkcr.clsid)\SideBySide">
          <RegValue Name="RefCount" Type="REG_DWORD" Value="00000001" />
          <RegValue Name="Version30RefCount" Type="REG_DWORD" Value="00000001" />
       </RegKey>
       <RegKey KeyName="$(hkcr.clsid)\VersionList">
          <RegValue Name="3.0" Type="REG_EXPAND_SZ" 
             Value="%SystemRoot%\System32\msxml3.dll" />
        </RegKey>
    </Class>
    ```

-   **Interfaces**: This element contains a list of **Interface**
    elements that describe the interfaces implemented by the
    **ComServer** object. Similarly to **Class** elements, the following
    attributes and zero or more **RegKey** child elements can be
    specified.

    <table>
    <colgroup>
    <col style="width: 50%" />
    <col style="width: 50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Attribute</th>
    <th>Definition</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p><strong>ID</strong></p></td>
    <td><p>Required. A string that specifies the class ID. For example, &quot;{a3079dc1-e685-4e37-af40-057ed6d0e252}&quot;</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>TypeLib</strong></p></td>
    <td><p>Optional. String that specifies the <strong>TypeLib</strong> class ID.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Name</strong></p></td>
    <td><p>Optional. String.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>ProxyStubClsid</strong></p></td>
    <td><p>Optional. String.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>ProxyStubClsid32</strong></p></td>
    <td><p>Optional. String.</p></td>
    </tr>
    </tbody>
    </table>

     

    For the **Interface** element, there is a built-in macro $(hkcr.iid)
    that maps to "HKCR\\Classes\\Interface\\&lt;*interfaceId*&gt;". The
    following example demonstrates the definition of an **Interface**
    object.

    ``` syntax
    <Interface 
       Id="{D4D4A0FC-3B73-11D1-B2B4-00C04FB92596}" 
       TypeLib="$(TypeLibId)" 
       Name="IXMLAttribute" 
       ProxyStubClsId="{00020424-0000-0000-C000-000000000046}" 
       ProxyStubClsId32="$(ProxyStubClsId)">
       <RegKey KeyName="$(hkcr.iid)\TypeLib">
          <RegValue Name="Version" Type="REG_SZ" Value="3.0" />
       </RegKey>
    </Interface>
    ```

    The default device directory for this object is $(runtime.system32).

## <span id="SettingsGroup_element"></span><span id="settingsgroup_element"></span><span id="SETTINGSGROUP_ELEMENT"></span>SettingsGroup element


A **SettingsGroup** element represents a settings group in the
customization answer file. Managed Centralized Settings Framework (MCSF)
provides a standard way to describe settings that are customizable
within packages.

## <span id="Custom_OEM_package_metadata"></span><span id="custom_oem_package_metadata"></span><span id="CUSTOM_OEM_PACKAGE_METADATA"></span>Custom OEM package metadata


OEMs have the ability to insert custom XML metadata into packages
through the package project XML file (.pkg.xml). When packages are
generated, this XML data is written to a separate file (.meta.xml)
inside of the package. When the package is added to the image, the
custom metadata will be available on the device.

### <span id="Adding_custom_metadata_to_package_files"></span><span id="adding_custom_metadata_to_package_files"></span><span id="ADDING_CUSTOM_METADATA_TO_PACKAGE_FILES"></span>Adding custom metadata to package files

The **CustomMetadata** element is used to add custom metadata under the
Package node. The XML within CustomMetadata is a series of key-value
pairs using the **Field** element as shown below.

``` syntax
<Package>
  <CustomMetadata>
    <Field Name="Key">Value</Field>
  </CustomMetadata>
  <Macros>
  </Macros>
  <Capabilities>
  </Capabilities>
  <Components>
  </Components>
  <Authorization>
  </Authorization>
</Package>
```

PkgGen writes out the content of CustomMetadata tag to the .meta.xml
file in the package. The layout of this file is nearly identical to the
input.

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<CustomMetadata xmlns="urn:Microsoft.WindowsPhone/PackageSchema.v8.00">
  <Field Name="Key">Value</Field>
</Field>
</CustomMetadata>
```

The output metadata file is included in the package, and is installed on
the phone in \\Windows\\Packages\\CustomMetadataFiles, as
*PackageName*.meta.xml. This folder is a sibling of the DsmFiles folder
that is used for packages.

The packaging and device update tools treat the .meta.xml file like any
other file on the phone.

### <span id="Walkthrough___adding_custom_metadata"></span><span id="walkthrough___adding_custom_metadata"></span><span id="WALKTHROUGH___ADDING_CUSTOM_METADATA"></span>Walkthrough – adding custom metadata

Use the following process to add custom data to an existing package.

**To add custom data to an existing package**

1.  Locate the desired package project XML file and open it in a text
    editor such as Notepad.

2.  Add the desired metadata tags right after the &lt;Package&gt;
    element. For example, to track a targeted version, model, and
    development team, add the following metadata value pairs.

    ``` syntax
    <CustomMetadata>
        <Field Name="TargetVersion">8.1</Field>
        <Field Name="PrimaryPhoneModel">DCD6000</Field>
        <Field Name="DevelopmentTeam">Alpha Team</Field>
      </CustomMetadata>
    ```

3.  Use PkgGen to generate a package. For more info, see [Creating packages](creating-packages.md).

### <span id="Walkthrough___viewing_custom_metadata"></span><span id="walkthrough___viewing_custom_metadata"></span><span id="WALKTHROUGH___VIEWING_CUSTOM_METADATA"></span>Walkthrough – viewing custom metadata

Use the following process to confirm that the metadata file is present
in the generated package.

**To confirm that the metadata file is in the
generated package**

1.  On a Windows PC, locate the generated package and add a ".cab" file
    extension to the package name.

2.  Double-click the renamed file to view files that are stored in the
    .cab file.

3.  The package files are renamed in the .cab file. To locate the
    filename of the metadata file that will be used on the device, click
    the `man.dsm.xml` file, extract it, and open it. One of the file
    entries will show the .meta.xml package name and the .cab file name
    that is used. In this example, `4_Contoso.xml` is the name of the
    metadata XML file.

    ``` syntax
    …
       <FileEntry>
          <FileType>Regular</FileType>
          <DevicePath>\Windows\Packages\CustomMetadata\Contoso.TestApp.meta.xml</DevicePath>
          <CabPath>4_Contoso.xml</CabPath>
          <Attributes>Normal</Attributes>
        </FileEntry>
    ```

4.  Extract the `4_Contoso.xml`and open it. Confirm that it contains the
    expected metadata.

    ``` syntax
    <?xml version="1.0" encoding="utf-8"?>
    <CustomMetadata xmlns="urn:Microsoft.WindowsPhone/PackageSchema.v8.00">
      <Field Name="TargetVersion">8.1</Field>
      <Field Name="PrimaryPhoneModel">DCD6000</Field>
      <Field Name="DevelopmentTeam">Alpha Team</Field>
    </CustomMetadata>
    ```

## <span id="related_topics"></span>Related topics


[Creating packages](creating-packages.md)


 

 

[Send comments about this topic to
Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phPackaging\p_phPackaging%5D:%20Specifying%20components%20in%20a%20package%20project%20file%20%20RELEASE:%20(11/14/2017)&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




