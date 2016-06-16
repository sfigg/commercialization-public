---
author: joshbax-msft
title: XPS Content Rendering Test 1
description: XPS Content Rendering Test 1
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f6f31b7e-6360-4774-8a02-93f42177bc23
---

# XPS Content Rendering Test 1


This automated test loads a valid XML Paper Specification (XPS) document and prints the document to the specified printer.

**Note**  
This test cannot run on Windows Server 2008 unless you first install Microsoft .NET Framework version 3.0.

 

By using this test tool, you can generate jobs to send to a printer or to XPS serialization. This tool includes options for validating the XPS that the test produces or for selecting particular .xaml files. The tool exits after the tool prints each file once.

**Note**  
This job behaves just like the [XPS Content Rendering Test 2](xps-content-rendering-test-26ddbf000-819d-4f93-bba7-5c83cd035f2e.md), except that the job uses a different set of XPS files.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.XPS.XPS</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

If a test failure occurs, log a relevant stack trace. Note the following:

-   Exceptions that have LoadObjectFromFile in the stack usually indicate problems with setup. Make sure that all necessary files have been copied for the test, and that WinFX is correctly installed.

-   Exceptions that have XpsDocumentWriter.Write in the stack usually indicate problems with printing. If the exception is a ComException instance, make note of that in the HResult field.

 

 






