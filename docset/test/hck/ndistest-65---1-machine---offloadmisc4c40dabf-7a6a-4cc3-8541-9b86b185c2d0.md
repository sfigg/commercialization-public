---
author: joshbax-msft
title: NDISTest 6.5 - 1 Machine - OffloadMisc
description: NDISTest 6.5 - 1 Machine - OffloadMisc
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fba1963a-d0f1-47db-96cd-daf90625b387
---

# NDISTest 6.5 - 1 Machine - OffloadMisc


This test validates the ability of the miniport driver to persist the offload setting changes through unload and reload of the driver. The test queries the hardware offload capability and current offload capability, and then constructs a NDIS\_OFFLOAD\_PARAMETERS structure to flip the current offload capability. The driver is then unloaded and loaded again. The miniport driver's current offload capability must not change before and after the unload and load operation. At last, the current offload operation is restored through another OID\_TCP\_OFFLOAD\_PARAMETERS. The driver is unloaded and loaded again and configuration persistence is also tested during the restoration operation.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.Base.NDISRequirements</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

 

 






