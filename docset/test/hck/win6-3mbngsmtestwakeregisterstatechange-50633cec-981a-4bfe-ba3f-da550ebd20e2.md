---
author: joshbax-msft
title: Win6\_3MBN..GSM..TestWake..RegisterStateChange
description: Win6\_3MBN..GSM..TestWake..RegisterStateChange
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b6956744-0b2a-4591-bad5-fe3ca425b8ed
---

# Win6\_3MBN..GSM..TestWake..RegisterStateChange


The test verifies that the machine supports InstantGo. It does this by putting the machine into Connected Standby and waiting for register state change.

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

The test verifies that a register state change from the device will correctly wake the computer from Connected Standby. The test will put the machine into Connected Standby and wait for a register state change. The user is expected to trigger the register state change by blocking or stopping the signal.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Network Testing](troubleshooting-devicenetwork-testing.md).

The common cause for failure is when the register state change occurs prematurely before the device is fully in Connected Standby.

 

 






