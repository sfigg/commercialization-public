---
author: joshbax-msft
title: XPS Print API Set Test (MANUAL)
description: XPS Print API Set Test (MANUAL)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a900c826-90dd-4878-b641-929a16c1dc19
---

# XPS Print API Set Test (MANUAL)


This manual test uses the public print API to print a representative sample of XPS rendering features.

This test covers business documents, text, graphics, composition, and advanced XPS high-fidelity graphics. The test applies to XPS Print Pipeline-based print drivers and to v3 print drivers such as Unidrv and Postscript drivers. The test uses the XgcPrint7 tool to exercise the WLK printing capabilities that are exposed from the XPS Print API.

To run this test manually, follow these steps:

1.  Run the test job, and verify that the test produces a pass result.

2.  Gather the print output and compare the output to reference master images. Verify all of the following:

    -   All content has been printed.

    -   All pages are present.

    -   All text appears consistent (that is, fonts are the same).

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
<td><p>~30 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

Make sure that a print queue is installed on the target computer and that the logged on user has access to print to that printer.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

 

 






