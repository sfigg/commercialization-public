---
author: joshbax-msft
title: USB Descriptor Test (Win7)
description: USB Descriptor Test (Win7)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 23e7c40d-0119-4021-a363-c4add9052c7b
---

# USB Descriptor Test (Win7)


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
<td><p>Windows 7 (x64) Windows 7 (x86) Windows Server 2008 R2 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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

The test is successful if comparisons of the device and configuration descriptor pass for all iterations.

The test fails if one of the following occurs:

-   The test device does not correctly handle any standard descriptor request.

-   Any standard descriptor request does not meet the response-time requirements as defined in the USB specification.

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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%20Descriptor%20Test%20%28Win7%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




