---
author: joshbax-msft
title: Custom Extension XML File Verification (TCPBIDI.XSD)
description: Custom Extension XML File Verification (TCPBIDI.XSD)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 06aae54a-b43a-4e81-bdf1-9e4454210f4f
---

# Custom Extension XML File Verification (TCPBIDI.XSD)


This automated test validates a printer driver's standard port monitor bidirectional (bidi) extension file to make sure that the file is well formed and syntactically correct.

The test validates the custom extension file. The test deletes any XML contents that it finds to be invalid.

The test will determine whether the printer driver has a bidi extension file that is defined for the TCP/IP port monitor (TCPMon). If the file is defined, the test loads and verifies the file.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.autoConfiguration</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
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

## More information


An IHV can customize TCPMon by creating a bidi extension file. This is an XML file that defines new schemas that are specific to the IHV driver by using constructs of the TCPMon XSD file. The Custom Extension XML File Validation test validates the custom extension file against the XSD file.

 

 






