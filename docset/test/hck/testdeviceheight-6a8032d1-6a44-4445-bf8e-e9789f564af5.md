---
author: joshbax-msft
title: Test.DeviceHeight
description: Test.DeviceHeight
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 024eb9c9-d9c0-419b-a61d-89f80643a4a8
---

# Test.DeviceHeight


This manual test verifies that a Windows Precision Touchpad height is reported correctly by the device.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.Hardware.Length</p>
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

The test asks you to validate that the physical height of the touchpad is the same as that reported by the device. You should measure the height of the touchpad by using a ruler, and compare that value to the value that is displayed by the test. If the values match\*, you should manually pass the test. If they do not match, you should fail the test.

**Note**  
\*Because the digitizer might be slightly smaller than the physical device, the measured height can be as much as 4mm greater than that which is reported by the device.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## More information


To run the test outside of Windows Hardware Certification Kit (Windows HCK) Studio, type the following command in a command prompt window that has administrative privileges:

``` syntax
PTLogo.exe Test.DeviceHeight.json
```

 

 






