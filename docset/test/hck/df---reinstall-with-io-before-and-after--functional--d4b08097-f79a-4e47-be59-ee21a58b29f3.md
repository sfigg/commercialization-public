---
author: joshbax-msft
title: DF - Reinstall with IO Before and After (Functional)
description: DF - Reinstall with IO Before and After (Functional)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7e4a8512-1a9b-4222-8a25-cb196ce921bd
---

# DF - Reinstall with IO Before and After (Functional)


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
<td><p>Device.DevFund.Reliability.Discretional</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Functional</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DF%20-%20Reinstall%20with%20IO%20Before%20and%20After%20%28Functional%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




