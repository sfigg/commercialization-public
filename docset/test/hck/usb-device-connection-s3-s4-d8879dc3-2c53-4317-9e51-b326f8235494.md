---
author: joshbax-msft
title: USB Device Connection S3+S4
description: USB Device Connection S3+S4
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 42502894-f1ed-4ec2-8565-b88817ec1b2a
---

# USB Device Connection S3+S4


This test verifies that a USB-based device becomes available within 500 milliseconds after the test system exits the S3 or S4 power state. The test also confirms that there were not any errant device disconnects during system resume.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.DeviceAttachLessThan100ms Device.Connectivity.UsbDevices.MustBeFunctionalAfterResume Device.Connectivity.UsbDevices.MustResumeWithoutForcedReset Device.Connectivity.UsbDevices.MustSignalAttachWithin500ms</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~3 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

## More information


### Command syntax

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
<td><p><strong>IsEmbeddedUSBDevice</strong></p></td>
<td><p>String that indicates whether the device is an internal device.</p>
<p>TRUE: The device is an internal device</p>
<p>FALSE: The device is an external device. This is the default value.</p></td>
</tr>
</tbody>
</table>

 

 

 






