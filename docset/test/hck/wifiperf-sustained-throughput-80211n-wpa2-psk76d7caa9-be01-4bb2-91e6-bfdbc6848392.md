---
author: joshbax-msft
title: WifiPerf-Sustained Throughput-802.11N\_WPA2-PSK
description: WifiPerf-Sustained Throughput-802.11N\_WPA2-PSK
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4c0ee948-10ed-4745-ab3f-c454a0efeb52
---

# WifiPerf-Sustained Throughput-802.11N\_WPA2-PSK


This test validates a client at 10 feet over 802.11N UDP (WPA2-P.) at 60 Mbps for 1 hour in open air.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.Router.BasicPerf</p>
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
<td><p>IPAddressConsumer</p></td>
<td><p>The IP address of the wireless machine.</p></td>
</tr>
<tr class="even">
<td><p>IPAddressSource</p></td>
<td><p>The IP address of the wired machine.</p></td>
</tr>
<tr class="odd">
<td><p>MacAddress</p></td>
<td><p>The MAC address of the access point or router.</p></td>
</tr>
<tr class="even">
<td><p>StatsParam_Wireless</p></td>
<td><p>The UDP stream tool and its command-line parameters for the wireless machine.</p></td>
</tr>
<tr class="odd">
<td><p>StatsParam_Wired</p></td>
<td><p>The UDP stream tool and its command-line parameters for the wired machine.</p></td>
</tr>
<tr class="even">
<td><p>ProfileFile</p></td>
<td><p>The wireless profile XML file.</p></td>
</tr>
</tbody>
</table>

 

 

 






