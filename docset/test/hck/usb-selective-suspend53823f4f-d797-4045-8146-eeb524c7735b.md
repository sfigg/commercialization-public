---
author: joshbax-msft
title: USB Selective Suspend
description: USB Selective Suspend
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1ea228bf-da46-456b-8a22-376e75a4a798
---

# USB Selective Suspend


This test evaluates the selective suspend abilities of the USB device.

You can use this test to conserve power by suspending a device's port when the device is not being used. To support this new feature, a device must maintain its internal state when its upstream port has been suspended and be able to function correctly when its upstream port is resumed. This test makes sure that the device responds correctly on its control pipe at its currently assigned device address after the suspend/resume cycle of a port. Depending on the class of the device, you can perform additional steps to make sure that the device responds correctly on other endpoints. This test runs only on devices and hubs.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.MustSupportSuspend</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows Server 2008 R2 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~7 minutes</p></td>
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

In addition, this test requires the following hardware:

-   One four-port USB hub for use as a self-powered hub. This hub must comply with USB Specification 2.0 and support the suspension of a port.

-   One USB 2.0 controller.

**Warning**  
This test requires the test device to be connected through an intermediate USB 2.0 hub to the host system. This test fails if the test device is more than one hub deep.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

The test fails if either of the following occurs:

-   A device does not respond correctly on its control pipe after the suspend/resume cycle.

-   A device does not respond correctly on any other endpoints in its current configuration after the suspend/resume cycle.

 

 






