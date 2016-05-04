---
author: joshbax-msft
title: Wlan L2 Test 03 - Toggle airplane mode (strict)
description: Wlan L2 Test 03 - Toggle airplane mode (strict)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f24ae233-bbde-45aa-aedc-1720cef08593
---

# Wlan L2 Test 03 - Toggle airplane mode (strict)


This automated test toggles the radio states in the same way as the user interface **Airplane Mode** option.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetPerformanceReq Device.Network.WLAN.CSBBase.MeetPerformanceReq</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

The test completes the following:

-   Disables each radio that is reported to the operating system..

-   Each radio must change state and report its updated state in less than two seconds.

-   Enables each radio that is reported to the operating system.

-   Each radio must change state and report its update state in under two seconds

The test allows for and can accommodate devices that change the state of all radios when only one radio is requested.

The test will only fail if an exception is thrown when attempting any of the above tasks, or if radios do not change state within the time required.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

## Related topics


[WLAN L2 Tests](wlan-l2-tests.md)

 

 







