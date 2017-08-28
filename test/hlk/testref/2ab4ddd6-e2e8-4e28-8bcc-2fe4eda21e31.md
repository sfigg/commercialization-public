---
title: Windows Touch Response Latency (Down) Test
Description: Windows Touch Response Latency (Down) Test
ms.assetid: fd2fb077-8ba2-4acc-a15f-63948f5f1c0d
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Touch Response Latency (Down) Test

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/fd2fb077-8ba2-4acc-a15f-63948f5f1c0d">http://msdn.microsoft.com/en-us/library/windows/hardware/fd2fb077-8ba2-4acc-a15f-63948f5f1c0d</b>


</conditional_block>

This test verifies that a Windows Touch device meets the response latency requirements for both idle and active states.

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
<li>Device.Input.Digitizer.Touch.Latency</li>
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
<td>30</td>
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

-   <xref rid="p_hlk_test.device_input_additional_documentation">Device.Input additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.windows_touch_testing_prerequisites">Windows Touch Testing Prerequisites</b>.

Similar to response rate, low response latency plays a large role in ensuring fast and fluid motion. Conversely, a high degree of response latency breaks the illusion that the user is manipulating a physical object.

This test uses specialized hardware to measure the latency in touch packet delivery under two conditions: touch-down (stationary) and panning (continuous reporting, in motion).

To learn about the hardware and about associated procedures, see <xref hlink="http://go.microsoft.com/fwlink/?LinkID=287027">How to Measure Touch Panning Latency</b> and <xref hlink="http://go.microsoft.com/fwlink/?LinkID=287028">How to Measure Touch Down Latency</b>.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see **Troubleshooting Device.Digitizer Testing**.

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
<td><p><strong>audiotouch.exe</strong></p></td>
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
<td><p>audiotouch.exe</p></td>
<td><p><placeholder>&lt;testbinroot&gt;</placeholder>\digitizer\Win8Touch</p></td>
</tr>
</tbody>
</table>





