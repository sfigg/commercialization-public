---
author: joshbax-msft
title: Sensor GNSS RF Sensitivity Test
description: Sensor GNSS RF Sensitivity Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 459f7a67-79a8-4aab-8726-1988ff7703a5
---

# Sensor GNSS RF Sensitivity Test


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
<td><p>Device.Input.Sensor.Base.Discretional</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Functional</p></td>
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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Sensor%20GNSS%20RF%20Sensitivity%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




