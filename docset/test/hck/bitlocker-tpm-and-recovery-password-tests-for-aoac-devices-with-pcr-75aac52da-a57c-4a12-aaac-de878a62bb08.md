---
author: joshbax-msft
title: BitLocker Tpm And Recovery Password tests for AOAC devices with PCR 7
description: BitLocker Tpm And Recovery Password tests for AOAC devices with PCR 7
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a377a2da-6956-430c-a936-bf980c757ba3
---

# BitLocker Tpm And Recovery Password tests for AOAC devices with PCR 7


All platforms that implement a TPM must ensure invariance of PCRs 7, 11 across power cycles in the absence of changes to the platform’s static core root of trust for measurements (SRTM). Attaching a (non-bootable) USB to the platform or attaching the platform to a docking station should not cause changes to the SRTM.

**Note**  
This test restarts the system multiple times to check whether PCRs are consistent.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Firmware.UpdateDriverPackage System.Fundamentals.TPM.CS.ConnectedStandby</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md). Also, check that TPM is on and ready for use by running tpm.msc (the Trusted Platform Module (TPM) Management snap-in). Secure boot should be enabled.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

If this test fails, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

1.  Make sure you can see **fveapi.dll** in **%systemroot%\\system32\\**.

2.  Check test output directly from command prompt when the test runs or open te.wtl in the HCK Manager.

3.  If a test script fails, check the BitLocker status:

    -   Manage-bde –status \[volume\]

4.  Collect BitLocker event logs from event viewer at two locations:

    -   Filter **\\Windows logs\\System** logs by event sources started with BitLocker

    -   **Applications and Services Logs\\Microsoft\\Windows\\BitLocker-API\\Management**

5.  Run **tpm.msc ** to ensure that the TPM Status is ON and that ownership has been taken.

6.  Check TCG logs

    -   Collect TCG log (\*.txt).

    -   Compare multiple copies of the TCG log and see whether PCR \[0, 2, 4, 11\] are consistent across reboot and hibernate.

**Note**  
If the BitLocker WHCK test results in a recovery event, the BitLocker recovery key is 48-zeros (0000-0000-0000-0000-0000-0000-0000-0000-0000-0000-0000-0000).

 

 

 






