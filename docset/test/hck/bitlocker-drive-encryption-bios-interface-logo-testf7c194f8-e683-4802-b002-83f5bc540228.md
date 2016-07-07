---
author: joshbax-msft
title: BitLocker Drive Encryption BIOS Interface Logo Test
description: BitLocker Drive Encryption BIOS Interface Logo Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bde56e13-d21e-4566-8d5b-8e098b91c2e8
---

# BitLocker Drive Encryption BIOS Interface Logo Test


This test validates that the BIOS on this platform meets the BitLocker Drive Encryption requirements. This is a test of pre-operating system functionality.

This test is run in the pre-operating system environment to get access to the Trusted Computing Group (TCG) BIOS interface. The test first calls **Tcgtest.exe** to set up the test result files and schedule the **Tcgpreos.exe** file in the boot configuration data. After the file is scheduled, the system is restarted and **Tcgpreos.exe** is run. Finally, when the system is booted back to the operating system, **Tcgtest.exe** is run again to obtain the results.

**Note**  
The test will restart the system one time during the test.

 

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
<td><p>Windows 7 (x64) Windows 7 (x86) Windows Server 2008 R2 (x64)</p></td>
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


Before you run the test, review the prerequisites in [TPM System Fundamentals Testing Prerequisites](tpm-system-fundamentals-testing-prerequisites.md)

Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

To provide more information for troubleshooting failures in this test, you can enable tracing of the TPM. Refer to the steps provided in the [TCG TPM Integration Test (Manual)](tcg-tpm-integration-test--manual-ac56901f-0f66-4013-b156-fe4b036cce60.md).

## Related topics


[System.Fundamentals Tests](systemfundamentals-tests.md)

 

 







