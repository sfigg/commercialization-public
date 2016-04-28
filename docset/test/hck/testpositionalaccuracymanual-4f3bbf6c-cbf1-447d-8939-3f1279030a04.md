---
author: joshbax-msft
title: Test.PositionalAccuracyManual
description: Test.PositionalAccuracyManual
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3fbd938c-2a34-4fff-adce-e4cca06710ba
---

# Test.PositionalAccuracyManual


The test verifies that the device can accurately report absolute position.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.HIDCompliance.HIDCompliance Device.Input.PrecisionTouchpad.HIDCompliance.Timestamp Device.Input.PrecisionTouchpad.HIDCompliance.ValidRange Device.Input.PrecisionTouchpad.Precision.Position System.Client.PrecisionTouchpad.PrecisionTouchpad</p>
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

1.  Start the test.

2.  Iteration 1:

    1.  Horizontally drag three fingers straight across 1/3 of the touchpad.

    2.  Without lifting, continue to move across the touchpad in a zig-zag pattern.

    3.  Without lifting, continue to move in a straight line across the last 1/3 of the touchpad.

    4.  Verify that the visualization matches physical finger movements and manually pass (press **P**) or fail (press **F**) the test accordingly.

        ![positional accuracy iteration 1](images/hck-winb-fig1-positionalaccuracy-iteration1.jpg)

3.  Repeat steps 1-4 vertically for the second iteration, and diagonally for the third iteration.

4.  Iteration 4:

    1.  Randomly tap 20 times on the touchpad.

    2.  Verify that the visualization matches your taps and that there is no jitter, as shown in *Figure 2 Positional Accuracy, Iteration 4*. Manually pass or fail the test accordingly.

        ![positional accuracy iteration 4](images/hck-winb-fig2-positionalaccuracy-iteration4.jpg)

        In *Figure 2 Positional Accuracy, Iteration 4*, most of the taps are fine. The top circled contact is borderline – there was travel over the contact lifetime, but not a lot. Generally, up to 1mm (half a gridline) should be considered passing, as long as most are like the middle circled contact. The bottom circled contact shows travel greater than half a grid, which should be considered a failure.

5.  Iteration 5:

    1.  Draw a curved line by using your finger.

    2.  Without slowing or changing direction, lift your finger.

    3.  Verify that the visualization matches your curves and does not jitter on lift, as shown in *Figure 3 Positional Accuracy, Iteration 5*. Manually pass or fail the test accordingly.

        ![positional accuracy iteration 5](images/hck-winb-fig3-positionalaccuracy-iteration5.jpg)

        The key criteria to look for in this iteration are *hooks*, when you lift your finger. In the circled example, the contact jittered a significant amount to the left on contact lift. Consider any hook larger than a quarter of a grid as a failure.

6.  Iteration 6:

    1.  Draw a curved line by using your finger.

    2.  Without lifting, pause for one second.

    3.  Click the physical button, and lift.

    4.  Verify the visualization matches your curves and does not jitter on lift, as shown in *Figure 4. Positional Accuracy, Iteration 6*. Manually pass or fail the test accordingly.

        ![positional accuracy iteration 6](images/hck-winb-fig4-positionalaccuracy-iteration6.jpg)

        In this test, there is extra data when the physical button is clicked, so it’s harder to judge by looking at the data itself. Instead, watch the mouse cursor as you click and lift. If it moves more than a couple of pixels as you click, consider it a failure. In the circled example, the cursor moved significantly on click and should be considered a failure.

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
<td><p><strong>ptlogo.exe Test.PositionalAccuracyManual.json</strong></p></td>
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
<td><p>Test.PositionalAccuracyManual.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Test.PositionalAccuracyManual%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




