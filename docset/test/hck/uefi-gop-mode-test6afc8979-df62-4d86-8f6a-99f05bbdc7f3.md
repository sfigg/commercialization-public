---
author: joshbax-msft
title: UEFI GOP mode Test
description: UEFI GOP mode Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 003f00a8-ef05-48ae-b22c-952e209fa5b3
---

# UEFI GOP mode Test


This automated test verifies that a system implements the Graphics Output Protocol (GOP) mode protocol in accordance with the Windows HCK requirements.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Firmware.UEFI.GOP.Display System.Server.Firmware.UEFI.GOP.Display</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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

The system should have Secure Boot turned off in order to run the pre-operating system application, or have a compatible feature for running Microsoft test-signed binaries.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

## More information


**Mode selection**

-   Once UEFI has determined which display is enabled to display the pre-operating system screen, it must select the mode to apply based on the following logic:

    1.  System with an Integrated display (laptop, all in one, tablet): The display must always be set to its native resolution and native timing.

    2.  System without an Integrated display (desktop):

        1.  UEFI must attempt to set the native resolution and timing of the display by obtaining it from the EDID.

        2.  If that is not supported, UEFI must select an alternate mode that matches the same aspect ratio as the native resolution of the display.

        3.  At the minimum, UEFI must set a mode of 1024 x 768.

        4.  If the display device does not provide an EDID, UEFI must set a mode of 1024 x 768.

    3.  The firmware must always use a 32 bit linear frame buffer to display the pre-operating system screen.

    4.  PixelsPerScanLine must be equal to the HorizontalResolution.

    5.  PixelFormat must be PixelBlueGreenRedReserved8BitPerColor. A physical frame buffer is required. PixelBltOnly is not supported.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20UEFI%20GOP%20mode%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




