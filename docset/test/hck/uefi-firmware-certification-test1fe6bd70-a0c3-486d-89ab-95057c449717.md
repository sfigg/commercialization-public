---
author: joshbax-msft
title: UEFI Firmware Certification Test
description: UEFI Firmware Certification Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2ab700df-7087-4f19-b106-6c3dd1ada800
---

# UEFI Firmware Certification Test


This test verifies the existence and functionality of the required UEFI Sections from the UEFI Specification deemed necessary for installing a Windows UEFI compatible operating system.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.Firmware.UEFIBootEntries System.Fundamentals.Firmware.UEFICompatibility System.Fundamentals.Firmware.UEFIDefaultBoot System.Fundamentals.Firmware.UEFILegacyFallback System.Fundamentals.Firmware.UEFITimingClass</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

The system should have SecureBoot turned off in order to run the pre-operating system application, or have a compatible feature for running Microsoft test-signed binaries.

The HCK should be installed. If not installed, ensure that wttlog.dll is included in the PATH environment variable or is in the same directory as the test.

The network stack must be enabled prior to running this test; otherwise the test will fail. It is recommended to place the network stack after the boot manager in the firmware’s Boot Order list.

You do not need to disable BitLocker before running the test.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

If the system’s firmware disables the network stack, then this test will fail. Please ensure that the network stack is enabled in the firmware prior to running the test.

The most common failure is display related.

1.  With an integrated display, such as a laptop, tablet, or an all-in-one, the system must boot to the monitor’s preferred resolution by reading the EDID info from the monitor.

2.  If the monitor is not integrated, a minimum resolution of 1024x768 is required. The firmware must also set the aspect ratio of the monitor (6:9, 4:3, and so on)

There is a known test issue with DHCP\_4 and DHCP\_6 when the machine does not have a wired network and has Bluetooth. See Errata 567 for more information.

If the test hangs on reboot, manually reboot the machine, create and review the logs. The last log entry will point to the test that caused the hang. This is likely a firmware issue.

## More information


This test no longer performs the Post Time testing, although it does gather and log the reboot post time numbers for reference. The post time test has been separated into its manual test. For more information, see [Firmware Post Time test](firmware-post-time-test-8a9a5c8e-8c7e-4fca-b596-a8b09f377c7e.md).

### Command syntax

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
<td><p>Uefilogo.exe /preparesystem</p></td>
<td><p>Prepares the system to run the test on the restart.</p></td>
</tr>
<tr class="even">
<td><p>Uefilogo.exe /createlogs</p></td>
<td><p>Parses the log file from the pre-operating system test app.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20UEFI%20Firmware%20Certification%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




