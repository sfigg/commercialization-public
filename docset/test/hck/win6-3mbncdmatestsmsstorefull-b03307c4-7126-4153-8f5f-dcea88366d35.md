---
author: joshbax-msft
title: Win6\_3.MBN.CDMA.TestSmsStoreFull
description: Win6\_3.MBN.CDMA.TestSmsStoreFull
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 891bc784-1226-44a2-9b1d-a63ef92de832
---

# Win6\_3.MBN.CDMA.TestSmsStoreFull


The test verifies the SMS flag WWAN\_SMS\_FLAG\_MESSAGE\_STORE\_FULL is indicated when the message store is full. The test will send SMS messages to itself until the indication is received or until the number of messages exceeds the MaxMessageIndex specified in the SMS Configuration.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.MobileBroadband.CDMA.ImplementSMS</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md).

The test requires a Mobile Broadband Device

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Network Testing](troubleshooting-devicenetwork-testing.md).

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
<td><p>DevPhoneNumber</p></td>
<td><p>The phone number of the device.</p></td>
</tr>
<tr class="even">
<td><p>DevPhoneNumberType</p></td>
<td><p>The phone number type: NATIONAL, INTERNATIONAL, or UNKNOWN.</p>
<p>Default value: NATIONAL</p></td>
</tr>
</tbody>
</table>

 

 

 






