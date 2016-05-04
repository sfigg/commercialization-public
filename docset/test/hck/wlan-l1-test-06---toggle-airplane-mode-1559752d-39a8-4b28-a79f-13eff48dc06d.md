---
author: joshbax-msft
title: Wlan L1 Test 06 - Toggle airplane mode
description: Wlan L1 Test 06 - Toggle airplane mode
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e7d21f09-88de-4ce9-870a-91bb28ff217e
---

# Wlan L1 Test 06 - Toggle airplane mode


This automated test toggles the radio states in the same way as the user interface airplane mode option..

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.CSBBase.ConformToNDIS</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification</p></td>
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

-   Each radio must change state and report its updated state in less than ten seconds.

-   Enables each radio that is reported to the operating system.

-   Each radio must change state and report its update state in under ten seconds

The test allows for and can accommodate devices that change the state of all radios when only one radio is requested.

The test will only fail if an exception is thrown when attempting any of the above tasks, or if radios do not change state within the time required.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






