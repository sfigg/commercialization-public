---
author: joshbax-msft
title: NDISTest 6.0 - 1 Machine - 1c\_Mini6PerfSend
description: NDISTest 6.0 - 1 Machine - 1c\_Mini6PerfSend
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 59d8926a-1418-4b89-ac54-1db108ee7d8d
---

# NDISTest 6.0 - 1 Machine - 1c\_Mini6PerfSend


This test tries to keep the send path continuously busy. It starts by creating as many threads as processors on the test machine and from each of these threads sends pre-allocated packets to the network adapter. The rate of sends from each thread is controlled by the send complete rate of the miniport. It also measures the performance that the driver is able to achieve on the send path. The test goes through various combinations of send parameters (number of net buffers, number of net buffers per net buffer list, net buffer lists size, and so on), each running for 30 seconds.

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
<td><p>~35 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

## More information


### Parameters

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
<td><p>queryTestDeviceID</p></td>
<td><p>The ID of the test device.</p>
<p>Example: //Devnode/DeviceID</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>[WTTRunWorkingDir]\ndistest\bin\ndtest.exe /auto /client /dvi /u /target:Miniport /tc:[queryTestDeviceID] /script:{1c_Mini6PerfSend.wsf}</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

 

 






