---
author: joshbax-msft
title: Print Driver Rendering Test (PGremlin2)
description: Print Driver Rendering Test (PGremlin2)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3708320b-b0c3-4e77-a06c-db237e2b3582
---

# Print Driver Rendering Test (PGremlin2)


This manual test performs rendering tests on a print driver. This test produces numerous pages of output that have shapes, gradient fills, and alpha blends. The test also prints and tests some complex fonts.

**Note**  
Users must validate the print rendering manually by looking at the physical paper output from the printer.

 

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
<td><p>~10 minutes</p></td>
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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

## More information


PGremlin2 performs rendering tests on a print driver. The rendering tests range from font tests to text extent tests. The tests include printing bitmaps through the print driver. All print drivers must pass this test. The test fails if the print driver causes any sort of exception during the rendering.

PGremlin2 exercises the following Microsoft DirectDraw® functions:

-   TransparentBlt

-   GradientFill

-   PlgBlt

-   StretchBlt

-   AlphaBlend

-   SetDIBBitsToDevice

-   PatBlt

-   FillPath

-   StrokeAndFillPath

 

 






