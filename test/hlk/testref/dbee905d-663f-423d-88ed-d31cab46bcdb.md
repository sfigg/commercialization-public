---
title: Manual Test - Verify basic UEFI shell functionality
Description: Manual Test - Verify basic UEFI shell functionality
ms.assetid: fd40eb2a-e8e9-4c1e-b7dd-55e83df47f7e
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Manual Test - Verify basic UEFI shell functionality

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/fd40eb2a-e8e9-4c1e-b7dd-55e83df47f7e">http://msdn.microsoft.com/en-us/library/windows/hardware/fd40eb2a-e8e9-4c1e-b7dd-55e83df47f7e</b>


</conditional_block> This is a manual test & it should be run outside HLK by following the manual instructions provided below. If this test is run as an automated test from HLK studio/controller, the test will pass by default without testing any functionality. --------------------------------------------------------------------------------------------------------- Manual instructions to run this test: 1. Install serial comm application (for example putty.exe from http://www.putty.org) 2. Hook the device up to a serial debug connection. 3. Hold down ‘+’ and Camera button to go to UEFI menu 4. Navigate to Select “Enter Shell” (9) using ‘-‘ button. 5. Connect to device using Putty.exe 6. From putty, run command “memmap” 7. Verify memory map output is shown in putty.exe as well as on phone screen. a. Memmap summary should be in following format though values will be different: Reserved : 27,622 Pages (113,139,712) LoaderCode: 213 Pages (872,448) LoaderData: 0 Pages (0) BS\_Code : 362 Pages (1,482,752) BS\_Data : 4,772 Pages (19,546,112) RT\_Code : 40 Pages (163,840) RT\_Data : 31 Pages (126,976) ACPI Recl : 10 Pages (40,960) ACPI NVS : 1 Pages (4,096) MMIO : 3 Pages (12,288) Available : 229,093 Pages (938,364,928) Total Memory: 1024 MB (1,073,754,112 Bytes) --------------------------------------------------------------------------------------------------------- Note: This test is associated with an optional feature: System.Client.MobileHardware. It will not appear in the list of tests in HLK studio for a system target by default. Optional: To enable it to show up in the list of tests for system target in HLK studio, run the following steps: 1\] In HLK Studio, select system target 2\] Right click on the selected system target 3\] Click on Add\\Modify Features 4\] A Device Feature List window will open up 5\] Scroll down to select the feature named: System.Client.MobileHardware 6\] Click on the check box to enable this optional feature 7\] This test will now appear in the list of applicable tests for the selected system target in HLK studio

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
<li>System.Client.MobileHardware.BasicFunctionality</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_mobile"></tla> ARM</li>
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
<td>manual</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.system_client_additional_documentation">System.Client additional documentation</b>

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.



