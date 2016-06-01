---
author: joshbax-msft
title: TPM Win32\_TPM Class Test
description: TPM Win32\_TPM Class Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8b6c4005-94e8-487f-8d69-2327dd0037a2
---

# TPM Win32\_TPM Class Test


This test runs the TPM WMI hardware certification tests. In the setup steps, the test disables auto provisioning of the TPM and requests a TPM clear operation from firmware. The following test actions are performed using the Win32\_TPM class:

1.  Check the Win32\_TPM class properties

2.  Check GetPhysicalPresenceTransition = 2 (Reboot)

3.  Check PhysicalPresenceVersionInfo = “1.2”

4.  Check for the presence of an Endorsement key

5.  Take ownership of the TPM

6.  Change the ownerAuth

7.  Disable the TPM (if allowed)

8.  Verify that IsEnabled is true for TPM 2.0 and false for TPM 1.2

9.  Enable the TPM

10. Verify that IsOwnerClearDisabled is true

11. Clear the TPM through WMI (should fail because owner clear is disabled)

12. Create an Endorsement Key Pair (should fail because one already exists)

13. IsPhysicalClearDisabled (result can be true or false, but not an error)

14. IsPhysicalPresenceHardwareEnabled (result can be true or false, but not an error)

15. IsSrkAuthCompatible must return true

16. ResetAuthLockOut must return success

17. ResetSrkAuth

18. SelfTest

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

## Troubleshooting


For troubleshooting information, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

To provide more information for troubleshooting failures in this test, you can enable tracing of the TPM. Refer to the steps provided in the [TCG TPM Integration Test (Manual)](tcg-tpm-integration-test--manual-ac56901f-0f66-4013-b156-fe4b036cce60.md).

## Related topics


[System.Fundamentals Tests](systemfundamentals-tests.md)

 

 







