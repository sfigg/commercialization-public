---
author: joshbax-msft
title: Test.DeviceClickPressure
description: Test.DeviceClickPressure
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bcdfc5d1-3294-4502-a321-313e093c1d43
---

# Test.DeviceClickPressure


This test verifies that the device properly registers a click based on the amount of pressure applied to the surface of the touchpad.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.Hardware.ClickpadPress Device.Input.PrecisionTouchpad.Hardware.PressurePadPress System.Client.PrecisionTouchpad.PrecisionTouchpad</p>
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

**Note**  
You just have a 140g and 190g 7 millimeter metal slug.

 

For this test, you will be verifying the pressure needed to register a click on the touchpad in 5 locations. These locations are slightly different, depending on whether your device is a clickpad or a pressurepad. On a pressurepad, the points map directly to the center of the touchpad and the 4 corners. On a clickpad, we bisect the touchpad in half and test the four corners and center of the bottom half of the clickpad.

**Iteration 1**

1.  Place the 140g slug next to the bottom left corner of the device, but not touching the device (resting on the surrounding casing of the touchpad).

2.  Carefully slide the slug onto the touchpad, to the bottom left corner.

3.  Verify that no button click is reported (the bar at the bottom of the screen should stay grey and not turn green). If no button click is reported, press **P** to pass the iteration. Otherwise, press **F** to fail.

**Iteration 2**

-   Repeat the steps in Iteration 1 in the bottom right corner of the device.

**Iteration 3**

1.  Carefully place the 140g slug on the bottom left corner of the touchpad surface.

2.  Slide the slug upwards to the top left corner of the touchpad.

3.  Verify that no button click is reported (the bar at the bottom of the screen should stay grey and not turn green). If no button click is reported, press **P** to pass the iteration. Otherwise, press **F** to fail.

**Iteration 4**

-   Repeat the steps in Iteration 3, but slide the slug from the bottom right corner to the top right corner.

**Iteration 5**

-   Repeat the steps in Iteration 3, but slide the slug from the bottom left corner to the center of the touchpad.

**Iteration 6**

1.  Repeat actions of iteration 1 using a 190g slug instead of the 140g slug.

2.  If grey bar in PTLogo turns green when the slug is down and back to grey when the slug is removed, then press P to manually pass the iteration. Otherwise, press F to manually fail the iteration.

**Iteration 7**

1.  Repeat actions of iteration 2 using a 190g slug instead of the 140g slug.

2.  If grey bar in PTLogo turns green when the slug is down and back to grey when the slug is removed, then press P to manually pass the iteration. Otherwise, press F to manually fail the iteration.

**Iteration 8**

1.  Repeat actions of iteration 3 using a 190g slug instead of the 140g slug.

2.  If grey bar in PTLogo turns green when the slug is down and back to grey when the slug is removed, then press P to manually pass the iteration. Otherwise, press F to manually fail the iteration.

**Iteration 9**

1.  Repeat actions of iteration 4 using a 190g slug instead of the 140g slug.

2.  If grey bar in PTLogo turns green when the slug is down and back to grey when the slug is removed, then press P to manually pass the iteration. Otherwise, press F to manually fail the iteration.

**Iteration 10**

1.  Repeat actions of iteration 5 using a 190g slug instead of the 140g slug.

2.  If grey bar in PTLogo turns green when the slug is down and back to grey when the slug is removed, then press P to manually pass the iteration. Otherwise, press F to manually fail the iteration.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## More information


### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ptlogo.exe Test.DeviceClickPressure.json</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ptlogo.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
<tr class="even">
<td><p>config.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
<tr class="odd">
<td><p>Test.DeviceClickPressure.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Test.DeviceClickPressure%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




