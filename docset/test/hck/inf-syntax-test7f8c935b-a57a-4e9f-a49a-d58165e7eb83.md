---
author: joshbax-msft
title: INF Syntax Test
description: INF Syntax Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f9da8426-ad45-43bc-88f3-b052a841d24a
---

# INF Syntax Test


This automated test checks the syntax in INF files for printer and scanner device drivers. The INFGate tool runs this test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.configurationFiles Device.Imaging.Printer.Base.DriverCategory Device.Imaging.Printer.Base.infFile</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

In addition, if the device is using an in-box driver, you’ll need to specify "/MS" for the "Inbox" parameter.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

## More information


INFGate is the tool that checks syntax, format, and validity for both printing and imaging INF files. You can run the tool on an installed printer or on a stand-alone INF file. If you select an installed printer, the tool looks for an INF file for the specified printer, and then runs.

**Creating valid INFs for virtual printers**

Virtual printers must specify a null hardware ID. To specify a null hardware ID, in the models-section-name of the device's INF file, add a second comma between the install-section-name and the compatible-id.

\[models-section-name\]

device-description=install-section-name,,\[compatible-id\]

 

 






