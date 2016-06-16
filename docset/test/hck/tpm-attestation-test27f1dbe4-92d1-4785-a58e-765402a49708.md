---
author: joshbax-msft
title: TPM Attestation Test
description: TPM Attestation Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2a619811-f7b1-4798-8983-f9521b690fd4
---

# TPM Attestation Test


This test exercises a number of test cases to ensure that all of the attestation scenarios for the TPM are working. In the setup steps, the test disables auto provisioning of the TPM, requests a TPM clear operation from firmware and after a restart Ownership is taken. This test runs the following test scripts which use the PCPTool attestation toolkit SDK sample:

1.  BasicProviderTest.cmd

2.  AikCreation.cmd

3.  Attestation.cmd

4.  KeyAttestationTest.cmd

5.  TrustPointValidation.cmd

6.  HostageKey.cmd

7.  PCRBoundKeyTest.cmd

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.TPM20.TPM20 System.Fundamentals.TrustedPlatformModule.TPMComplieswithTCGTPMMainSpecification System.Fundamentals.TrustedPlatformModule.TPMEnablesFullUseThroughSystemFirmware System.Fundamentals.TrustedPlatformModule.TPMRequirements System.Fundamentals.TrustedPlatformModule.Windows7SystemsTPM</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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

This test has no additional test parameters.

The listed scripts that are run in this test can be found on the Windows Hardware Certification Kit (Windows HCK) server in the following directory,

``` syntax
C:\Program Files\Windows Kits\8.0\Hardware Certification Kit\Tests\amd64(or x86 or arm accordingly)\NTTEST\BASETEST\ngscb
```

## Troubleshooting


For troubleshooting information, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

To simulate the same test scenarios exercised by the HCK test, you can find the following files on the HCK Server machine in the directory

``` syntax
C:\Program Files\Windows Kits\8.0\Hardware Certification Kit\Tests\amd64(or x86 or arm accordingly)\\NTTEST\BASETEST\ngscb\Pcptool.exeC:\Program Files\Windows Kits\8.0\Hardware Certification Kit\Tests\amd64(or x86 or arm accordingly)\\NTTEST\BASETEST\ngscb\Tpmatt.dll
```

To provide more information for troubleshooting failures in this test, you can enable tracing of the TPM. Refer to the steps provided in the [TCG TPM Integration Test (Manual)](tcg-tpm-integration-test--manual-ac56901f-0f66-4013-b156-fe4b036cce60.md).

## Related topics


[System.Fundamentals Tests](systemfundamentals-tests.md)

 

 







