---
author: joshbax-msft
title: Windows Touch Physical Input Position Test
description: Windows Touch Physical Input Position Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e55689ca-6a4f-48eb-a651-927ed0591db0
---

# Windows Touch Physical Input Position Test


This test verifies that a Windows® Touch device reports all inputs within plus or minus 1 millimeter of the center of the physical input for all touchable areas.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Digitizer.Touch.HIDCompliantFirmware Device.Digitizer.Touch.PhysicalInputPosition</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Windows Touch Testing Prerequisites](windows-touch-testing-prerequisites.md).

Minimal offset between the actual and reported point of contact is a primary factor in real and perceived system accuracy. The screen edge hosts some of the most commonly used gestures on the interface, such as displaying the charms, switching applications, dismissing applications, and displaying the **Application Bar**.

The Physical Input Position Test suite includes tests for linear accuracy (offset) and edge performance, totaling seven scenarios. For the Edge (Inward) scenario, speed is measured and enforced. The tool warns you when motion is too slow, and then asks you to repeat the interaction. Moving too slowly does not generate a failure.

Each test must be passed at a rate of 95%.

This test also verifies that HID reports conform to the HID protocol that is described in [Windows Pointer Device Data Delivery Protocol](http://go.microsoft.com/fwlink/p/?linkid=226808) and defined in the [HID I2C v1.0 Protocol Specification](http://go.microsoft.com/fwlink/p/?linkid=286770).

## Troubleshooting


For troubleshooting information, see [How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md#hiderrors).

## More information


### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Logo3.exe -config PhysicalInputPosition.json</strong></p></td>
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
<td><p>Logo3.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\digitizer\Win8Touch</p></td>
</tr>
<tr class="even">
<td><p>PhysicalInputPosition.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\digitizer\Win8Touch</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md)

 

 







