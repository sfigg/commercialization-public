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

 

 






