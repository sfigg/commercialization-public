---
author: joshbax-msft
title: Firmware Post Time test
description: Firmware Post Time test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3176cd81-ceef-4200-8b64-ac2b40962f8c
---

# Firmware Post Time test


This verifies that systems with integrated displays are able to meet Post requirements by performing a Windows shutdown and user-initialized power-up.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.Firmware.UEFIPostTime</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~22 minutes</p></td>
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

The system should not be running the Microsoft Generic Display driver.

The system should support Hibernate.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

The most common failure is an ACPI Revision issue. This test relies on the firmware’s FPDT/FBPT ACPI tables to calculate total post time. The test cannot gather this info if the ACPI’s Revision is less than 5.

If the system fails to make post time, make sure the system is booting to the Windows Boot Manager before network or other devices that take time to enumerate. The firmware needs to enumerate only the bus device that is in the current boot option.

## More information


/PTR (Post Time Reboot) is an automated restart command that is used on ARM or systems that do not support hybrid shutdown or hibernate.

Verify the firmware returns the post time in nanoseconds and not milliseconds. Using milliseconds can result in a Pass when the system should Fail. This is currently only a warning in the test.

## Command syntax


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>/?</p></td>
<td><p>Displays help information for the test. There are two command line arguments that are useful—one for setup, and one for result processing.</p></td>
</tr>
<tr class="even">
<td><p>uefilogo.exe /PTRM</p></td>
<td><p>Post Time Reboot Manual – This prepares the system for a manual restart. The user is prompted to shut down the system and to power it back on after 30 seconds.</p></td>
</tr>
<tr class="odd">
<td><p>uefilogo.exe /PTM</p></td>
<td><p>Post Time Manual – This gathers the logs and, if necessary, prompts the user about the display and disk (for hybrid disks).</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Firmware%20Post%20Time%20test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




