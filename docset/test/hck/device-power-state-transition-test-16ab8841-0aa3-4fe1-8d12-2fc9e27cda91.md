---
author: joshbax-msft
title: Device Power State Transition Test
description: Device Power State Transition Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 864b191b-edbb-44e3-b615-fbe7fa60d4a3
---

# Device Power State Transition Test


This automated test verifies that an audio codec can resume from its D3 sleep state to a running state (D0) in the appropriate amount of time to comply with Windows® requirements.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Audio.Base.PowerManagement</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~4 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Audio Device Testing Prerequisites](audio-device-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Audio Testing](troubleshooting-audio-testing.md).

All test cases return PASS or FAIL. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

If there are failures in this test, confirm that the hardware is capable of resuming from D3 in the appropriate amount of time in accordance with Windows requirements.

 

 






