---
title: IUTool.exe Update packages on a device
description: The Windows Driver Kit (WDK) includes a tool for updating packages on a device or to add a new package to a device. (IUTool.exe). This tool is available under WPDKCONTENTROOT \\Tools\\bin\\i386.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 29B7436A-1F6E-41AF-BBBD-5FBB59669B77
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# IUTool.exe: Update packages on a device


The Windows Driver Kit (WDK) includes a tool for updating packages on a device or to add a new package to a device. (IUTool.exe). This tool is available under %WPDKCONTENTROOT%\\Tools\\bin\\i386.

## Using IUTool.exe to update packages on a device


IUTool.exe must be used in a command-line window that is opened as an administrator. The command-line syntax for IUTool.exe is the following.

```
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
<td><p><em>-p path to packages</em></p></td>
<td><p>Specifies one or more packages to update on the device or to add to the device. The path to packages parameter can have the following formats:</p>
<ul>
<li>To update or add a single package, specify the full path to the package on the development computer.</li>
<li><p>To update or add multiple packages, specify a semicolon-delimited list of packages on the development computer. For example:</p>
<pre class="syntax" space="preserve"><code>IUTool -p C:\ContosoPackages\Contoso.Device.SampleDriver.spkg;C:\ContosoPackages\Contoso.Device.SampleApplication.spkg</code></pre></li>
<li><p>To update or add an entire directory of packages, specify the path to the directory. For example:</p>
<pre class="syntax" space="preserve"><code>IUTool -p C:\ContosoPackages</code></pre></li>
</ul></td>
</tr>
</tbody>
</table>

 

### Package versioning

If the specified package already exists on the device, the new version of the package must have a higher version than the package currently on the device or the update will fail. To specify the version for a package, use the /version command-line parameter for PkgGen.exe when generating the package. For more information, see [Command-line arguments for package generator](https://msdn.microsoft.com/library/windows/hardware/dn756636).

### Using GetDULogs.exe to get package update logs from a device

Use GetDULogs.exe to get package update logs from a device.

```
GetDULogs -o <output file path>
```

For more info, see [GetDULogs: Get package update logs](update-packages-on-a-phone-and-get-package-update-logs.md).

 

 






