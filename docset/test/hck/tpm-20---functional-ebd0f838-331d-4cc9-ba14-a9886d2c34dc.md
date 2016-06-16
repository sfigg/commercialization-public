---
author: joshbax-msft
title: TPM 2.0 - Functional
description: TPM 2.0 - Functional
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ef53fbea-6229-47e7-95d2-2d21df253f0a
---

# TPM 2.0 - Functional


This manual test validates basic Trusted Platform Module (TPM) 2.0 operations such as encryption, decryption, key creation, and taking ownership.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.TPM20.TPM20</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~120 minutes</p></td>
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

This test has no additional test parameters

## Troubleshooting


For troubleshooting information, see [Troubleshooting Windows HCK Test Failures](troubleshooting-windows-hck-test-failures.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio. To provide more information for troubleshooting failures in this test, you can enable tracing of the TPM. Refer to the steps provided under the Troubleshooting section in [TCG TPM Integration Test (Manual)](tcg-tpm-integration-test--manual-ac56901f-0f66-4013-b156-fe4b036cce60.md). Investigations should include log files that have names such as **tpm\*.txt** and **console.txt**, from the **Documents** folder.

## Related topics


[System.Fundamentals Tests](systemfundamentals-tests.md)

 

 







