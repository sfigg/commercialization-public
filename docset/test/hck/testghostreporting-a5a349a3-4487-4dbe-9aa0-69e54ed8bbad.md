---
author: joshbax-msft
title: Test.GhostReporting
description: Test.GhostReporting
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d9881701-3860-432b-bf0a-c25c2ade4c2b
---

# Test.GhostReporting


This manual test verifies that a Windows Precision Touchpad device does not report data for locations where input does not occur.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.Reliability.FalseContacts System.Client.PrecisionTouchpad.PrecisionTouchpad</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Mouse or other Pointing Device Testing Prerequisites](mouse-or-other-pointing-device-testing-prerequisites.md).

The test presents two iterations, during which you are prompted to refrain from touching the touchpad for 60 seconds. If the system has an external power source, it should be unplugged for the second iteration.

In each case, the test validates that no contacts are registered on the touchpad as expected.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## More information


To run the test outside of Windows Hardware Certification Kit (Windows HCK) Studio, type the following command in a command prompt window that has administrative privileges:

``` syntax
PTLogo.exe Test.GhostReporting.json
```

 

 






