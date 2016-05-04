---
author: joshbax-msft
title: USB Selective Suspend Test (xHCI)
description: USB Selective Suspend Test (xHCI)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bbe80d0f-564c-407a-a551-d4ffcfba5719
---

# USB Selective Suspend Test (xHCI)


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
<td><p>Device.Connectivity.UsbDevices.Addressing Device.Connectivity.UsbDevices.InternalDevicesMustSupportSuspend Device.Connectivity.UsbDevices.MsOsContainerId Device.Connectivity.UsbDevices.MustNotDisconnectDuringSuspend Device.Connectivity.UsbDevices.MustSupportSuspend Device.Connectivity.UsbDevices.MustSupportSuspendOnRT Device.Connectivity.UsbDevices.TestedUsingMicrosoftUsbStack</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~6 minutes</p></td>
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

In addition, this test requires the following software and hardware:

-   One USB 3.0 controller PCIe adapter, if the test computer does not contain a USB 3.0 controller.

-   The USB 3.0 controller must be supported by a Microsoft Windows 8 driver.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

 

 






