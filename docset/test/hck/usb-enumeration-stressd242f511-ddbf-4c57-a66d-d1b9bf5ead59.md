---
author: joshbax-msft
title: USB Enumeration Stress
description: USB Enumeration Stress
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1212de4c-4271-4671-b219-61bf96549232
---

# USB Enumeration Stress


The test verifies the functionality of a USB device when it is initially attached to a USB port. To correctly enumerate in the Windows environment, a device must consistently provide valid information on its control pipe and correctly respond to all standard device requests. This test repeats the enumeration process to make sure that a device enumerates reliably in real-world scenarios. This test applies to USB peripheral devices and hubs.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.CompliesWithChap9 Device.Connectivity.UsbDevices.TestedUsingMicrosoftUsbStack</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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

 

 

 






