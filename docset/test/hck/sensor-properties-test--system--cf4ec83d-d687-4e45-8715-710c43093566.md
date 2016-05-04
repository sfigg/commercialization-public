---
author: joshbax-msft
title: Sensor Properties Test (System)
description: Sensor Properties Test (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 94c58f5c-28fe-48ed-8aca-4fd4b17d4608
---

# Sensor Properties Test (System)


This test is a combination of the following four tests:

-   **Static Properties Testing** – Verifies if the sensor driver supports all of the mandatory static sensor properties. Refer to the sensor requirement for a complete list of mandatory static properties.

-   **Invalid Properties Testing** - Verifies if the sensor driver is responding along the expected lines when an invalid property is retrieved or configured for the sensor device.

-   **Test Sensor Data Ready** - Verifies if the sensor device goes to a ready state after a device node goes through an enable/disable cycle. You are prompted to put the sensor device into a ready state.

-   **Set Properties Test** – Verifies if the compass, gyroscope, and the accelerometer sensors support the setting of specific CRI values as defined in the respective requirement files. For other sensors, this test simply passes and the CRI values are not validated.

This is a system-specific implementation of an existing test. For more information on this test, see [Sensor Properties Test](sensor-properties-test-1c415249-4ba9-44b1-ad69-a31e71c6cc87.md).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Sensor.Integrated</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86)</p></td>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

If a GPS sensor exists in the system, perform the following steps:

1.  Confirm that you are running the tests in an environment in which you can receive a GPS signal.

2.  Make sure that you have enabled the **Location Permissions** on the target system and for the system user account under which the WHCK tests are being executed.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

 

 






