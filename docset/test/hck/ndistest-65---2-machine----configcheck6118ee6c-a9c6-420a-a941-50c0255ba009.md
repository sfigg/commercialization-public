---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - ConfigCheck
description: NDISTest 6.5 - 2 Machine - ConfigCheck
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 672a008a-f83f-459a-92a2-d08b21b4c3d7
---

# NDISTest 6.5 - 2 Machine - ConfigCheck


This test validates the system configuration according to the following criteria:

-   The system cannot be certified on product type server or product suite personal.

-   Desktop computer must have multiple processors.

-   The NDIS.sys file should be from a retail (fre) build.

-   Test, local, and remote adapters should be selected and they should be of the same type.

-   For Datacenter and Enterprise editions:

    -   The computer should have at least 6 GB of RAM.

    -   The computer should have at least 4 processors.

    -   The adapter should use scatter gather for DMA.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.Base.100MbOrGreater Device.Network.LAN.Base.NDISRequirements Device.Network.LAN.Base.PreserveOSServices Device.Network.LAN.Base.SupportIEEEE8023</p>
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

 

 






