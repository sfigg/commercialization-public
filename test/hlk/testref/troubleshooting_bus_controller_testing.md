---
title: Troubleshooting Bus Controller Testing
Description: Troubleshooting Bus Controller Testing
ms.assetid: 8784dc59-3a52-48b1-9568-3b6b9962bbdf
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshooting Bus Controller Testing

## 

To troubleshoot bus controller test issues, follow these steps:

1.  Review the following Windows Hardware Lab Kit (Windows HLK) topics:

    -   <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>

    -   One of the following topics, depending on the type of bus controller that you are testing:

        -   <xref rid="p_hlk_test.bluetooth_controller_testing_prerequisites">Bluetooth Controller Testing Prerequisites</b>

        -   <xref rid="p_hlk_test.proximity_controller_testing_prerequisites">Proximity Controller Testing Prerequisites</b>

        -   <xref rid="p_hlk_test.secure_digital_host_controller_testing_prerequisites">Secure Digital Host Controller Testing Prerequisites</b>

        -   <xref rid="p_hlk_test.usb_bus_controller_testing_prerequisites">USB Bus Controller Testing Prerequisites</b>

        -   <xref rid="p_hlk_test.witt_i2c_testing_prerequisites">WITT I2C Testing Prerequisites</b>

2.  Verify that you have installed the latest Windows HLK filters and kit updates. For more information, see <xref rid="p_hlk.windows_hardware_lab_kit_filters">Windows Hardware Lab Kit Filters</b>.

3.  For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

4.  If you cannot obtain a successful test result, contact <xref rid="p_hlk.windows_hlk_support">Windows HLK Support</b>.

## Bluetooth controller test troubleshooting

The following table describes common issues that can occur during Bluetooth controller testing:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Issue</th>
<th>Resolution</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Failures finding Bluetooth devices during an Bluetooth Inquiry command</p></td>
<td><p>This failure can happen when you run a test in a noisy environment. Rerunning the test usually fixes this error. You can also try to bring the radios closer together. Make sure that the radios have a clear line of sight. Turn off other radios that may be causing interference.</p></td>
</tr>
<tr class="even">
<td><p>Failures connecting Bluetooth devices during Bluetooth Inquiry commands</p></td>
<td><p>This failure occurs when the test times out before the devices could be reconnected. Rerunning the test usually fixes this error.</p></td>
</tr>
</tbody>
</table>

## WITT I<sup>2</sup>C controller test troubleshooting

The following table describes common issues that can occur during Windows Inter-Integrated Circuit (I<sup>2</sup>C) Testing Tool (WITT) controller testing:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Issue</th>
<th>Resolution</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>All tests failed with error message <strong>WITT device test interface is not found</strong>.</p></td>
<td><p>Review <xref rid="p_hlk_test.witt_i2c_testing_prerequisites">WITT I2C Testing Prerequisites</b>. Make sure that the WITT test peripheral driver is installed, ACPI table modified with sample ASL and four instances of WITT Test Driver are found in Windows HLK Device Manager.</p></td>
</tr>
<tr class="even">
<td><p>WITT firmware needs to be updated. The WITT firmware binary (i2c9665a.iic) is released as part of. When you install a new Windows HLK package, you should update the WITT firmware.</p></td>
<td><p>See <xref rid="p_hlk_test.witt_i2c_testing_prerequisites">WITT I2C Testing Prerequisites</b> for instructions on how to upgrade the WITT firmware.</p></td>
</tr>
<tr class="odd">
<td><p>WITT device is in a bad state. Typically, the green LED on a WITT device should be lit when there is no traffic, and should blink when there is traffic. Otherwise, the WITT or I<sup>2</sup>C controller might be in a bad state.</p></td>
<td><p>Unplug the WITTs USB cable to power-cycle the device. If the controller is still not working, reboot the testing system.</p></td>
</tr>
</tbody>
</table>

<seealso> <xref rid="p_hlk_test.device_buscontroller_tests">Device.BusController Tests</b> <xref rid="p_hlk.troubleshooting_windows_hlk">Troubleshooting Windows HLK</b> </seealso>



