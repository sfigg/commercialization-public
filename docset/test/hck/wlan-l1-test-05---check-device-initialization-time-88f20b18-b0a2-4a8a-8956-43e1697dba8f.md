---
author: joshbax-msft
title: Wlan L1 Test 05 - Check device initialization time
description: Wlan L1 Test 05 - Check device initialization time
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6a92825e-08d2-4fc0-98ad-8e0f3cdd68bf
---

# Wlan L1 Test 05 - Check device initialization time


This automated test verifies the device initialization time by calling the NDIS OID OID\_GEN\_INIT\_TIME\_MS to obtain driver initialization time.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.BootTimeAndHibernate Device.Network.WLAN.CSBBase.BootTimeAndHibernate</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

The test completes the following:

-   The test first disables and then enables the device under test.

-   The test sends OID\_GEN\_INIT\_TIME\_MS to NDIS to obtain driver initialization time.

The test will fail if the resulting time is greater than one second.

NDIS calculates driver initialization time by the operating system measuring the total time that the driver took to complete the following four actions:

-   Query power capabilities

-   MiniportInitializeEx

-   Initialize PNP and AOAC capabilities

-   MiniportRestart

These actions are timed only when the driver initializes. Running this test repeatedly will always obtain the same value. The test queries NDIS each time that it is run to obtain the overall initialization time.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

Check driver logs for timeframes that correspond to the four actions listed above. The sum of all four actions must complete in less than one second.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Wlan%20L1%20Test%2005%20-%20Check%20device%20initialization%20time%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




