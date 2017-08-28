---
title: Windows Touch Test
Description: Windows Touch Test
ms.assetid: 9bb7a4cd-287b-4243-bfee-3fc690fba76e
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Touch Test

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/9bb7a4cd-287b-4243-bfee-3fc690fba76e">http://msdn.microsoft.com/en-us/library/windows/hardware/9bb7a4cd-287b-4243-bfee-3fc690fba76e</b>


</conditional_block>

This test verifies that a Windows® Touch device meets requirements.

## Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><mark type="bullet_intro">Specifications</b></td>
<td><ul>
<li>Device.Input.Digitizer.Touch.CustomGestures</li>
<li>Device.Input.Digitizer.Touch.HIDCompliant</li>
<li>Device.Input.Digitizer.Touch.ThirdPartyDrivers</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_desktop"></tla> ARM64</li>
</ul></td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Supported Releases</b></td>
<td><ul>
<li><tla rid="win_10"></tla></li>
<li><tla rid="win_10_th2"></tla></li>
<li><tla rid="win_10_rs1"></tla></li>
<li>Windows 10, version 1703</li>
<li>Windows 10, version 1709</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Expected run time (in minutes)</b></td>
<td>2</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Compatibility</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>2</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Requires reboot</b></td>
<td>false</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Requires special configuration</b></td>
<td>false</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Type</b></td>
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.device_input_additional_documentation">Device.Input additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.windows_touch_testing_prerequisites">Windows Touch Testing Prerequisites</b>.

The Windows Touch Test combines a set of simple manual tests. Measured requirements include: having a bezel that is flush with the display, specifying physical dimensions that match the device's true physical dimensions, and passing the HID Validator tool's static test. (The HID Validator tool installed together with the Windows HLK).

## Flush Bezel

The bezel requirement (System.Client.Digitizer.Touch.Bezel) helps ensure easy access to the edge of the screen, which is used to display the **Charms Bar** and to switch applications. It also provides an optimal set of conditions to use the thumb keyboard. USB and I2C buses are required because they support the HID standard upon which the Windows touch infrastructure is based. FFU is required.

For a Tablet device, ensure that the bezel is flush with the display (the bezel must not be taller than the display).

## Physical Dimensions

The physical dimensions of the device must support system gestures and general touch interactions (Device.Digitizer.Touch.PhysicalDimension). For example, the momentum of a touch gesture depends on the physical distance moved and the length of that movement.

This test verifies that the physical dimensions that are reported by the HID descriptor match the true physical dimensions of the visible screen area. Discrepancies affect system gestures and UI elements, which rely on physical size information. We strongly recommend that you use the dimensions that are specified by the display manufacturer. The test itself relies on this information to size elements appropriately. The test will be affected by errors; for example, targets that are intended to be 20mm apart might resolve to being 22mm apart. The WTTL does not make allowances for devices that report physical size values that differ from the true measurement by more than 2mm.

## High Quality Touch Digitizer Input

To run this test, the HID descriptor must be stored in the device firmware. The Windows Hardware Lab Kit (Windows HLK) includes the HID Validator tool. Before you run this test, we recommend that you review **Windows Hardware Certification Requirements** and the HID Validator documentation that is installed together with the HID Validator tool.

To run the test, double-click **HidValidator.exe** on the touch device. The tool ensures that the descriptor conforms to the HID specification.

## Power States

For a discussion of power-state requirements (Device.Digitizer.Touch.PowerStates), see <xref hlink="http://go.microsoft.com/fwlink/?LinkID=287026">Power Handling for Windows 8 Touch Controllers</b>.

You can use the WTTL to check the ability of a device to traverse power states by using the following procedure:

1.  If applicable, put the device into the **Connected Standby** state. Otherwise, power the device off.

2.  Place any type of contact on any number on the screen and hold for 10 to 15 seconds.

3.  If the device is in the **Connected Standby** state, wake the device while maintaining contact. If the device is powered off, power on the device while maintaining contact.

4.  After the machine has booted, ensure that no ghost touches exist. Attempt to use touch input.

5.  If applicable to the device, repeat these steps for **Sleep (S3)** state.

If no ghost touches exist, and if touch input can be used as expected to control the machine, then the device passes this test. Otherwise, it fails the test.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref local="hiderrors" rid="p_hlk_test.how_to_run_the_windows_hck_tests_for_touch_and_pen_devices">How to run the Windows HLK Tests for Touch and Pen Devices</b>.

## More information

## Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Logo3.exe -config Other.json</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

## File list

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
<td><p>Logo3.exe</p></td>
<td><p><placeholder>&lt;testbinroot&gt;</placeholder>\digitizer\Win8Touch</p></td>
</tr>
<tr class="even">
<td><p>Other.json</p></td>
<td><p><placeholder>&lt;testbinroot&gt;</placeholder>\digitizer\Win8Touch</p></td>
</tr>
</tbody>
</table>





