---
author: joshbax-msft
title: IGD Data Transmission Test Udp Test
description: IGD Data Transmission Test Udp Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b088e05d-1364-421c-8ea9-39493402a01f
---

# IGD Data Transmission Test Udp Test


This test validates UDP streaming to an external device. This test receives a UDP stream for 8 minute durations and ensures that the device can send UDP streams to a source. If more than 4 packets are dropped, this test will fail and not pass the device.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.Router.BasicCompatibility</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x86) Windows 8 (x86) Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless Router Testing Prerequisites](wireless-router-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless Router Testing](troubleshooting-wireless-router-testing.md).

 

 






