---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - OffloadLSO
description: NDISTest 6.5 - 2 Machine - OffloadLSO
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f28c2534-7a81-4d96-80ef-213aebda7fc1
---

# NDISTest 6.5 - 2 Machine - OffloadLSO


This test validates LSOv1 and LSOv2 capabilities of the miniport driver. The test cases include LSOv2 over ipv4, LSOv2 over ipv6, LSOv1 over Ipv4, LSOv2 mixed with Ipv4 checksum offload, and LSOv1 mixed with Ipv4 checksum. For each test case variation, the combination of TCP option, IP option, MSS, and segment number is enumerated. TCP flags and urgent pointer are generated randomly during the test. User is allowed to use Hot parameters to select interesting test cases.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.GRE.GREPacketTaskOffloads Device.Network.LAN.LargeSendOffload.LargeSendOffload</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~60 minutes</p></td>
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

**Important**  
For devices running Windows 7, the values of IPChecksumOffloadIPv4 will change.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

 

 






