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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20BitLocker%20Tpm+PIN+%20USB%20and%20Recovery%20Password%20tests%20for%20NON%20ARM%20devices%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




