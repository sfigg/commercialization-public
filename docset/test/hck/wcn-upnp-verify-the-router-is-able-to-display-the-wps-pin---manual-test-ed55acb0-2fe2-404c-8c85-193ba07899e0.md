---
author: joshbax-msft
title: WCN UPnP Verify the router is able to display the WPS Pin (Manual Test)
description: WCN UPnP Verify the router is able to display the WPS Pin (Manual Test)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ec8fa61d-5811-4627-a756-c23c4f9337f5
---

# WCN UPnP Verify the router is able to display the WPS Pin (Manual Test)


This test verifies the router is able to display the WPS PIN. The router should have a way to display the WPS PIN. If the WPS PIN is static, it should be printed on the router and should be exactly 8 numeric characters. If the WPS PIN is dynamic, then the router should have a way to display the current WPS PIN on the router (for example, using an LCD display). A dynamic WPS PIN can be 4 or 8 numeric characters. The test will pass if the router meets the specified criteria and fail if it does not.

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
<td><p>Windows 7 (x86) Windows 8 (x86) Windows 8.1 x86</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless Router Testing Prerequisites](wireless-router-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless Router Testing](troubleshooting-wireless-router-testing.md).

 

 






