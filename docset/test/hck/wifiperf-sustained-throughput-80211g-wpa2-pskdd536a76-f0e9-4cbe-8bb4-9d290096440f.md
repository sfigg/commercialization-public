---
author: joshbax-msft
title: WifiPerf-Sustained Throughput-802.11G\_WPA2-PSK
description: WifiPerf-Sustained Throughput-802.11G\_WPA2-PSK
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ae025d76-caf2-4aac-89cb-e719e23194fb
---

# WifiPerf-Sustained Throughput-802.11G\_WPA2-PSK


This test validates a client at 10 feet over 802.11G UDP (WPA2-P.) at 18 Mbps for 1 hour in open air.

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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WifiPerf-Sustained%20Throughput-802.11G_WPA2-PSK%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




