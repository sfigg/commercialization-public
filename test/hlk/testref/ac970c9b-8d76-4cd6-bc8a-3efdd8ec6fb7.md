---
title: Thin Provisioning Threshold and Resource Exhaustion Test (LOGO)
Description: Thin Provisioning Threshold and Resource Exhaustion Test (LOGO)
ms.assetid: 1e222537-4b7e-4a75-8b01-09cf49534f3c
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Thin Provisioning Threshold and Resource Exhaustion Test (LOGO)

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/1e222537-4b7e-4a75-8b01-09cf49534f3c">http://msdn.microsoft.com/en-us/library/windows/hardware/1e222537-4b7e-4a75-8b01-09cf49534f3c</b>


</conditional_block>

This test verifies that target devices with thin provisioning feature meet Windows® requirements.

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
<li>Device.Storage.Hd.ThinProvisioning.BasicFunction</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
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
<td>300</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Compatibility</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>300</td>
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

-   <xref rid="p_hlk_test.device_storage_additional_documentation">Device.Storage additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.hard_disk_drive_testing_prerequisites">Hard Disk Drive Testing Prerequisites</b>.

Before you run the test, please make sure the thin provisioned LUN to be online initialized raw dis. Also, you should set the threshold for the thin provisioned LUN to be 70 percent (default). If the threshold is fixed, you should specify that threshold when running the test.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_devicestorage_testing">Troubleshooting Device.Storage Testing</b>.

## More information

The end to end scenario test would do threshold and resource exhaustion test. The main approach is to properly trigger the threshold notification/permanent resource exhaustion and check the sense key. When threshold is hit, we will get the log page to calculate whether the value to be at least no less than the value set for threshold. For temporary resource exhaustion, we just make this scenario to be optional, since some storage device may handle this scenario decently not to return any sense key.

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
<td><p><strong>Thinprovision.exe /scenario exhaustion /thindisk &quot;[TPDiskDeviceObjLink]&quot; /percent “[TPDiskThresholdPercent]” /logo</strong></p></td>
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
<td><p>Thinprovision.exe</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\driverstest\storage\wdk\thinprovision\</p></td>
</tr>
</tbody>
</table>

## Parameters

| Parameter name                                       | Parameter description                  |
|------------------------------------------------------|----------------------------------------|
| <mark type="bullet_intro">WDKDeviceID</b>            |                                        |
| <mark type="bullet_intro">TPDiskDeviceObjLink</b>    | The thin provisioned LUN               |
| <mark type="bullet_intro">LLU\_NetAccessOnly</b>     |                                        |
| <mark type="bullet_intro">LLU\_LclAdminUsr</b>       |                                        |
| <mark type="bullet_intro">Destructive</b>            | (0,1) 0=Passive, 1=Destructive         |
| <mark type="bullet_intro">TPDiskThresholdPercent</b> | The percentage of thin provisioned LUN |





