---
author: joshbax-msft
title: PrintTicket Conformance Test
description: PrintTicket Conformance Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 85d9bb72-5058-45f4-a063-ca9ffeee1ec8
---

# PrintTicket Conformance Test


This automated test uses a conformance tool (PTConform.exe) that verifies the validity of **PrintTicket** and **PrintCapabilities** documents. PTConform verifies that a particular **PrintTicket** and **PrintCapabilities** API syntactically and structurally conforms to the public **PrintSchema** specification.

The **PrintSchema** specification describes an XML-based format for expressing and organizing a large set of properties that describe either a job format or capabilities of a print queue in a hierarchically structured manner. The **PrintSchema** specification has well-defined public framework elements and public keywords.

The **PTConform** test tool treads through an XML document and tests each node to make sure that the node is a valid public framework element. After the test verifies the framework element, the test determines whether the framework element defines any public keyword element. If so, the test determines whether the keyword conforms to the **PrintSchema** specification.

**Note**  
If a framework node contains a printer driver's private namespace keyword instead of a public keyword, the test skips keyword validation for that node.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.printTicket</p>
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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

**Note**  
The results of the test are logged in the PTConform.log or PTConform.xml log file depending on the log type that the command-line parameters specify.

 

 

 






