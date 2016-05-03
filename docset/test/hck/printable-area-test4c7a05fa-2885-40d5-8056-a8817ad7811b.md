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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Printable%20Area%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




