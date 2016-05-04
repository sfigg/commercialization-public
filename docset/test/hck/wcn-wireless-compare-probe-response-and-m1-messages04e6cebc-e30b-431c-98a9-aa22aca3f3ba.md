---
author: joshbax-msft
title: WCN Wireless Compare Probe Response and M1 messages.
description: WCN Wireless Compare Probe Response and M1 messages.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 745df945-310f-430a-9e28-98e2a0eeb86a
---

# WCN Wireless Compare Probe Response and M1 messages.


This test acts as a WPS Registrar and compares the contents on Probe Response and M1 messages that it receives from the access point. It expects that both of these have the same information, such as model name, manufacturer name, and configuration methods.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.Router.WCNDynamicPIN Device.Network.Router.WFACertified</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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
<td><p>Data_DevicePIN</p></td>
<td><p>The PIN of the device.</p></td>
</tr>
<tr class="even">
<td><p>Data_BSSID</p></td>
<td><p>The BSSID of the device.</p></td>
</tr>
</tbody>
</table>

 

 

 






