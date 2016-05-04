---
author: joshbax-msft
title: DF - Reinstall with IO Before and After (Certification)
description: DF - Reinstall with IO Before and After (Certification)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0e7edb32-ef46-4a6d-8eb3-d0517c486314
---

# DF - Reinstall with IO Before and After (Certification)


This test uninstalls and reinstalls the drivers for selected devices and runs IO on devices, verifies that no device or driver, except the device under test, has been affected by devices, driver installations, or co-install processes, and verifies that no system resources have been overwritten during a device or driver package installation.

When the test runs the test case that no device or driver, except the device under test, has been affected by devices, driver installations, or co-install processes, it creates two files: preinstallscan.xml and postinstallscan.xml. The preinstallscan.xml file records information about every device before the test starts. After the test completes, it records information about every device in the postinstallscan.xml file. The two files are then examined for differences. You can view the preinstallscan.xml and postinstallscan.xml files by right clicking the **Run Test** task and then clicking **Additional Files** on the **Results** tab in HCK Studio for this test.

For information included in the Windows Driver Kit on this test, see [Driver Install Tests (Device Fundamentals) (Windows Drivers)](http://msdn.microsoft.com/library/windows/hardware/jj673012.aspx).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.DriverFramework.KMDF.Reliability Device.DevFund.DriverFramework.UMDF.Reliability Device.DevFund.Reliability.BasicReliabilityAndPerformance Device.DevFund.Reliability.DriverInstallUninstallReinstall Device.DevFund.Reliability.DriverUninstallInstallOtherDeviceStability Device.DevFund.Reliability.NoReplacingSysComponents</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Device.Fundamentals Reliability Testing Prerequisites](devicefundamentals-reliability-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device Fundamentals Reliability Testing by using the Windows HCK](troubleshooting-device-fundamentals-reliability-testing-by-using-the-windows-hck.md).

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
<td><p><strong>WDTFREMOTESYSTEM</strong></p></td>
<td><p>This parameter is required only if the device under test, or one of its child devices, is a wired network adapter that does not have an IPv6 gateway address. If this parameter is required on your network, you must provide an IPv6 address that the test network adapter can ping to test network.</p>
<p>Example: fe80::78b6:810:9c12:46cd</p></td>
</tr>
<tr class="even">
<td><p><strong>Wpa2PskAesSsid</strong></p></td>
<td><p>This parameter is required only if the device under test or one of its child devices is a WiFi adapter. Provide the SSID of a WPA2 AES WiFi network that the test can use to test the WiFi adapter.</p>
<p>Default value: kitstestssid</p></td>
</tr>
<tr class="odd">
<td><p><strong>Wpa2PskPassword</strong></p></td>
<td><p>This parameter is required only if the device under test or one of its child devices is a WiFi adapter. Provide password of the WPA2 AES WiFi network that is specified by using the <strong>Wpa2PskAesSsid</strong> parameter.</p>
<p>Default value: password</p></td>
</tr>
</tbody>
</table>

 

 

 






