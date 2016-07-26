---
author: joshbax-msft
title: Secure Boot Logo Test
description: Secure Boot Logo Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 84003ed9-81a2-4757-937a-81a262c1f519
---

# Secure Boot Logo Test


This test verifies the out-of-box configuration and basic functionality of Secure Boot. Most of this test is automated, with the exception of dialog boxes that remind you of prerequisites for this test and the post-test step of turning Secure Boot off to run other tests.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.Firmware.UEFISecureBoot</p>
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


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

Before you run the test, Secure Boot option should be in the default shipping (out-of-box) configuration, specifically:

-   Secure Boot option must be ON.

-   Microsoft Keys are in Key-Exchange key (KEK) and signature database (db).

-   No Microsoft test keys are allowed in the Public Key (PK), KEK or signature database.

This test requires that the system is imaged through the OEM manufacturing process (TPM should be cleared before OS is laid down and installed as part of the deployment). This test should only be run on systems that have gone through an OEM-style imaging process.

## Troubleshooting


For troubleshooting information, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

**Note**  
This test will fail unless a production signed OS is used and all the driver are signed.

 

## Related topics


[System.Fundamentals Tests](systemfundamentals-tests.md)

 

 







