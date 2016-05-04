---
author: joshbax-msft
title: Printable Area Test
description: Printable Area Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 74ff3941-be0f-43b1-852f-0a4c0a77674d
---

# Printable Area Test


This automated test verifies that a print driver can output lines to the outer edge of the printable area.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.printRegions</p>
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

This test fails if any of the following problems occur:

-   The test does not produce output.

-   The debugger breaks in.

-   The test produces incorrect output.

-   The paper size measurements are incorrect

-   The log file indicates a failure.

**Note**  
Paper and print location measurements can vary by one-sixteenth (1/16) of an inch.

 

## More information


The Printable Area test generates two single sheets, a portrait sheet and a landscape sheet). You should run this test on different paper sizes, such as A4, Letter, Envelope 10, and A5.

Check the following points in the print area test:

-   Four separate lines are drawn. Each one runs beyond the clipped region. (Each one must be 2 inches larger than the HORZRES and VERTRES properties produce).

-   Diagonals are drawn in this rectangle to identify the page center and to facilitate debugging if the reported printable region is incorrect.

-   A second rectangle is drawn to be 1 inch from the physical edge of the page.

-   A 2-inch square is centered horizontally on the page, 1 inch from the top printable region.

-   A line of text is added to indicate the paper size and page orientation and should be centered on the page's printable area.

 

 






