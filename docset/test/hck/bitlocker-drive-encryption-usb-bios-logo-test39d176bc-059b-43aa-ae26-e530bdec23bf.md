---
author: joshbax-msft
title: BitLocker Drive Encryption USB BIOS Logo Test
description: BitLocker Drive Encryption USB BIOS Logo Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6e44f12b-3789-41ef-98e7-7db2c26e577e
---

# BitLocker Drive Encryption USB BIOS Logo Test


This test determines whether USB flash devices support reading during the pre-operating system environment.

This test restarts the machine one time during the test and requires that a USB drive is plugged into system during the test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.TrustedPlatformModule.SupportSecureStartUpInPreOS System.Fundamentals.TrustedPlatformModule.TPMEnablesFullUseThroughSystemFirmware System.Fundamentals.TrustedPlatformModule.Windows7SystemsTPM System.Fundamentals.USBBoot.SupportSecureStartUpInPreOS</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

This test creates a file on the USB mass media and then reboots the computer to determine whether the file can be read during the bootmgr phase (pre-operating system environment).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

**Review the test log**

1.  Go to the **Results** page in Windows HCK Studio and open the **Logs** node.

2.  Click the **BitLocker Device Encryption USB BIOS Logo Test** node.

3.  Open the following logs:

    -   Under **Prep and USB Write Test**: **FveUSBPreTest.xml**

    -   Under **Parse Result and Cleanup**: **FveUSBPostTest.xml**

4.  At the end of each log file, the numbers of test cases that passed and failed are listed.

5.  If a test case failed, search the log file for *Error File* and *Result=Fail* for more information.

 

 






