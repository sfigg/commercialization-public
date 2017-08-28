---
title: IPSec TOv2 Logo Test
Description: IPSec TOv2 Logo Test
ms.assetid: f573e5d7-9933-49e9-9160-68cd61cb6fee
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# IPSec TOv2 Logo Test

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/f573e5d7-9933-49e9-9160-68cd61cb6fee">http://msdn.microsoft.com/en-us/library/windows/hardware/f573e5d7-9933-49e9-9160-68cd61cb6fee</b>


</conditional_block>

This test runs the Task Offload Logo test.

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
<li>Device.Network.LAN.IPsec.IPsec</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
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
<td>2</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Development</td>
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

-   <xref rid="p_hlk_test.device_network_additional_documentation">Device.Network additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.lan_testing_prerequisites">LAN Testing Prerequisites</b>.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_devicenetwork_testing">Troubleshooting Device.Network Testing</b>.

## More information

## Command syntax

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
<td><p><strong>CPerseus.exe /module:[TestDirectory]\Suites\TOv2Logo.xml /type:”IPSec Scenario Testing Add-in”</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

>[!NOTE]
For command-line help for this test binary, type **/h**.


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
<td><p>CPerseus.exe</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\</p></td>
</tr>
<tr class="even">
<td><p>TOv2Logo.xml</p></td>
<td><p><placeholder>&lt;SystemDrive&gt;</placeholder>\IkeTest\Suites</p></td>
</tr>
</tbody>
</table>

## Parameters

| Parameter name                                                      | Parameter description                                                                     |
|---------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| <mark type="bullet_intro">queryTestNicMacAddress</b>                | Mac address of test network adapter                                                       |
| <mark type="bullet_intro">ReplacePatternsInFile.ps1</b>             |                                                                                           |
| <mark type="bullet_intro">Win7\_ReplaceNicNameInTest.ps1</b>        |                                                                                           |
| <mark type="bullet_intro">IsWin7.ps1</b>                            |                                                                                           |
| <mark type="bullet_intro">queryTestNicClass</b>                     | Device class of test network adapter                                                      |
| <mark type="bullet_intro">Win7\_updateNicOffloadStateById.vbs</b>   |                                                                                           |
| <mark type="bullet_intro">Win7\_updateNicOffloadStateByName.vbs</b> |                                                                                           |
| <mark type="bullet_intro">TestDirectory</b>                         |                                                                                           |
| <mark type="bullet_intro">Win7\_updateNicOffloadStateByAddr.vbs</b> |                                                                                           |
| <mark type="bullet_intro">SupportNetConnectionID</b>                | will hold the returned value from the detect job                                          |
| <mark type="bullet_intro">TestNetConnectionID</b>                   | will hold the returned value from the detect job                                          |
| <mark type="bullet_intro">EnableTOv2Support.ps1</b>                 |                                                                                           |
| <mark type="bullet_intro">EnableTOv2Client.ps1</b>                  |                                                                                           |
| <mark type="bullet_intro">queryTestNicDeviceID</b>                  |                                                                                           |
| <mark type="bullet_intro">MsgNICIPSupport</b>                       | IP of Message NIC on Support machine, to be populated by detect.wsf before installer runs |
| <mark type="bullet_intro">MsgNICIPClient</b>                        | IP of Message NIC on Client machine, to be populated by detect.wsf before installer runs  |





