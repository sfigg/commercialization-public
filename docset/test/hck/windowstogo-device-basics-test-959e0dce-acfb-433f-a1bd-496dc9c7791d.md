---
author: joshbax-msft
title: WindowsToGo Device Basics Test
description: WindowsToGo Device Basics Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 496cf75f-6e3a-4973-b766-7b231d20af3f
---

# WindowsToGo Device Basics Test


This test validates that the USB storage device meets the basic requirements of the Windows To Go feature. USB storage devices that do not support Windows To Go do not need to run this test. This test checks that the device has the following:

-   Provides at least 20 GB of usable storage space.

-   Correctly implements an Microsoft OS Descriptor identifying itself as supporting Windows To Go.

-   Operates at SuperSpeed when plugged into a USB 3.0 port.

-   Reports itself as fixed drive and not a removable drive.

-   If a secondary function is implemented, that secondary function is a smart card reader.

-   Only Microsoft USB 3.0 and storage drivers are used.

-   Exposes its write cache to the operating system.

-   Device uses the Bulk Only Transport (BOT) protocol and does not implement the USB Attached SCSI (UAS) protocol.

-   Does not implement the IEEE1667 standard.

-   Only exposes a single LUN.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.WindowsToGoCapableUSBDrive.WindowsToGoCapableUSBDrive</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Removable Storage Testing Prerequisites](removable-storage-testing-prerequisites.md).

The device under test must be plugged into a USB 3.0 port to run this test. The machine running the test should have no other USB storage devices attached.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

If the device test does not show up in HCK Studio, ensure that the Microsoft OS Descriptor Extended Property named **WindowsBootCapable** of type DWORD is set to 1. For more information about implementing Microsoft OS Descriptors with USB Devices, see [Microsoft OS Descriptors](http://msdn.microsoft.com/library/windows/hardware/gg463179.aspx).

If the device fails the ExposeWriteCache test case, ensure that the device exposes their write cache by implementing mode page 08. To implement this, do the following:

-   Implement MODE SENSE in compliance with SCSI Primary Commands 4 (SPC-4) rev 36e sections 6.13 and 6.14.

-   Implement MODE SELECT is in compliance with SCSI Primary Commands 4 (SPC-4) rev 36e sections 6.11 and 6.12.

-   Implement the caching mode page in compliance with SCSI Block Commands 3 (SBC-3) rev 33 section 6.4.5.

If the device fails the SuperSpeed test case, ensure that the device supports USB 3.0 and operate at SuperSpeed when plugged into a USB 3.0 port. Use the following to help troubleshoot this:

-   Ensure that the device is firmly connected to the USB 3.0 port.

-   The electrical properties of the device comply with section 6.8.3 of the USB 3.0 specification.

-   The device’s USB 3.0 handshake must comply with section 10.16.2 of the USB 3.0 specification.

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
<td><p>Bootcapable.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\pw_device_logo\</p></td>
</tr>
</tbody>
</table>

 

 

 






