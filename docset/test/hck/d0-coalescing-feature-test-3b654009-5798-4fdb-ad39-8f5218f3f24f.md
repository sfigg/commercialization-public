---
author: joshbax-msft
title: D0 Coalescing Feature Test
description: D0 Coalescing Feature Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c5026a90-52dd-4c4d-8af9-830c5662c224
---

# D0 Coalescing Feature Test


This test validates the D0 packet coalescing functionality for LLMNR v4/v6, SSDP v4/v6, WSD v4/v6 NetBT in the default operating system. It then disables the functionality and repeats the same steps to validate that there is no D0 packet coalescing.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ImplementD0PacketCoalescing Device.Network.WLAN.CSBBase.MustSupportD0PacketCoalescing</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~40 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

Network Monitor must be installed on the SoftAP machine, which must then be rebooted. Network Monitor is available from the [Microsoft Download Center](http://www.microsoft.com/download/details.aspx?id=4865). This requirement is moved from SUT to AP controller with HCKQFE \#4.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

## More information


### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>AP1Password</strong></p></td>
<td><p>The root password for the first physical access point.</p></td>
</tr>
<tr class="even">
<td><p><strong>AP1IPAddress</strong></p></td>
<td><p>The IP address of the WAN port of the first physical access point.</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP2Password</strong></p></td>
<td><p>The root password for the second physical access point.</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2IPAddress</strong></p></td>
<td><p>The root password for the second physical access point.</p></td>
</tr>
</tbody>
</table>

 

 

 






