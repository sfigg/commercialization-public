---
title: Command-line arguments for package generator
description: Command-line arguments for package generator
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 413fd04e-f1a1-4a4a-8305-59fd6bfc2b64
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
---

# Command-line arguments for package generator


The package generator tool (PkgGen.exe) is used to create a package from
a package project XML file. The tool is designed to process one project
XML file at a time and by default is located at
%WPDKCONTENTROOT%\\Tools\\bin\\i386. The following section outlines the
command-line arguments.

**Warning**  

Package generation requires catalog files to be signed. To perform this
task, a certificate must be specified for use with pkggen.exe. If a
certificate is not provided, usage of pkggen.exe will return the
following error message:
`Failed to sign package integrity catalog file`. To specify a signing
certificate for pkggen.exe, follow the steps in [Set up the signing
environment](https://msdn.microsoft.com/library/windows/hardware/dn756804.aspx) and [Sign
binaries and packages](https://msdn.microsoft.com/library/windows/hardware/dn789217.aspx).

 

**Usage**

**PkgGen** \[Project File\] \[Options\] **/config:**\[Configuration
File\]

**Note**  

When using the package generator tool, make sure to use quote marks for
input paths that contain spaces. For example, if you defined a
%WPDKCONTENTROOT% environment variable that is set to C:\\Program Files
(x86)\\Windows Kits\\10, then the invocation of package generator should
be `"%WPDKCONTENTROOT%\tools\bin\i386\pkggen.exe"` with a leading and
ending quote mark. This guidance should also be followed for the path to
the project file and the configuration file. For any parameter values,
such as variables, that start with the `/<param_name>:` syntax make sure
to quote the entire string after the : symbol if there are any spaces.
An example would be
`/variables:"WPDKCONTENTROOT=C:\Program Files (x86)\Windows Kits\10;MyVar=TestValue"`.

 

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Usage</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Project File]</p></td>
<td><p>Path to the project XML file.</p></td>
<td><p>Required</p></td>
</tr>
<tr class="even">
<td><p><strong>/output</strong>:[Output Directory]</p></td>
<td><p>Specifies the output directory for the processed package. By default this value is &quot;.&quot;, meaning the current directory.</p></td>
<td><p>Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>/version:</strong>[Version String]</p></td>
<td><p>Specifies the version of the package using the format &quot;&lt;major&gt;.&lt;minor&gt;.&lt;hotfix&gt;.&lt;build&gt;&quot;. By default this value is &quot;0.0.0.0&quot;. <strong>Note</strong>: The version field must be incremented whenever a package is changed.</p></td>
<td><p>Optional</p></td>
</tr>
<tr class="even">
<td><p><strong>/build:</strong>[Build Type]</p></td>
<td><p>Specifies the build type of the operating system image the package is being created for (FRE or CHK). By default FRE is used.</p></td>
<td><p>Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>/cpu:</strong>[CPU Type]</p></td>
<td><p>Specifies the platform CPU type for the package (ARM or x86). By default, ARM is used.</p></td>
<td><p>Optional</p></td>
</tr>
<tr class="even">
<td><p><strong>/language:</strong>[Language ID List]</p></td>
<td><p>Specifies a list of &quot;;&quot; separated language identifiers for which language packages should be generated. By default this list is empty.</p></td>
<td><p>Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>/resolution:</strong>[Resolution ID list]</p></td>
<td><p>Specifies a list of &quot;;&quot; separated resolution identifiers for which resolution packages should be generated. By default this list is empty.</p></td>
<td><p>Optional</p></td>
</tr>
<tr class="even">
<td><p><strong>/config:</strong>[Configuration File]</p></td>
<td><p>Specifies the path to the global macro file PkgGen.cfg.xml that is included with the Windows Driver Kit (WDK). By default, this file is located at %ProgramFiles(x86)%\Window Kits\10\Tools\bin\i386 (or the corresponding path under %ProgramFiles% on computers running a 32-bit version of Windows).</p></td>
<td><p>Required</p></td>
</tr>
<tr class="odd">
<td><p><strong>/variables:</strong>[Variable Definition List]</p></td>
<td><p>Specifies additional variables for use during package project file processing. The format is &quot;[variable name]=[value];[variable 2 name]=[value];&quot;.</p></td>
<td><p>Optional</p></td>
</tr>
<tr class="even">
<td><p><strong>{+|-}diagnostic</strong></p></td>
<td><p>Precede with either &quot;+&quot; or &quot;-&quot; to indicate true or false. This option enables debugging messages, which are disabled by default. Syntax for enabling debugging messages would be <code>+diagnostic</code>.</p></td>
<td><p>Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>{+|-}compress</strong></p></td>
<td><p>Precede with either &quot;+&quot; or &quot;-&quot; to indicate true or false. The default is false. This value allows for the compression of the package. When compress is true, the package generator tool run time increases, but the package is optimized for storage size. This setting has no impact on imaging.</p></td>
<td><p>Optional</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to
Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phPackaging\p_phPackaging%5D:%20Command-line%20arguments%20for%20package%20generator%20%20RELEASE:%20(11/14/2017)&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




