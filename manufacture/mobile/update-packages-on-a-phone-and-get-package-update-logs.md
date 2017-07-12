---
title: Update packages on a device and get package update logs
description: Update packages on a device and get package update logs
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d0594281-56f4-4676-9d00-19b6910ab50f
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Update packages on a device and get package update logs


The Windows Driver Kit (WDK) includes a tool for updating packages on a device (IUTool.exe) and a tool for getting package update logs from a device (GetDULogs.exe). These tools are available under %WPDKCONTENTROOT%\\Tools\\bin\\i386.

## Using IUTool.exe to update packages on a device


IUTool.exe is a command-line tool that can be used to update an existing package on a device or to add a new package to a device. IUTool.exe must be used in a command-line window that is opened as an administrator. The command-line syntax for IUTool.exe is the following.

``` syntax
IUTool -p <path to packages>
```

The following table describes the command-line parameters for IUTool.exe.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>-p</strong><em>path to packages</em></p></td>
<td><p>Specifies one or more packages to update on the device or to add to the device. The <em>path to packages</em> parameter can have the following formats:</p>
<ul>
<li><p>To update or add a single package, specify the full path to the package on the development computer.</p></li>
<li><p>To update or add multiple packages, specify a semicolon-delimited list of packages on the development computer. For example:</p>
<pre class="syntax" space="preserve"><code>IUTool -p C:\ContosoPackages\Contoso.Device.SampleDriver.spkg;C:\ContosoPackages\Contoso.Device.SampleApplication.spkg</code></pre></li>
<li><p>To update or add an entire directory of packages, specify the path to the directory. For example:</p>
<pre class="syntax" space="preserve"><code>IUTool -p C:\ContosoPackages</code></pre></li>
</ul>
<p></p></td>
</tr>
</tbody>
</table>

 

### Package versioning

If the specified package already exists on the device, the new version of the package must have a higher version than the package currently on the device or the update will fail. To specify the version for a package, use the **/version** command-line parameter for PkgGen.exe when generating the package. For more information, see [Command-line arguments for package generator](https://msdn.microsoft.com/library/windows/hardware/dn756636).

## Using GetDULogs.exe to get package update logs from a device


GetDULogs.exe is a command-line tool that can be used to get package update logs from a device. GetDULogs.exe must be used in a command-line window that is opened as an administrator. The command-line syntax for GetDULogs.exe is the following.

``` syntax
GetDULogs -o <output file path>
```

The following table describes the command-line parameters for GetDULogs.exe.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>-o</strong><em>output file path</em></p></td>
<td><p>The full path of the file on the development computer to write the log information to.</p></td>
</tr>
</tbody>
</table>

 

 

 






