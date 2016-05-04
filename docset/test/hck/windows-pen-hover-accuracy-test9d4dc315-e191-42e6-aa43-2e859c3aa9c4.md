---
author: joshbax-msft
title: Windows Pen Hover Accuracy Test
description: Windows Pen Hover Accuracy Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a4378ee8-093e-4d26-8516-79f612801606
---

# Windows Pen Hover Accuracy Test


This test validates Windows pen hover accuracy.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Digitizer.Pen.HoverAccuracy System.Client.Digitizer.Touch.ColdBootLatency</p>
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

The indirect nature of pen input requires that the user be confident of the pen position before delivering a tap or beginning to write. The ability to view the position of the cursor as it floats above the surface fulfills this requirement.

To complete this test, you need to use a measuring device to verify that the pen is placed above the screen at the specified distance. After this is accomplished, verify that the cursor is visible on the screen; then use the pen to tap the **Yes** button.

## Troubleshooting


For troubleshooting information, see [How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md#hiderrors).

## Related topics


[How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md)

 

 







