---
author: joshbax-msft
title: WindowsToGo UEFI USB Class Entry Test
description: WindowsToGo UEFI USB Class Entry Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 06a317e3-0303-4592-b26e-3c12d018071a
---

# WindowsToGo UEFI USB Class Entry Test


This test creates a Windows To Go USB class entry in the UEFI firmware and reboots to validate the computer persists the boot entry and boot order.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.USBBoot.BootFromUSB</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


The hardware requirements are as follows:

-   The computer must have UEFI firmware and be in UEFI mode while running the test.

-   The computer running the test must not have any other USB storage devices attached.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

Ensure that the computer supports UEFI, is in UEFI mode, and that it has not been placed in legacy or BIOS mode.

If you have any USB devices connected, you should remove them.

If the computer ignored the request to remove the Windows To Go USB class entry, verify that the firmware accepts commands to remove USB entries.

If the Windows To Go USB class entry was created but not put at the top of the boot order, delete and recreate a USB entry to ensure you can programmatically create and specify the order of the entry.

If the computer ignores the request to create a Windows To Go USB class entry, verify that the firmware accepts commands to add USB entries.

If the Windows To Go boot entry did not persist a reboot, remove and recreate the USB class entry. Restart the computer and verify that the entry exists even without any USB devices attached to the computer.

If the Windows To Go boot entry did not stay at the top of the boot order, remove and recreate the USB class entry. Restart the computer and verify that the entry remains at the top of the boot order even without any USB devices attached to the computer.

## More information


### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>WTGUEFITests.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\pw_system_logoWTGUEFITests.dll</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WindowsToGo%20UEFI%20USB%20Class%20Entry%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




