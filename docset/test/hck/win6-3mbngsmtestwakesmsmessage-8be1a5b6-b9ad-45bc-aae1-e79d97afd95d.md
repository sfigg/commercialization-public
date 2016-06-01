---
author: joshbax-msft
title: Win6\_3MBN..GSM..TestWake..SmsMessage
description: Win6\_3MBN..GSM..TestWake..SmsMessage
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 150d8961-f6a6-4ed6-9e81-859fd603b59d
---

# Win6\_3MBN..GSM..TestWake..SmsMessage


The test verifies that the machine supports Connected Standby. It does this by putting the machine into Connected Standby and waiting for an SMS message.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.MobileBroadband.GSM.SupportWakeOnMB</p>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md).

The test verifies that an SMS message correctly wakes the computer from Connected Standby. The test will put the device into Connected Standby and wait for an incoming SMS message. The user is expected to send an SMS message to the device when the device is in Connected Standby state.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Network Testing](troubleshooting-devicenetwork-testing.md).

The common cause for failure is when the SMS message is received prematurely before the device is fully in Connected Standby.

 

 






