---
author: joshbax-msft
title: Test.DeviceWidth
description: Test.DeviceWidth
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0d60c483-de19-41e0-9fcd-51d1690856b3
---

# Test.DeviceWidth


This manual test verifies that a Windows Precision Touchpad width is reported correctly by the device.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.Hardware.Width</p>
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

The test asks you to validate that the physical width of the touchpad is the same as that reported by the device. You should measure the width of the touchpad by using a ruler, and compare that value to the value that is displayed by the test. If the values match\*, you should manually pass the test. If they do not match, you should fail the test.

**Note**  
Because the digitizer might be slightly smaller than the physical device, the measured width can be as much as 4mm greater than that which is reported by the device and still pass the test.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## More information


To run the test outside of Windows Hardware Certification Kit (Windows HCK) Studio, type the following command in a command prompt window that has administrative privileges:

``` syntax
PTLogo.exe Test.DeviceWidth.json
```

 

 






