---
author: joshbax-msft
title: Windows Touch Extra Input Behavior Test
description: Windows Touch Extra Input Behavior Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a10e9457-86f9-4cb5-adb7-ebd6b49ac02e
---

# Windows Touch Extra Input Behavior Test


This manual test verifies that a Windows Touch device does not report inputs that are greater than the maximum values, as defined in the test requirements.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Digitizer.Touch.ExtraInputBehavior</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~4 minutes</p></td>
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

Microsoft strives to be consistent in order to provide application developers maximum ease in writing applications. Predictable behavior in Windows enables developers to consider only one case; this predictability can save valuable time. This test enforces the requirement that the fidelity of the initial maximum number of contacts is maintained in the presence of up to five additional contacts. The following example uses a device that supports ten contacts:

**To run the extra input behavior test**

1.  Place ten contacts on the screen, in any order, location or combination. The device reports all ten contacts according to the HID specification for touch devices.

2.  Place five additional contacts on the screen in any order, location or combination. The device continues to report the original ten contacts, but does not report the newly-added contacts.

    **Note**  
    Continuing to report the first ten contacts is mandatory, and failure to continue reporting them results in a test failure.

     

3.  Place a sixteenth contact on the screen, and the device ceases to report data. Although the device can optionally define its own specific behavior during this step, we recommend that you stop the reporting at this time.

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
<td><p><strong>Logo3.exe -config ExtraInputBehavior.json</strong></p></td>
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
<td><p>ExtraInputBehavior.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\digitizer\Win8Touch</p></td>
</tr>
<tr class="even">
<td><p>Logo3.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\digitizer\Win8Touch</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md)

 

 







