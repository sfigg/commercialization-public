---
author: joshbax-msft
title: WHCKProximityDeviceTest - DeviceTouchMark
description: WHCKProximityDeviceTest - DeviceTouchMark
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a3dab4e1-3057-46ba-bbe9-f9af60809b9b
---

# WHCKProximityDeviceTest - DeviceTouchMark


This test verifies that a proximity implementation that uses Near Field Communication (NFC) Tap features as defined by the NFC Forum adheres to the specifications of the NCF Forum. The test also verifies that the NFC Forum has certified the device as compliant.

During the test, you receive the following message:

**Press Y to respond that the device has a touchmark on the chassis to indicate where to tap devices together.**

**Press any other key to respond that the touchmark requirement is not fulfilled.**

You must press **Y** to successfully complete the test. This acts as an affirmation that the proximity device supports Tap features.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.NearFieldProximity.TouchMark</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
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


Before you run the test, complete the test setup as described in [Proximity Device.Connectivity Testing Prerequisites](proximity-deviceconnectivity-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

 

 






