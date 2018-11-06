---
title: Specifying files and registry entries in a package project file
description: Specifying files and registry entries in a package project file
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6ddbe251-3b90-411a-88ab-e20b53d984d1
---

# Specifying files and registry entries in a package project file


Because files and registry entries are a key component of each object in
a package, it is important to understand how files and registry entries
are specified in package project files.

## <span id="Files"></span><span id="files"></span><span id="FILES"></span>Files


To include a file, use the **File** element, which is a child of the
**Files** element. The following XML example shows the schema definition
of the **File** element.

``` syntax
<xs:complexType name="fileType">
   <xs:attribute name="Name" type="xs:string" use="optional"/>
   <xs:attribute name="Source" type="xs:string" use="required"/>
   <xs:attribute name="DestinationDir" type="DevicePathType" use="optional"/>
   <xs:attribute name="Attributes" type="attributesType" use="optional" />
   <xs:attribute name="EmbeddedSigningCategory" type="xs:string" use="optional" />
</xs:complexType>
```

This element has the following attributes.

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
<td><p><strong>Source</strong></p></td>
<td><p>Required. Specifies the source path of the file to be included in to the package. This path can be an absolute or relative path. It is also valid to use macro references within the path.</p>
<div class="alert">
<strong>Note</strong><br/><p>The file must exist, or package generation will fail.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td><p><strong>DestinationDir</strong></p></td>
<td><p>Optional. Specifies the destination folder on the device for the specified file. This path must start with a globally defined macro for a folder. If this attribute is not specified, the default location depends on the owned object.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Name</strong></p></td>
<td><p>Optional. Specifies the name for this file on the device. If a name is not specified, the file name in the source path is used.</p></td>
</tr>
<tr class="even">
<td><p><strong>Attributes</strong></p></td>
<td><p>Optional. Specifies the file system attributes for this file on the device. This value can be a combination of the following separated by a space character</p>
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
<strong>Note</strong><br/><p>Although the above attributes can be specified, the file system might not support all of them.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td><p><strong>EmbeddedSigningCategory</strong></p></td>
<td><p>Optional. Specifies the type of code signing that should be used for the file during package generation.</p>
<p>The string that is provided for EmbeddedSigningCategory is passed unchanged to the sign.cmd tool that is used in package generation. For info on the available signing options for sign.cmd, see <a href="https://msdn.microsoft.com/library/windows/hardware/dn789217.aspx" data-raw-source="[Sign binaries and packages](https://msdn.microsoft.com/library/windows/hardware/dn789217.aspx)">Sign binaries and packages</a>.</p>
<p>For example, to specify that HAL binaries should be signed using the –oem and –hal option, add the EmbeddedSigningCategory attribute as shown.</p>
<pre class="syntax" data-space="preserve"><code>&lt;Files&gt;
  &lt;File Source=&quot;MyHalFileLocation\HalExt1.dll&quot; EmbeddedSigningCategory=&quot;-oem -hal&quot; /&gt; 
  &lt;File Source=&quot;MyHalFileLocation\HalExt2.dll&quot; EmbeddedSigningCategory=&quot;-oem -hal&quot; /&gt; 
  &lt;File Source=&quot;MyHalFileLocation\HalExt3.dll&quot; EmbeddedSigningCategory=&quot;-oem -hal&quot; /&gt; 
&lt;/Files&gt;</code></pre>
<p>For general information about code signing, see <a href="https://msdn.microsoft.com/library/windows/hardware/dn756634.aspx" data-raw-source="[Code signing](https://msdn.microsoft.com/library/windows/hardware/dn756634.aspx)">Code signing</a>.</p></td>
</tr>
</tbody>
</table>



## <span id="Registry_keys_and_values"></span><span id="registry_keys_and_values"></span><span id="REGISTRY_KEYS_AND_VALUES"></span>Registry keys and values


InWindows 10 Mobile, registry keys are instead specified in the package
project XML file by using the **RegKey** element.

The **RegKey** element has only one required attribute, **KeyName**,
which is the full path of the registry key. **KeyName** must start with
a globally defined macro, but it does not require the trailing slash at
the end of the key name.

Under the **RegKey** element can be zero or more **RegValue** elements.
Each of these elements represents a value under the registry key. The
**RegValue** element has the following attributes.

**Note**  

The MUI\_SZ registry key type has been replaced with the REG\_SZ or
REG\_EXPAND\_SZ type. Developers should use either of these and change
the code to use the RegLoadMUIString function to do the same. The format
of the value is "@\[path\]\\dllname,-strID" and an example would be
"@%SystemRoot%\\System32\\msxml3r.dll,-2". This change occurred because
the Windows kernel does not support a MUI\_SZ type.



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
<td><p><strong>Name</strong></p></td>
<td><p>Required. String that specifies the name of the value. The symbol “@” can be used to specify the default value. Additionally, macros can be used in the attribute value.</p></td>
</tr>
<tr class="even">
<td><p><strong>Value</strong></p></td>
<td><p>Required. String that represents the value of the key. This attribute is dependent on the value type.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Required. The type of the value. The following list shows the possible type values and the required format for the paired <strong>Value</strong> attribute.</p>
<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th>Type value</th>
<th>Definition</th>
<th>Value attribute</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>REG_SZ</p></td>
<td><p>A plain text string.</p>
<div class="alert">
<strong>Note</strong><br/><p>A NULL terminator character is appended to the end of this string automatically. If for some reason you don’t want the null terminator, you must use REG_HEX with a raw hex dump.</p>
</div>
<div>

