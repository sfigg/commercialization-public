---
author: joshbax-msft
title: USB Enumeration Stress (Win7)
description: USB Enumeration Stress (Win7)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c3818534-d682-4472-9bde-2c5155b9bab4
---

# USB Enumeration Stress (Win7)


This test verifies the functionality of a USB device when it is initially attached to a USB port. To correctly enumerate in the Windows environment, a device must consistently provide valid information on its control pipe and correctly respond to all standard device requests. This test repeats the enumeration process to make sure that a device enumerates reliably in real-world scenarios. This test covers only USB peripheral devices and hubs.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.CompliesWithChap9</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows Server 2008 R2 (x64)</p></td>
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

-   System with an exposed USB 2.0 port

-   One USB-IF–certified USB 2.0 hub to connect the system and the test USB device

The system that you use for this test must have an available root-hub port. If you will run the test on a system in which the keyboard and mouse are attached via USB, and the system supports more than one root hub, you should connect these devices on one of the other root hubs. If the system has only one root hub, you must attach all other devices downstream of a secondary root-hub port.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

The test fails if either of the following occurs:

-   The device under test does not correctly handle any standard device request.

-   Any standard device request does not meet the response-time requirements as defined in the USB specification.

## More information


While the test runs, any devices that are connected to other ports on the same root hub might become temporarily unusable.

The test includes the following parts:

-   Initialization

-   Enumeration test (repeat *n* times) with no string descriptor support

-   Enumeration test (repeat *n* times) with string descriptor support

**Initialization**

-   Gather the following initial information:

    -   Device descriptor

    -   Configuration descriptor

    -   String descriptors (if the device and the test support them)

**Enumeration test (repeat *n* times) with no string descriptor support**

1.  Reset the device port.

2.  Get the device descriptor (first MPS with wLength value of FF).

3.  Reset the device port.

4.  Get the device descriptor (full descriptor).

5.  Set the address (address not in use).

6.  Get the configuration descriptor.

7.  Compare the device and configuration descriptors to the initial ones.

8.  Set the configuration to configuration 0.

**Enumeration test (repeat n times) with string descriptor support**

1.  Reset the device port.

2.  Get the device descriptor (first MPS with *wLength* value of FF).

3.  Reset the device port.

4.  Get the device descriptor (full descriptor).

5.  Set the address (address not in use).

6.  Get the configuration descriptor.

7.  Compare the device and configuration descriptors to the initial ones.

8.  Set the configuration to configuration 0.

 

 






