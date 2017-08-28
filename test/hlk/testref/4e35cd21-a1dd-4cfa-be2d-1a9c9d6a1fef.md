---
title: USB Device Connection S3+S4+Connected Standby
Description: USB Device Connection S3+S4+Connected Standby
ms.assetid: ce83822f-7664-438d-985a-e4d429d6872c
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# USB Device Connection S3+S4+Connected Standby

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/ce83822f-7664-438d-985a-e4d429d6872c">http://msdn.microsoft.com/en-us/library/windows/hardware/ce83822f-7664-438d-985a-e4d429d6872c</b>


</conditional_block> This test verifies that a USB-based device becomes available within 500 milliseconds after the test system exits the S3 or S4 power state or connected standby. The test also confirms that there were not any errant device disconnects during system resume.

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
<li>Device.Connectivity.UsbDevices.DeviceAttachLessThan100ms</li>
<li>Device.Connectivity.UsbDevices.MustBeFunctionalAfterResume</li>
<li>Device.Connectivity.UsbDevices.MustResumeWithoutForcedReset</li>
<li>Device.Connectivity.UsbDevices.MustSignalAttachWithin500ms</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_server"></tla> x64</li>
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
<td>10</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Compatibility</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>15</td>
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

-   <xref rid="p_hlk_test.device_connectivity_additional_documentation">Device.Connectivity additional documentation</b>

## More information

## Parameters

| Parameter name                            | Parameter description                   |
|-------------------------------------------|-----------------------------------------|
| <mark type="bullet_intro">WDKDeviceID</b> | Device ID of the device under test      |
| <mark type="bullet_intro">queryIsUsb3</b> | QueryIsUsb3 of device under test        |
| <mark type="bullet_intro">DFUDevice</b>   | Uses DFU to reflash firmware on connect |

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.



