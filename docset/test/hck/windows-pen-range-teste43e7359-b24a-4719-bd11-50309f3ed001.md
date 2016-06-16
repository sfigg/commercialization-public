---
author: joshbax-msft
title: Windows Pen Range Test
description: Windows Pen Range Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 396fc7e2-2988-47a0-9691-2b303293254e
---

# Windows Pen Range Test


This test verifies the Windows® pen range.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Digitizer.Pen.PenRange System.Client.Digitizer.Touch.ColdBootLatency</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Digitizer Testing Prerequisites](digitizer-testing-prerequisites.md).

The indirect nature of pen input requires that the user is confident of the pen position before delivering a tap or beginning to write. The ability to view the position of the cursor as it floats above the surface fulfills this requirement.

It is also important to filter out incidental touch input while a pen is present on the screen. For this to work in a natural and non-intrusive manner, the operating system must be informed before contact is made.

To complete this test, place a finger on the Windows desktop screen and drag to create a selection area. Use a precise measuring device to lower the pen to the specified distance and verify that the selection box is dismissed.

**Note**  
If the device under test is an external pen digitizer or if the device does not support touch, skip the preceding steps and select **Yes**.

 

## Troubleshooting


For troubleshooting information, see [How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md#hiderrors).

## Related topics


[How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md)

 

 







