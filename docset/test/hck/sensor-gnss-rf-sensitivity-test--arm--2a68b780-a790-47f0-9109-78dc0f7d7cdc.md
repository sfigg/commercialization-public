---
author: joshbax-msft
title: Sensor GNSS RF Sensitivity Test (ARM)
description: Sensor GNSS RF Sensitivity Test (ARM)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b2717c8c-2508-4898-8a0c-ccfd509a6004
---

# Sensor GNSS RF Sensitivity Test (ARM)


A GPS device and antenna should have an Over the Air (OTA) acquisition sensitivity of -142 dB or better. For OTA tracking sensitivity, it should be better than -145 dB.

Interference with other components in the system should not cause degradation from these sensitivity goals. Display, Camera, other radios, such as NFC, Bluetooth, WiFi, and Mobile Broadband, are some of the potential components which can cause interference. Active usage of such components shall not degrade GPS RF sensitivity.

Human hands holding the device one of the common positions should not degrade GPS RF Sensitivity. Device shall be able to maintain OTA acquisition sensitivity at -142 dBm and OTA tracking sensitivity of -145 dBm when the system is held in common positions.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.Sensor.Location.GNSSRFSensitivity</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Sensor Device Testing Prerequisites](sensor-device-testing-prerequisites.md).

If this test is being run against a GPS sensor device node, make sure that you are running the test in an environment in which you can receive a GPS signal.

The following hardware is required to complete this test:

-   A GPS signal

-   An NFC tag to pair with

-   A Bluetooth device to pair with

-   WiFi connectivity

-   Mobile Broadbancd connectivity

You should also enable all location privacy settings.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

 

 






