---
title: Manual Test - Verify eMMC is enumerated in mass storage mode
Description: Manual Test - Verify eMMC is enumerated in mass storage mode
ms.assetid: 63b65c06-1fba-47a7-9577-93eb650dd829
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Manual Test - Verify eMMC is enumerated in mass storage mode

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/63b65c06-1fba-47a7-9577-93eb650dd829">http://msdn.microsoft.com/en-us/library/windows/hardware/63b65c06-1fba-47a7-9577-93eb650dd829</b>


</conditional_block> This is a manual test & it should be run outside HLK by following the manual instructions provided below. If this test is run as an automated test from HLK studio/controller, the test will pass by default without testing any functionality. --------------------------------------------------------------------------------------------------------- Manual instructions to run this test: 1. Make sure the device is powered off and all the DIP switches on the debug board are in the OFF position. Note that you do not need a debug board to put the device in MSM. 2. If you're using KDSERIAL, disconnect the serial cable or close WinDbg as it interferes with mass storage hotkeys. 3. Position the phone on the debug board and plug in power but do not press the power key on the device or the debug board. 4. Plug in the micro-USB cable into the USB2 portion of the USB3 port. This acts as a wake event for the device. 5. Press and hold the Vol+ and the Camera buttons down during UEFI boot. This should bring up UEFI BDS menu. 6. The device should reboot into mass storage mode and a new physical disk would appear in the disk manager (diskmgmt.msc). NOTE: Common mistake: Device would neither auto power on nor enter mass storage mode if the micro-USB cable is inserted into USB2 port. --------------------------------------------------------------------------------------------------------- Note: This test is associated with an optional feature: System.Client.MobileHardware. It will not appear in the list of tests in HLK studio for a system target by default. Optional: To enable it to show up in the list of tests for system target in HLK studio, run the following steps: 1\] In HLK Studio, select system target 2\] Right click on the selected system target 3\] Click on Add\\Modify Features 4\] A Device Feature List window will open up 5\] Scroll down to select the feature named: System.Client.MobileHardware 6\] Click on the check box to enable this optional feature 7\] This test will now appear in the list of applicable tests for the selected system target in HLK studio

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



