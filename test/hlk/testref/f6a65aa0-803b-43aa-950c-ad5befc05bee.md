---
title: TPM 2.0 EK Certificate Tests
Description: TPM 2.0 EK Certificate Tests
ms.assetid: ef2c7c50-1512-4774-86b8-4557fbce1ae4
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# TPM 2.0 EK Certificate Tests

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/ef2c7c50-1512-4774-86b8-4557fbce1ae4">http://msdn.microsoft.com/en-us/library/windows/hardware/ef2c7c50-1512-4774-86b8-4557fbce1ae4</b>


</conditional_block> These tests test various aspects of the TPM EK Certificate.

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
<li>Device.TrustedPlatformModule.TPM20.EKCert</li>
<li>System.Fundamentals.TPM20.TPM20</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_mobile"></tla> ARM</li>
<li><tla rid="win_threshold_desktop"></tla> ARM64</li>
<li><tla rid="win_threshold_mobile"></tla> ARM64</li>
<li><tla rid="win_threshold_server"></tla> x64</li>
</ul></td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Supported Releases</b></td>
<td><ul>
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
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.system_fundamentals_additional_documentation">System.Fundamentals additional documentation</b>

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.



