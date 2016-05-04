---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - QosRemoteSettings
description: NDISTest 6.5 - 2 Machine - QosRemoteSettings
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 22ff1e16-290b-49bb-a46c-25eabd545fa4
---

# NDISTest 6.5 - 2 Machine - QosRemoteSettings


This test ensures that m\_Dut can parse IEEE DCBX packets sent by m\_Sut and correctly indicate these new settings via NDIS\_STATUS\_QOS\_REMOTE\_PARAMETERS\_CHANGE. TestConflict: Ensures that m\_Dut resolves the conflict when both local and remote flow control and classification settings are available. TestNoRemoteSettings: Ensures that m\_Dut only takes into account the local settings when there are no remote settings available.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.DCB.DCB</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

This test must only be run on a Windows Server edition adapter configuration. The DUT mused have a QoS-capable network adapter. The network adapter in the SUT must allow IEEE 802.1AB LLDP packets sent from the operating system to pass through.

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

 

 






