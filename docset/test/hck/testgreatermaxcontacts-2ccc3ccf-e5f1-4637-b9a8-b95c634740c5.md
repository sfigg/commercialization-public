---
author: joshbax-msft
title: Test.GreaterMaxContacts
description: Test.GreaterMaxContacts
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b005214e-4082-4c80-bbbe-81afce3f55c3
---

# Test.GreaterMaxContacts


This test verifies that the device properly reports contacts when the number of contacts on the device exceeds the maximum supported number of contacts.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.Reliability.ContactSuppression</p>
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

1.  Following the instructions on the screen, place a number of fingers on the touchpad equal to the supported maximum contacts (as seen in the onscreen instructions). These contacts should be visualized on screen on the tool.

    -   Move contacts around slightly, so it is clear that they are being continuously reported.

    -   If the tool does not show visualization for all the contacts, press **F** to fail the test.

2.  Keeping the maximum supported contacts on the touchpad, place one additional contact on the touchpad.

3.  Verify that as soon as this max+1 contact comes down, all contacts should be automatically lifted, such that all visualization in PTLogo stops.

4.  Lift each finger, 1 at a time. Verify that no reporting occurs until after all contacts have lifted.

5.  Manually pass the iteration if these conditions have been met by pressing **P**. Otherwise, press **F** to fail the build.

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
<td><p><strong>ptlogo.exe Test.GreaterMaxContacts.json</strong></p></td>
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
<td><p>Test.GreaterMaxContacts.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Test.GreaterMaxContacts%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




