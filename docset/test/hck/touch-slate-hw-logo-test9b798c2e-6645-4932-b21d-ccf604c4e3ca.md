---
author: joshbax-msft
title: Touch Slate HW LOGO test
description: Touch Slate HW LOGO test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c79c3669-8df7-46eb-82fd-2fa259017cea
---

# Touch Slate HW LOGO test


This manual test verifies that the components of a tablet meet the Windows 8 logo requirements.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Tablet.RequiredHardwareButtons System.Client.Tablet.TabletPCRequiredComponents</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~60 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

Touch controllers are powered off when the screen is powered off so the capacitive button cannot utilize the same controller as the touch screen.

The capacitive button must recognize the difference between the Windows button press and a user-initiated edge swipe. If a user swipes in from the edge of the screen and goes over the button, the swipe gesture must work. The button must handle palm rejection if a user holds the system so their hand covers the button.

The capacitive button controller must remain powered in the **Connected Standby** state. If the Windows button is pressed while the system is in **Connected Standby**, it must wake the system.

To perform this test, power off the device and verify that you can resume by pressing the Windows hardware button. Thereafter, the Touch Slate HW logo test will run and pass or fail automatically.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md) and [How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md#hiderrors).

## Related topics


[How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md)

 

 







