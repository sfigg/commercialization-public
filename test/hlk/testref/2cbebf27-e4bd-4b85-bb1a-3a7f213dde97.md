---
title: TPM 1.2 TCG OS Interface Server Test
Description: TPM 1.2 TCG OS Interface Server Test
ms.assetid: 5e2f2d0d-afd5-4225-b519-de6ae1dbfdce
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# TPM 1.2 TCG OS Interface Server Test

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/5e2f2d0d-afd5-4225-b519-de6ae1dbfdce">http://msdn.microsoft.com/en-us/library/windows/hardware/5e2f2d0d-afd5-4225-b519-de6ae1dbfdce</b>


</conditional_block>

This test validates that the integration of the Trusted Platform Module (TPM) on the system motherboard meets the BitLocker Drive Encryption feature requirements for Windows.

This test is run after a full boot and exercises the TPM and BIOS base, including taking ownership of the TPM, but excluding the setting of physical presence and ACPI interfaces. ACPI physical presence requests to Force Clear, Enable, and Activate the TPM are made both at the beginning (Setup phase) and end (Cleanup phase) of the test, requiring the test operator to be present to accept the requests.

The test will restart the computer several times.

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
<li>System.Fundamentals.TrustedPlatformModule.TPMEnablesFullUseThroughSystemFirmware</li>
<li>System.Fundamentals.TrustedPlatformModule.Windows7SystemsTPM</li>
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
<td>2</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Compatibility</td>
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

-   <xref rid="p_hlk_test.system_fundamentals_additional_documentation">System.Fundamentals additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.wdtf_system_fundamentals_testing_prerequisites">WDTF System Fundamentals Testing Prerequisites</b>.

Before you run the test:

-   Set the TPM status in the TPM Management Console (Start Screen-&gt;Search(Apps)-&gt;tpm.msc) as “The TPM is ready for use“.

-   Make sure that TPM is enabled, active, and owned.

-   Confirm that NoPPIClear is set to true.

This test has no additional test parameters.

If BitLocker is enabled on the test machine, it should be disabled before running this test. If the TPM status is “The TPM is ready for use, with reduced functionality” you must ‘Clear the TPM’ and then ‘Prepare the TPM’. Both actions will require a reboot and approval of the TPM state change during reboot. This test may not resume automatically after going into S4 state (Hibernate), in which case, you must restart the test machine.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_system_fundamentals_testing">Troubleshooting System Fundamentals Testing</b>.

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Lab Kit (Windows HLK) Studio.

To provide more information for troubleshooting failures in this test, you can enable tracing of the TPM. Refer to the steps provided in the <xref hlink="https://msdn.microsoft.com/en-us/library/Hh998628.aspx">TCG TPM Integration Test (Manual)</b>.



