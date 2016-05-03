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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20TPM%201.2%20TCG%20OS%20Interface%20Server%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




