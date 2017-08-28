---
title: Mobile Print - Rendering Tests (Device Processed)
Description: Mobile Print - Rendering Tests (Device Processed)
ms.assetid: 4addd258-39ba-45bb-b52b-43a1925abbdc
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Mobile Print - Rendering Tests (Device Processed)

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/4addd258-39ba-45bb-b52b-43a1925abbdc">http://msdn.microsoft.com/en-us/library/windows/hardware/4addd258-39ba-45bb-b52b-43a1925abbdc</b>


</conditional_block> The Mobile Print Rendering Tests test printing to PWG-Raster, PCLm, XPS, and OXPS compatible printers. The tests produce numerous pages of output at different DPI sizes, page sizes, page orientations, page orderings, and color formats suported by the printer (as defined by the PrintDeviceCapabilities).

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
<li>Device.Imaging.Printer.Mobile.PDL</li>
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
<td>30</td>
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
<td>manual</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.device_imaging_additional_documentation">Device.Imaging additional documentation</b>

## More information

## Parameters

| Parameter name                                 | Parameter description   |
|------------------------------------------------|-------------------------|
| <mark type="bullet_intro">WDKWSDServiceURL</b> | WSD Printer Service URL |
| <mark type="bullet_intro">WDKWSDServiceID</b>  | WSD Printer Service Id  |
| <mark type="bullet_intro">WDKWSDDeviceID</b>   | WSD Printer Device Id   |

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.



