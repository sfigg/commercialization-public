---
title: DE OOBE_EOW Sequence Tests
Description: DE OOBE_EOW Sequence Tests
ms.assetid: b7567c09-e039-41a9-818d-feb98f6b0451
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# DE OOBE_EOW Sequence Tests

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/b7567c09-e039-41a9-818d-feb98f6b0451">http://msdn.microsoft.com/en-us/library/windows/hardware/b7567c09-e039-41a9-818d-feb98f6b0451</b>


</conditional_block>

This test verifies that Encryption On Write (EOW) of the volumes is started after completion of OOBE. It also tests if Device Encryption is not blocked by the OEM by setting registry key PreventDeviceEncryption.

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
<li>System.Fundamentals.TPM.CS.ConnectedStandby</li>
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
<td>15</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Scenario</td>
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
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.system_fundamentals_additional_documentation">System.Fundamentals additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.wdtf_system_fundamentals_testing_prerequisites">WDTF System Fundamentals Testing Prerequisites</b>.

Secure boot should be enabled.

This test returns Pass or Fail.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_system_fundamentals_testing">Troubleshooting System Fundamentals Testing</b>.

If this test fails, review the test log from Windows Hardware Lab Kit (Windows HLK) Studio.

1.  Check test output directly from command prompt when the test runs or open te.wtl in the HLK Manager.

2.  If a test script fails, check the BitLocker status:

    -   Manage-bde –status \[volume\]

3.  Collect BitLocker event logs from event viewer at two locations:

    -   Filter \\Windows logs\\System logs by event sources started with BitLocker

    -   Applications and Services Logs\\Microsoft\\Windows\\BitLocker-API\\Management

4.  Check TCG logs

    -   Collect TCG log (\*.txt).

    -   Compare multiple copies of the TCG log and see whether PCR \[7, 11\] are consistent across reboot and hibernate.

    -   Make sure WHLK tests with TPM in the name pass.





