---
title: E3 Disk Benchmark
Description: E3 Disk Benchmark
ms.assetid: a8dd13ab-72f7-4f59-8d23-7dc53c77d0dc
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# E3 Disk Benchmark

<conditional_block><conditions><docset value="standalone"></docset></conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/a8dd13ab-72f7-4f59-8d23-7dc53c77d0dc">http://msdn.microsoft.com/en-us/library/windows/hardware/a8dd13ab-72f7-4f59-8d23-7dc53c77d0dc</b>


</conditional_block> Learns disk model coefficients for Energy Estimation Engine

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
<li>System.Fundamentals.EnergyEstimation.Discretional</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
</ul></td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Supported Releases</b></td>
<td><ul>
<li><tla rid="win_10"></tla></li>
<li><tla rid="win_10_th2"></tla></li>
<li><tla rid="win_10_rs1"></tla></li>
<li>Windows 10, version 1703</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Expected run time (in minutes)</b></td>
<td>600</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Benchmark</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>0</td>
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

## More information

## Parameters

| Parameter name                                | Parameter description                                     |
|-----------------------------------------------|-----------------------------------------------------------|
| <mark type="bullet_intro">RealDriveLetter</b> | User needs to specify the drive letter of disk under test |
| <mark type="bullet_intro">FakeDriveLetter</b> | User needs to specify the drive letter of fake disk       |

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.



