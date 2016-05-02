---
author: joshbax-msft
title: TPM OOBE Provisioning
description: TPM OOBE Provisioning
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a68c4e12-4ba1-42fc-b84b-4b5930cd0329
---

# TPM OOBE Provisioning


This automated test validates that Windows Setup and TPM provisioning happen in the correct order. This test ensures that the TPM does not get provisioned before OOBE finishes, thereby ensuring that the OEM imaging process results in the TPM being in the correct state when a user logs in. The test checks for the TPM provisioning event to be seen within a few minutes of OOBE being completed.

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
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, review the prerequisites in [TPM System Fundamentals Testing Prerequisites](tpm-system-fundamentals-testing-prerequisites.md).

This test requires that the system be imaged through the OEM manufacturing process (that clears the TPM as part of the deployment). This test should only be run on systems that have gone through an OEM-style imaging process.

**Note**  
While running this test, the time zone should not be changed in OOBE.

 

**To run this test on pre-production devices**

1.  Set the **HKLM\\System\\CurrentControlSet\\Services\\Tpm\\WMI\\NoAutoProvision** registry setting to **1**.

2.  Clear the TPM. For more info, see [Clear the TPM](http://technet.microsoft.com/library/cc753694.aspx).

3.  Reinstall the operating system and complete OOBE.

    **Note**  
    If you forgot to clear the TPM before you reinstall the operating system, you have 5 minutes after OOBE to do this.

    The Sysprep OOBE option to prevent an operating system reinstall is not currently supported.

     

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

If this test fails but the other TPM HCK tests pass, the TPM was not cleared before the operating system was reinstalled. If the TPM was not cleared, the status of the TPM will be **The TPM is ready for use, with reduced functionality**. You can check the status by using the Trusted Platform Module Management console.

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio. To provide more information for troubleshooting failures in this test, you can enable tracing of the TPM. Refer to the steps provided under the Troubleshooting section in [TCG TPM Integration Test (Manual)](tcg-tpm-integration-test--manual-ac56901f-0f66-4013-b156-fe4b036cce60.md). Investigations also need log files with name like ‘tpm\*.txt’ and console.txt from the ‘Documents’ folder

## Related topics


[System.Fundamentals Tests](systemfundamentals-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20TPM%20OOBE%20Provisioning%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





