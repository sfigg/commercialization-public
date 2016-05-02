---
author: joshbax-msft
title: DF - PCI Root Port Surprise Remove Test (PCI devices only) (Certification)
description: DF - PCI Root Port Surprise Remove Test (PCI devices only) (Certification)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1b11ac60-ffca-473c-9a06-29ee0c6435be
---

# DF - PCI Root Port Surprise Remove Test (PCI devices only) (Certification)


This automated test surprise removes the test device's PCI root port. This test does the following if the test device is a descendant of the PCI bus. Otherwise, it automatically passes.

1.  Determines the PCI root port device for the test device. The PCI root port of the test device is:

    1.  The device that is the immediate child of the PCI bus.

    2.  The device that is also the ancestor of the test device.

2.  It surprise removes and restarts this PCI root port device 100 times or for one hour in a continuous loop.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.DriverFramework.KMDF.Reliability Device.DevFund.DriverFramework.UMDF.Reliability Device.DevFund.Reliability.BasicReliabilityAndPerformance Device.DevFund.Reliability.PnPIRPs</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~60 minutes</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DF%20-%20PCI%20Root%20Port%20Surprise%20Remove%20Test%20%28PCI%20devices%20only%29%20%28Certification%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