</div></td>
<td><p>“test value”</p></td>
</tr>
<tr class="even">
<td><p>REG_MULTI_SZ</p></td>
<td><p>Multiple text strings separated by ‘;’. <em>See note.</p></td>
<td><p>“value1;value2;value3”</p></td>
</tr>
<tr class="odd">
<td><p>REG_DWORD</p></td>
<td><p>32-bit number represented in hex format, with no “0x” prefix.</p></td>
<td><p>“1234ABCD”</p></td>
</tr>
<tr class="even">
<td><p>REG_QWORD</p></td>
<td><p>64-bit number in hex format, with no “0x” prefix.</p></td>
<td><p>“1234ABCD1234ABCD”</p></td>
</tr>
<tr class="odd">
<td><p>REG_BINARY</p></td>
<td><p>Byte array in hex format, separated by ‘,’, with no “0x” prefix.</p></td>
<td><p>“1A,2B,3D”</p></td>
</tr>
<tr class="even">
<td><p>REG_EXPAND_SZ</p></td>
<td><p>Same as REG_SZ.</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>REG_HEX</p></td>
<td><p>A byte array (same as REG_BINARY) with a type prefix in the form of “hex(x):” where x is the hex number for the type.</p></td>
<td><p>“hex(7):1A,2B,3D”</p></td>
</tr>
</tbody>
</table>
<p> </p>
<div class="alert">
<strong>Note</strong><br/><p></em> Given that the ‘;’ character is the delimiter for REG_MULTI_SZ, the ‘;’ character cannot be used inside the string because it would be parsed as the separator of two strings. A workaround for this is to use the REG_HEX type instead and specify the string with the hex dump, e.g.: “hex(7):&lt;exact hex dump of the string&gt;”.</p>
</div>
<div>

</div></td>
</tr>
</tbody>
</table>



## <span id="file_and_registry_key_groups"></span><span id="FILE_AND_REGISTRY_KEY_GROUPS"></span>File and registry key groups, language/resolution expansion, and CPU filtering


For most objects, **File** and **RegKey** elements cannot be directly
specified. Instead, they must be grouped under the **Files** and
**RegKeys** elements. A **Files** or **RegKeys** element must have at
least one **File** or **RegKey** element, respectively.

Both **Files** and **RegKeys** have some special attributes used for
language/resolution expansion and CPU filtering.

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
<td><p><strong>CpuFilter</strong></p></td>
<td><p>Optional. Restricts the elements (<strong>File</strong> or <strong>RegKey</strong>) to a specific CPU architecture. Currently this attribute supports the following two values:</p>
<ul>
<li><p>ARM</p></li>
<li><p>X86</p></li>
</ul>
<p>The attribute is case sensitive and values must be specified in uppercase letters.</p>
<div class="alert">
<strong>Note</strong><br/><p>This attribute can be used along with the <strong>Language</strong> or <strong>Resolution</strong> attribute.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td><p><strong>Language</strong></p></td>
<td><p>Optional. Indicates to the package generator that the contents under this group are language specific and must be distributed to the corresponding language package. This attribute can be specified with the following values:</p>
<ul>
<li><p>“<em>”: The “</em>” character means that the elements under this group are language specific and are supported for every language that is being built. For each language built, the contents are inserted into the correspondent language packages. To target different files for each language, you can use the built-in global macro $(LANGID), which is expanded to the language identifier of the target language package.</p></li>
<li><p>“(en-US;zh-CN)”: This syntax is used to indicate to the package generator that the contents are language specific, but are only available for the given languages. The contents will then be inserted only into the specified language packages.</p></li>
<li><p>“!(en-US;zh-CN)”: A ‘!’ in front of the language list explicitly excludes the listed languages from receiving the contents. The contents will not be inserted to those listed languages.</p></li>
</ul>
<div class="alert">
<strong>Note</strong><br/><p>This attribute can be used along with the <strong>CpuFilter</strong>, but it cannot be used at the same time as <strong>Resolution</strong>.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td><p><strong>Resolution</strong></p></td>
<td><p>Optional. This attribute is similar in usage to the <strong>Language</strong> attribute, with the exception that it requires the use of a resolution identifier instead of a language identifier. A resolution identifier is in the form of “&lt;width&gt;x&lt;height&gt;”, for example “320x240”. A built-in macro $(RESID) is available for the use of all child elements.</p>
<div class="alert">
<strong>Note</strong><br/><p>This attribute can be used along with the <strong>CpuFilter</strong>, but it cannot be used at the same time as <strong>Language</strong>.</p>
</div>
<div>

</div></td>
</tr>
</tbody>
</table>







[Send comments about this topic to
Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phPackaging/p_phPackaging%5D:%20Specifying%20files%20and%20registry%20entries%20in%20a%20package%20project%20file%20%20RELEASE:%20(11/14/2017)&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




