---
author: joshbax-msft
title: Test.LinearityDiagonalMultiple
description: Test.LinearityDiagonalMultiple
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d27df64a-5037-46fe-9af5-a5bfa9ffbaa5
---

# Test.LinearityDiagonalMultiple


This test verifies that the touchpad reports a straight line (that corresponds to contact movement) when two contacts that are 14mm apart are moved diagonally across the surface of a touchpad (within a tolerance of .5mm).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.Precision.DiagonalInputSeparation Device.Input.PrecisionTouchpad.Precision.Linearity Device.Input.PrecisionTouchpad.Precision.MotionJitter System.Client.PrecisionTouchpad.PrecisionTouchpad</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Mouse or other Pointing Device Testing Prerequisites](mouse-or-other-pointing-device-testing-prerequisites.md).

This test requires very precise movement in a straight line. We recommend that you perform this test by using a precision rig or other precision device that is capable of straight line movement without any jitter.

1.  Place two precision contacts 14mm apart slightly outside the top left corner of the touchpad.

2.  Drag the contacts in a straight line from the top left to the bottom right corner of the touchpad.

3.  Drag the contacts back from the bottom right up to the top left.

4.  Repeat this pattern for a total of five iterations.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description/Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[15] contact didn’t move in straight line</p></td>
<td><p>Reported path strayed varied from a straight line by more than the allowed tolerance.</p></td>
</tr>
<tr class="even">
<td><p>[14] packet too far from edge: ###</p></td>
<td><ul>
<li><p>Swipe must start at or before the edge.</p></li>
<li><p>Swipe must go all the way to the opposite edge. Performing swipe too quickly might not allow the device to fully report.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## More information


### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ptlogo.exe Test.LinearityDiagonalMultiple.json</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ptlogo.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
<tr class="even">
<td><p>config.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
<tr class="odd">
<td><p>Test.LinearityDiagonalMultiple.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
</tbody>
</table>

 

 

 






