---
author: joshbax-msft
title: WindowsToGo Boot Test
description: WindowsToGo Boot Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1fcb6aa3-ee13-4b72-84fa-eeafa3de1f59
---

# WindowsToGo Boot Test


This test validates that the USB storage can be provisioned with a Windows image and the following requirements are met:

-   Boot into Windows from the device.

-   Operates at SuperSpeed when plugged into a USB 3.0 port.

-   Enter and resume from S3 sleep.

-   Enter and resume from S4 hibernate.

**Note**  
This is a system-specific implementation of an existing test. For more information on this test, see [WindowsToGo Device Boot Test](windowstogo-device-boot-test-19cf07d7-072b-4fba-b8c4-5104ad61b0a5.md).

 

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
<td><p>~45 minutes</p></td>
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

-   The device must be USB 3.0 and certified for Windows To Go.

-   The device under test must be plugged into a USB 3.0 port to run this test.

-   The computer running the test should have no other USB storage devices attached.

-   The computer running the test does not have an equal amount or more system memory than the WTG certified device (for example, if the system has 32Gb of RAM, you can't use a 32Gb WTG drive).

The software requirements are as follows:

-   User must copy a valid Windows Image (WIM) file to the test computer. It must include any drivers needed to use the system’s hardware.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

If you cannot boot from the Windows To Go device, use the following to troubleshoot this issue:

-   Ensure that the Windows image does not include any 3rd party USB drivers.

-   Ensure that the system you are using to run this test has the latest firmware.

-   If boot was interrupted by an INACESSIBLE\_BOOT\_DEVICE stop error, the UFD likely became unresponsive after receiving a certain sequence of commands. Take a USB trace to determine what caused the UFD to become unresponsive.

-   If the system did not attempt to boot the Windows To Go drive, the UFD likely did not enumerate quickly enough for the system's firmware. Take a USB trace to determine what caused the system to abort its attempt to boot the UFD.

-   If you have taken these debugging steps and believe your device is behaving correctly, run the test again with a certified device and compare the results.

If the device cannot enter S3 sleep, your WIM image may not have the correct graphics drivers installed. Use the following steps to see what is blocking S3 sleep:

-   Provision a Windows To Go device with the same image you use with the test and then boot from it.

-   Open a command prompt, and the run the following command: **powercfg a**

-   Note which device is blocking S3 sleep, add the appropriate driver to the WIM file, and run the test again.

If the computer lost state when resuming from S3 sleep or S4 hibernate, this could mean that the computer lost power to the Windows To Go device before all of the data in its cache could be written.

If the computer resumes to the host operating system instead of the Windows To Go operating system from hibernation, the computer had a problem booting the Windows To Go device and the host computer was booted instead. Take a USB trace to determine what caused the computer to revert back to the host operating system.

If you receive Surprise Removal events during the test that were not caused from the Windows To Go device being unplugged and then plugged back in, the Windows To Go device may not be properly maintaining its link to the host operating system per the USB 3.0 specification or the Windows To Go device may not be properly saving all data to non-volatile memory when the system enters a sleep state. Take a USB trace to determine what caused the Surprise Removal events.

If the system successfully boots to the Windows To Go operating system, but appears to hang for an extended period of time, manually reboot the system. The following warning may be found in the Te.wtl log file for the 'Process Test Results' task:

**Warning: Something prevented the system from entering sleep (S3) or Connected Standby. When booted from the WTG drive open a command prompt and run "powercfg -a" and note what component is listed as blocking S3 or Connected Standby. This is usually the result of missing graphics drivers. Add any missing drivers for your machine to the WIM file you're using for this test.**

**Note**  
If the logs show the test as passing after the manual reboot, it is acceptable to submit the results for certification with this warning in the logs.

 

## More information


### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>WimPath</strong></p></td>
<td><p>To run this test the user must provide a full Windows Image (WIM) file. This parameter specifies the location the test should look for the WIM file. A WIM can be obtained from within Windows installation media or from an ISO file – in either case look inside the “Sources” folder for “install.wim”. The provided WIM must meet the following requirements:</p>
<ul>
<li><p>Must contain a full Windows v6.3 image (not WinPE).</p></li>
<li><p>Must match the processor architecture of the computer running the test.</p></li>
<li><p>Must include any device drivers the system needs to boot and enter S3 sleep and S4 hibernate.</p></li>
</ul>
<p>Default value: C:\install.wim</p></td>
</tr>
<tr class="even">
<td><p><strong>WimIndex</strong></p></td>
<td><p>WIM files can contain multiple images. If using a WIM file with multiple images, use this parameter to select the appropriate one for your test computer. Most WIM files contain only a single image so it is usually not necessary to modify this parameter.</p>
<p>Default value: 1</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>boottest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\pw_device_logo\boottest.dll</p></td>
</tr>
<tr class="even">
<td><p>unattend.xml</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\pw_device_logo\unattend.xml</p></td>
</tr>
<tr class="odd">
<td><p>pwrtest.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\pwrtest\pwrtest.exe</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WindowsToGo%20Boot%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




