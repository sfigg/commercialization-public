---
author: joshbax-msft
title: BitLocker Tpm+PIN+ USB and Recovery Password tests for NON ARM devices
description: BitLocker Tpm+PIN+ USB and Recovery Password tests for NON ARM devices
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f1104b7f-3fef-4c44-b3c1-71cafab3f79b
---

# BitLocker Tpm+PIN+ USB and Recovery Password tests for NON ARM devices


This manual test determines whether PCR \[0, 2, 4, 11\] are consistent across reboots. This test also tests whether PCRs change between booting with an USB and docking station plugged in, and booting without these devices

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.TPM.CS.ConnectedStandby System.Fundamentals.TPM.NonCS.NonConnectedStandby System.Fundamentals.TPM20.TPM20 System.Fundamentals.TrustedPlatformModule.TPMEnablesFullUseThroughSystemFirmware System.Fundamentals.TrustedPlatformModule.TPMRequirements</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

Secure boot should be enabled if it is supported by the platform.

This test prompts you to remove USB and docking station and later prompts you to insert these devices. This test adds a TPM+PIN protector on the operating system volume. The PIN is hardcoded to four zeroes. After the protector is added, this PIN is required to boot the system. You will be prompted to take note of this before each restart.

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

 

 

 






