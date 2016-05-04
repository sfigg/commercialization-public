---
author: joshbax-msft
title: Wlan L1 Test 04 - Check for mandatory Connected Standby Oids
description: Wlan L1 Test 04 - Check for mandatory Connected Standby Oids
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 906edafa-6a67-4fb2-8114-75ac1f81085c
---

# Wlan L1 Test 04 - Check for mandatory Connected Standby Oids


This automated test queries the driver on a machine that supports InstantGo for implemented OIDs.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.CSBBase.ConformToNDIS</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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

This test does the following:

-   Check for the following OIDs. These OIDs are documented on MSDN under Auto PSM and NLO (<http://msdn.microsoft.com/library/windows/hardware/ff560689.aspx>).

    -   OID\_DOT11\_POWER\_MGMT\_MODE\_AUTO\_ENABLED

    -   OID\_DOT11\_POWER\_MGMT\_MODE\_STATUS

    -   OID\_DOT11\_OFFLOAD\_NETWORK\_LIST

The test will fail if any of the mandatory OIDs are not returned to NDIS as a part of miniport initialization.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






