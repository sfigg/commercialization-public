---
author: joshbax-msft
title: NDISTest 6.5 - WLanAddRemoveKeys
description: NDISTest 6.5 - WLanAddRemoveKeys
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a8067f9c-eeca-4f4f-bd87-a4f03adf6fbf
---

# NDISTest 6.5 - WLanAddRemoveKeys


This automated test adds and removes wireless LAN keys.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.Base.OnlyWDFOrNDIS630Calls Device.Network.WLAN.CSBBase.ConformToNDIS Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBBase.OnlyWDFOrNDIS630Calls</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~12 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

The following suites are available in this test:

-   AddRemoveKey\_cmn

-   AddRemoveKey\_ext

The AddRemoveKey\_cmn suite consists of the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point</p></li>
<li><p>Query supported authentication/cipher types</p></li>
<li><p>Ignore open none</p></li>
<li><p>Start access point comm helper</p></li>
<li><p>Start DUT comm helper</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Fill default key table</p></td>
<td><p>Inserts a key into every index in the default key table</p>
<ul>
<li><p>Insert {x} key into default table with index {y}</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Fill pairwise key table</p></td>
<td><p>Inserts a key into every index in the pairwise key table</p>
<ul>
<li><p>Insert key into pairwise table index {x}</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Remove default keys</p></td>
<td><p>Tests data transmission using all possible key table indexes on the device's key table. Data is sent in both directions between the DUT and the access point (support device) using 2-way keys.</p>
<ul>
<li><p>Add {x} default key to DUT at index {y}, send broadcast data from AP to DUT, and then verify the DUT can receive packets from the access point.</p></li>
<li><p>Remove {x} default key index {y}, send broadcast data from access point to DUT, and then verify the DUT and access point can no longer communicate.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Remove pairwise keys</p></td>
<td><p>Tests data transmission using all possible key table indexes on the device's key table. Data is received by the DUT using 2-way keys.</p>
<ul>
<li><p>Add {x} pairwise key to DUT and then verify the DUT and access point can communicate</p></li>
<li><p>Remove {x} pairwise key from DUT, and then verify the DUT and access point can no longer communicate</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Overwrite default keys</p></td>
<td><p>Overwrites incorrect keys in the default key table with correct keys and verifies that the keys can be used correctly. This only tests unicast data transmission using default tables.</p>
<ul>
<li><p>Overwrite bad default key with {x} key on DUT, send broadcast data from the access point to DUT, and then verify that new key is used</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Overwrite pairwise keys</p></td>
<td><p>Overwrites the incorrect keys in the pairwise key table with correct keys and verifies that the keys can be used correctly.</p>
<ul>
<li><p>Overwrite bad pairwise key with {x} key and then verify that the new key is used</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The AddRemoveKey\_ext suite consists of the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point</p></li>
<li><p>Query supported authentication/cipher types</p></li>
<li><p>Ignore open none</p></li>
<li><p>Start access point comm helper</p></li>
<li><p>Start DUT comm helper</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Test key ID</p></td>
<td><ul>
<li><p>Assign current default key ID to {x}</p></li>
<li><p>Query current default key ID and verify that it matches assignment of {x}</p></li>
<li><p>Attempt to set default key ID larger than the size of the table</p></li>
<li><p>Verify that the default key ID query returns 0 immediately after reset</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Test default static key</p></td>
<td><ul>
<li><p>Verify that the static key {x} on DUT can be used for communication.</p></li>
<li><p>Verify that the non-static default key {x} on DUT was removed and cannot be used for communication.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Test query response</p></td>
<td><ul>
<li><p>Query the default key table for a key and expect a failure.</p></li>
<li><p>Query the pairwise key table for a key and expect a failure</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20WLanAddRemoveKeys%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




