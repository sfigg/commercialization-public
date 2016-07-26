---
author: joshbax-msft
title: TPM 1.2 TCG OS Interface Server Test
description: TPM 1.2 TCG OS Interface Server Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1812f53b-64e9-4b00-a98a-2fd4a23be781
---

# TPM 1.2 TCG OS Interface Server Test


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
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.TrustedPlatformModule.TPMEnablesFullUseThroughSystemFirmware System.Fundamentals.TrustedPlatformModule.Windows7SystemsTPM</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

Before you run the test:

-   Set the TPM status in the TPM Management Console (Start Screen-&gt;Search(Apps)-&gt;tpm.msc) as “The TPM is ready for use“.

-   Make sure that TPM is enabled, active, and owned.

-   Confirm that NoPPIClear is set to true.

This test has no additional test parameters.

If BitLocker is enabled on the test machine, it should be disabled before running this test. If the TPM status is “The TPM is ready for use, with reduced functionality” you must ‘Clear the TPM’ and then ‘Prepare the TPM’. Both actions will require a reboot and approval of the TPM state change during reboot. This test may not resume automatically after going into S4 state (Hibernate), in which case, you must restart the test machine.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

To provide more information for troubleshooting failures in this test, you can enable tracing of the TPM. Refer to the steps provided in the [TCG TPM Integration Test (Manual)](tcg-tpm-integration-test--manual-ac56901f-0f66-4013-b156-fe4b036cce60.md).

 

 






