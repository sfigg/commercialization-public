---
author: joshbax-msft
title: Test.ConvergeDivergeVertical
description: Test.ConvergeDivergeVertical
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0bb81085-79d1-4e8d-8e44-010b3c8e7d9b
---

# Test.ConvergeDivergeVertical


This test verifies that two contacts are reported properly when converged and diverged within 11 millimeters of each other.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.Precision.ContactDivergence</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
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

This test requires contacts that move very precisely in very specific distances. It is recommended that a precision rig or robotic solution is used to perform these tests.

1.  Place two 7 millimeter precision contacts on touchpad device next to each other vertically separated by distance as instructed on the screen.

2.  As instructed, move contacts vertically (up/down) either towards each other or apart. Five iterations per direction for both converge and diverge. If the two contacts remain distinct and no errors are detected, the test will automatically pass each iteration and advance to the next.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

If you get an error of “\[17\] not enough separate of points” or “\[18\] too much separation of points: \#\#\#\#”, ensure that the widest distance between two contacts is always &gt; 30mm and the smallest distance is always &lt; 11mm.

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
<td><p><strong>ptlogo.exe TestConvergeDivergeVertical.json</strong></p></td>
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
<td><p>Test.ConvergeDivergeVertical.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
</tbody>
</table>

 

 

 






