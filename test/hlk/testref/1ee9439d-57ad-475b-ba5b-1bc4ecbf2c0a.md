---
title: iSCSI Boot Firmware Table Test (LOGO)
Description: iSCSI Boot Firmware Table Test (LOGO)
ms.assetid: bf46d5cf-8d5e-4678-a9ce-7c8be3b42574
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# iSCSI Boot Firmware Table Test (LOGO)

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/bf46d5cf-8d5e-4678-a9ce-7c8be3b42574">http://msdn.microsoft.com/en-us/library/windows/hardware/bf46d5cf-8d5e-4678-a9ce-7c8be3b42574</b>


</conditional_block>

This test verifies that the iSCSI Boot Firmware table is available and is valid.

The iSCSI Boot Firmware Table (iBFT) is a block of information residing in memory that contains different entries that are required by the iSCSI boot process.

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
<li>Device.Storage.Controller.Iscsi.iSCSIBootComponent.FwTable</li>
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
<td>10</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Development</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>10</td>
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

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.iscsi_boot_component_testing_prerequisites">iSCSI Boot Component Testing Prerequisites</b>.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see: <xref rid="p_hlk_test.troubleshooting_devicestorage_testing">Troubleshooting Device.Storage Testing</b>.

## More information

iSCSI Boot Firmware Table test (iBFTest) consists of two binaries. A user-mode binary (ibftestwrap.exe) and a kernel-mode binary (ibftest.sys). Both binaries are required for the test to run successfully.

1.  ibftestwrap.exe loads ibftest.sys into kernel mode.

2.  ibftest.sys checks if iBFT exists in memory.

3.  If iBFT exists in memory, ibftest.sys will get a copy of the table.

4.  ibftest.sys validates the table and returns results to ibftestwrap.exe.

5.  ibftestwrap.exe in turn provides a friendly log.

6.  The log contains either the table if it is available and valid or a detailed error information if the table is unavailable or invalid.

iBFTest ensures that the iBFT is present and available to the operating system for a consistent flow of the boot process. It also validates the various entries within the table and ensures that the table is intact. It ensures that all the information is compliant with the specification

To run the test, do the following:

1.  Copy iBFTest binaries: (Or make sure iBFTest is available within HLK Studio)

    1.  Copy ibftestwrap.exe to test working directory.

    2.  Copy ibftest.sys to test working directory.

2.  Run ibftestwrap.exe

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
<td><p><strong>ibftest.exe</strong></p></td>
<td></td>
</tr>
</tbody>
</table>

>[!NOTE]
For command-line help for this test binary, type <inline_code devlang="cpp">/h</inline_code>


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
<td><p>Ibftest.exe</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\DriversTest\storage\wdk\ibftest\</p></td>
</tr>
<tr class="even">
<td><p>Ibftest.sys</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\DriversTest\storage\wdk\ibftest\</p></td>
</tr>
<tr class="odd">
<td><p>Ibftestwrap.exe</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\DriversTest\storage\wdk\ibftest\</p></td>
</tr>
</tbody>
</table>

## Parameters

| Parameter name                                   | Parameter description                      |
|--------------------------------------------------|--------------------------------------------|
| <mark type="bullet_intro">LLU\_NetAccessOnly</b> | User account for accessing test fileshare. |
| <mark type="bullet_intro">LLU\_LclAdminUsr</b>   | User account for running the test.         |





