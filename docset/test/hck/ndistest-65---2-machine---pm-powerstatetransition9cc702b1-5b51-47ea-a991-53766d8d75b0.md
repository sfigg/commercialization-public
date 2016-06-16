---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - PM\_PowerStateTransition
description: NDISTest 6.5 - 2 Machine - PM\_PowerStateTransition
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c6dff7f3-5d40-4f84-8e4a-5fcc94aafe1e
---

# NDISTest 6.5 - 2 Machine - PM\_PowerStateTransition


This test verifies that the miniport driver behaves properly when the PC comes out of a power management scheme. All the possible combinations of the power management schemes are tested. If AutoWake is not supported by the operating system, all the combinations are not tested. In that case only one power management scheme (Deepest Standby) is tested. Hardware vendors should verify that their adapters on machines support autowake and at least S1, S3, and S4 sleep states. If your machine takes a significantly long time to standby or hibernate, increase the timer (hot parameter Amount of Time to Sleep) appropriately.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.PM.PowMgmtNDIS</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
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

 

 






