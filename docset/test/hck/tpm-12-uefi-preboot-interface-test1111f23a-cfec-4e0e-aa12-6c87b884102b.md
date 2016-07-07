---
author: joshbax-msft
title: TPM 1.2 UEFI Preboot Interface Test
description: TPM 1.2 UEFI Preboot Interface Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 260fe3ca-6a0f-4601-a608-6b9558768eb0
---

# TPM 1.2 UEFI Preboot Interface Test


This test uses UEFI protocols to test interaction with the TPM. The test is run on UEFI systems with a TPM but not on PCAT systems. This test uses UEFI protocols to verify that a TPM is present, test the RNG command in pre-boot, locate and verify the TCPA table, test the UEFI pre-boot interface, test the Platform Reset Attack Mitigation UEFI interface, ensure that PCRs do not change when devices are enumerated, and test performing the extend action. The test will restart the system one time at its completion.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.TrustedPlatformModule.TPMComplieswithTCGTPMMainSpecification System.Fundamentals.TrustedPlatformModule.TPMEnablesFullUseThroughSystemFirmware System.Fundamentals.TrustedPlatformModule.TPMRequirements System.Fundamentals.TrustedPlatformModule.Windows7SystemsTPM</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, review the prerequisites in [TPM System Fundamentals Testing Prerequisites](tpm-system-fundamentals-testing-prerequisites.md).

This test requires secure boot debug policy to be installed on Windows RT devices, and secure boot to be turned off on non-Windows RT devices.

This test has no additional test parameters.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

To provide more information for troubleshooting failures in this test, you can enable tracing of the TPM. Refer to the steps provided in the [TCG TPM Integration Test (Manual)](tcg-tpm-integration-test--manual-ac56901f-0f66-4013-b156-fe4b036cce60.md).

 

 






