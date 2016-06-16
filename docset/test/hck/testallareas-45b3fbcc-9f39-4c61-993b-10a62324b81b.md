---
author: joshbax-msft
title: Test.AllAreas
description: Test.AllAreas
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9a003841-13e7-49ce-bdff-dfcbe77abd56
---

# Test.AllAreas


This manual test verifies that a Windows Precision Touchpad device reports contacts when any physical area of the touchpad is touched.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.Reliability.ContactsReported</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
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

The test presents five iterations during which you are prompted to touch a contact to the touchpad in a specified region. At the prompt, you should tap a total of five times per region at random unique points inside that region.

In each case, the test validates that a tap occurs in the specified region. If a tap is detected, the test automaticallyes pass the iteration. If no tap is detected after any physical tap in the specified region, you should manually fail the iteration.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## More information


To run the test outside of Windows Hardware Certification Kit (Windows HCK) Studio, type the following command in a command prompt window that has administrative privileges:

``` syntax
PTLogo.exe Test.AllAreas.json
```

## Related topics


[Device.Input Tests](deviceinput-tests.md)

 

 







