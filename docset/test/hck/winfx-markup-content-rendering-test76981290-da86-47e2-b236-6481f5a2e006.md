---
author: joshbax-msft
title: WinFX Markup Content Rendering Test
description: WinFX Markup Content Rendering Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e7842080-1281-453b-be0f-d7abbc24e949
---

# WinFX Markup Content Rendering Test


This automated test sends an XPS file to the test printer by using **XpsDocumentWrite.Write(filename)** API. The device fails if the test detects an exception.

This automated test loads eight WinFX XAML files and produces output to the specified printer. Seven of these XAML files each produce one letter-sized page of output. The eighth XAML file, ThreePageDoc.xaml, produces three pages of letter-sized output. Therefore, this test produces a total of ten pages of printed output.

**Note**  
This test cannot run on Windows Server 2008 or the 64-bit version of Windows 7 without first installing Microsoft .NET Framework version 3.0.

 

With this test tool, you can generate jobs to send to a printer or XPS serialization. The test tool includes options for validating the XPS that is produced, or selecting particular XAML files. This tool exits after it prints each file one time.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.rendering</p>
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

In addition, this test requires the following software:

-   Microsoft® .NET Framework 3.0

**Note**  
Microsoft .NET Framework 3.0 is required when testing Windows Server 2008 or the 64-bit version of Windows 7.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

 

 






