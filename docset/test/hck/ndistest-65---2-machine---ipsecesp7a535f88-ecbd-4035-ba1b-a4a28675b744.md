---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - IPSecESP
description: NDISTest 6.5 - 2 Machine - IPSecESP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9c6f3e75-97ba-4af5-b8d6-a71cfdf66479
---

# NDISTest 6.5 - 2 Machine - IPSecESP


This test verifies the operation of miniport drivers that support IPSec v2 task offload. This test script contains tests that target the offloaded operation of IPSec ESP. It verifies that network adapters correctly perform offloaded confidentiality and authentication tasks on IPv4/IPv6 ESP frames. It currently tests AES-GCM-ESP (128/192/256), ESP-NULL-AUTH-SHA-1-96 and, ESP-NULL-AUTH-AES-GMAC (128/192/256) with "simple sends".

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.IPsec.IPsec</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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

 

 






