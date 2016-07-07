---
author: joshbax-msft
title: NDISTest 6.5 - WlanPowerMgmt
description: NDISTest 6.5 - WlanPowerMgmt
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d679d677-b562-4736-8389-40beaac8c5a0
---

# NDISTest 6.5 - WlanPowerMgmt


During one of the four power management schemes, the miniport driver is turned off. This test suite verifies that the miniport behaves properly when the PC comes out of the power management scheme. All of the possible combinations of the power management schemes are tested. If AutoWake is not supported by the operating system, all of the combinations are not tested. In that case, only one power management scheme (Deepest Standby) is tested.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.CSBBase.MeetScanAndConnReq</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~32 minutes</p></td>
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

The following suites are available:

-   PowerMgmt\_ext

The PowerMgmt\_ext suite consists of the following:

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
<td><p></p></td>
<td><p>Connect the DUT to a visible access point.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Determine the supported sleep state, which can be s1-s4.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Build a table with all of the possible combinations of sleep states. For example, if the DUT only supports s3 and s4 then the combinations would be o-&gt;s3, S3-&gt;S3, S3-&gt;S4, S4-&gt;S4, S4-&gt;S3, which translates into S0-&gt;standby-&gt;wakeup-&gt;standby-&gt;wakeup-&gt;hibernate-&gt;wakeup-&gt;hibernate-&gt;wakeup-&gt;standby-&gt;wakeup-&gt;verify connectivity.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Verify the device can send and receive data.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Connect to a ADhoc network. This test is not applicable to devices that support InstantGo.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Transition from hibernate to wake.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Verify the device can send and receive data.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






