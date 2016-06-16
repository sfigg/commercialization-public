---
author: joshbax-msft
title: USB 3.0 Insertion Test
description: USB 3.0 Insertion Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8d2b02ad-9a50-4232-a383-8dd85f7cc4c4
---

# USB 3.0 Insertion Test


This test verifies that a USB 3.0 device always connects on the SuperSpeed port and does not connect on the high speed port when upstream SuperSpeed termination is on. For more information on how devices connect, see section 2 of the USB 3.0 Specification.

**Note**  
This test doesn't apply to USB hubs. It will automatically pass if the device under test is a hub.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.SuperSpeedOnConnectViaUsb3Port</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

When prompted, unplug the device and plug it back into the same port. It is very important to plug the device into the same port as when you started the test.

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

 

 

 






