---
author: joshbax-msft
title: USB Descriptor Test
description: USB Descriptor Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1db075d2-de70-420b-b486-c4d6d764508a
---

# USB Descriptor Test


This test verifies that the device responds properly to all standard descriptor requests and returns accurate and consistent descriptor data.

**Note**  
The USB Descriptor test is required only for USB peripheral devices and hubs. It verifies the correct response of a USB device to standard descriptor requests.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.CompliesWithChap9 Device.Connectivity.UsbDevices.RespondAllStringRequests Device.Connectivity.UsbDevices.ResponsesLimitedByWlengthField</p>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

## More information


This test requests both the device descriptor and configuration descriptor with varying lengths. The test calculates the upper limit to be at least two maximum packet sizes larger than the actual size of the descriptor. If this calculated upper limit is less than 255 bytes, the test increases the upper limit to 255 bytes. The test expects the USB test device to return valid descriptor information. However, the amount of information that the device returns must be no larger than the length that the test requests. If the requested length is greater than the size of the descriptor, the device must return the whole descriptor with no additional data.

The test includes the following parts:

-   Initialization

-   Descriptor test

**Initialization**

Gather the following initial information:

-   Device descriptor

-   Configuration descriptor

-   String descriptors (if the device and the test support them)

-   Device qualifier descriptor (if this is a USB 2.0 high-speed-capable device)

**Descriptor test**

1.  Repeat Get Descriptor requests for the device, starting with a descriptor length of one up to the calculated upper bound in 1-byte increments.

2.  Repeat Get Descriptor requests for the configuration, starting with a descriptor length of one up to the calculated upper bound in 1-byte increments.

3.  Set the address to 2.

4.  Repeat Get Descriptor requests for the device, starting with a descriptor length of one up to the calculated upper bound in 1-byte increments.

5.  Repeat Get Descriptor requests for the configuration, starting with a length of one up to the calculated upper bound in 1-byte increments.

 

 






