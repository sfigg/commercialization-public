---
author: joshbax-msft
title: NDISTest 6.5 - WlanSendReceiveStress
description: NDISTest 6.5 - WlanSendReceiveStress
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e944c523-171e-495e-8bec-0419f882e431
---

# NDISTest 6.5 - WlanSendReceiveStress


This automated test suite verifies miniport manipulation of NBLs and structures contained within. Both structured and random tests confirm appropriate data management and transfer.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.Base.MeetPerformanceReq Device.Network.WLAN.Base.OnlyWDFOrNDIS630Calls Device.Network.WLAN.CSBBase.ConformToNDIS Device.Network.WLAN.CSBBase.MeetPerformanceReq Device.Network.WLAN.CSBBase.OnlyWDFOrNDIS630Calls</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~18 minutes</p></td>
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

-   SendRecvStress\_cmn

The SendRecvStress\_cmn suite consists of the following:

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
<td><p>VerifyBssidNotInScanList</p></td>
<td><ul>
<li><p>Verify that the DUT can send data packets from MDLs with extra blank bytes before the first MDL and after the last MDL in each net buffer. The data will be transmitted using {0} and {1}.</p></li>
<li><p>Verify that the DUT can transmit data packets generated from MDLs that are constructed with exactly as many bytes of backfill space as the DUT requests during initialization. This empty space resides at the front of the first MDL of a net buffer. No other empty space is allocated in transmitted net buffers. The data is transmitted using {0} and {1}.</p></li>
<li><p>Verify that the DUT can send a data packet that is constructed in one large MDL in a net buffer. The data is transmitted using {0} and {1}.</p></li>
<li><p>Verify that the DUT can send a data packet that is constructed from many small MDLs in a net buffer. The data is transmitted using {0} and {1}.</p></li>
<li><p>Verify that the DUT can send packets constructed from MDLs allocated across page lines using {0} and {1}.</p></li>
<li><p>Verify that the DUT can send very small packets using {0} and {1}.</p></li>
<li><p>Verify that the DUT can send very large packets using {0} and {1}.</p></li>
<li><p>Verify that the DUT can send a large amount of packets in a single send request using {0} and {1.}</p></li>
<li><p>Verify that the DUT can send a wide variety of packets using {0} and {1}.</p></li>
</ul>
<p>This is done for all supported authentication and cipher types.</p></td>
</tr>
<tr class="even">
<td><p>VerifySeveralSendingCommHelpers</p></td>
<td><p>Send packets from the DUT to an access point by using several communication objects for all supported authentication and cipher types.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






