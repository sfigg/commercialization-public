---
author: joshbax-msft
title: TPM 1.2 TCG Physical Presence Interface 1.2 Test
description: TPM 1.2 TCG Physical Presence Interface 1.2 Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4a98cf42-608c-4958-a43f-88a342188263
---

# TPM 1.2 TCG Physical Presence Interface 1.2 Test


This test validates all of the supported PPI 1.2 commands on a TPM 1.2 implementation. The test disables auto provisioning of the TPM and requests a TPM clear operation from firmware.

This test will restart the system several times.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.TrustedPlatformModule.TPMComplieswithTCGTPMMainSpecification System.Fundamentals.TrustedPlatformModule.TPMRequirements</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~120 minutes</p></td>
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


Before you run the test:

-   Make sure that TPM is enabled, active, and owned.

-   Confirm that NoPPIClear is set to true.

This test has no additional test parameters.

All test systems cannot be domain joined.

If operation 18 (SetNoPPIClear\_True) is not allowed for the operating system, then the noPPIClear flag must be manually set in the BIOS.

If GetUserConfirmationStatus for operations 6 and 22 are not 4 (PPI not required) then PPI operations 16 and 18 respectively should be issued to set the noPPIProvision and noPPIClear flags.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

Sometimes results of operations 16 and 18 could be an error, you can ignore them.

To provide more information for troubleshooting failures in this test, you can enable tracing of the TPM. Refer to the steps provided in the [TCG TPM Integration Test (Manual)](tcg-tpm-integration-test--manual-ac56901f-0f66-4013-b156-fe4b036cce60.md).

 

 






