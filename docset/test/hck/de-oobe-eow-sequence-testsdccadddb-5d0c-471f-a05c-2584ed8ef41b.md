---
author: joshbax-msft
title: DE OOBE\_EOW Sequence Tests
description: DE OOBE\_EOW Sequence Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3eff891a-8a37-47f6-85cf-4c8a1f17bb69
---

# DE OOBE\_EOW Sequence Tests


This test verifies that Encryption On Write (EOW) of the volumes is started after completion of OOBE. It also tests if Device Encryption is not blocked by the OEM by setting registry key PreventDeviceEncryption.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.Security.DeviceEncryption System.Fundamentals.TPM.CS.ConnectedStandby</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

Secure boot should be enabled.

This test returns Pass or Fail.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

If this test fails, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

1.  Check test output directly from command prompt when the test runs or open te.wtl in the HCK Manager.

2.  If a test script fails, check the BitLocker status:

    -   Manage-bde –status \[volume\]

3.  Collect BitLocker event logs from event viewer at two locations:

    -   Filter \\Windows logs\\System logs by event sources started with BitLocker

    -   Applications and Services Logs\\Microsoft\\Windows\\BitLocker-API\\Management

4.  Check TCG logs

    -   Collect TCG log (\*.txt).

    -   Compare multiple copies of the TCG log and see whether PCR \[7, 11\] are consistent across reboot and hibernate.

    -   Make sure WHCK tests with TPM in the name pass.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DE%20OOBE_EOW%20Sequence%20Tests%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




