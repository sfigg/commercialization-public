---
author: joshbax-msft
title: Secure Boot Manual Logo Test
description: Secure Boot Manual Logo Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9ee98ceb-4004-4fad-aa49-31317b106127
---

# Secure Boot Manual Logo Test


This test verifies the proper functioning of boot time image authentication and the proper authentication and operation of UEFI secure boot variable updates. This test should be performed two times by using two different configurations.

-   **Configuration A** - EFI USB is first in the boot order.

-   **Configuration B** - EFI USB is last in the boot order.

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
<td><p>~90 minutes</p></td>
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

This test requires special firmware (debug firmware) on Windows® W RT systems that allows you to clear secure boot keys and turn off secure boot. On non-Windows RT systems, a firmware menu should allow you to perform these actions.

Before you run the test:

1.  Clear all Secure Boot variables.

2.  Make sure that you can set the system under test (SUT) to boot from the USB first. If you cannot make this setting, you must manually boot into the different USB sticks when you are instructed to do so.

3.  You must have two USB flash drives.

When it runs, the test installs UEFISecureBootManualTests.zip on the system under test (SUT). Review the README.TXT file in the zip file for further instructions.

The test operator must respond to the test prompts.

The following certificates are required if they aren’t present on the machine:

-   [KEK](http://www.microsoft.com/pkiops/certs/MicCorKEKCA2011_2011-06-24.crt)

-   [UEFI CA](http://www.microsoft.com/pkiops/certs/MicCorUEFCA2011_2011-06-27.crt)

-   [Windows Production](http://www.microsoft.com/pkiops/certs/MicWinProPCA2011_2011-10-19.crt)

## Troubleshooting


For troubleshooting information, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Secure%20Boot%20Manual%20Logo%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




