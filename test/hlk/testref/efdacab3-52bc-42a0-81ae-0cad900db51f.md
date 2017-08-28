---
title: Wlan Test - Wlan Device Capabilities Check - (WoW64 for ARM64)
Description: Wlan Test - Wlan Device Capabilities Check - (WoW64 for ARM64)
ms.assetid: 3bdf4d9d-59d4-42ef-933d-1655a83b58dc
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Wlan Test - Wlan Device Capabilities Check - (WoW64 for ARM64)

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/3bdf4d9d-59d4-42ef-933d-1655a83b58dc">http://msdn.microsoft.com/en-us/library/windows/hardware/3bdf4d9d-59d4-42ef-933d-1655a83b58dc</b>


</conditional_block> This automated test checks to make sure the WLAN device is properly reporting its capabilities to windows

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
<li>Device.Network.WLAN.SupportConnectionToAP.ConnectionToAP</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> ARM64</li>
<li><tla rid="win_threshold_mobile"></tla> ARM64</li>
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
<td>1</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Development</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>5</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Requires reboot</b></td>
<td>false</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Requires special configuration</b></td>
<td>true</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Type</b></td>
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.device_network_additional_documentation">Device.Network additional documentation</b>

## Running the test

This test is only valid on systems with a Wireless LAN adapter. This test does the following:

1.  Queries the system for the adapter capabilities

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/hh998592.aspx">Troubleshooting the HCK Environment</b>.

## More information

## Parameters

| Parameter name                                  | Parameter description          |
|-------------------------------------------------|--------------------------------|
| <mark type="bullet_intro">EnableTracing</b>     | Enable Tracing                 |
| <mark type="bullet_intro">queryTestDeviceID</b> | Device id of device under test |





