---
author: joshbax-msft
title: USB Address Description Test
description: USB Address Description Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a807d87d-d0b9-4c2d-a15d-59a8e69aaf66
---

# USB Address Description Test


This test verifies that devices can respond correctly to their assigned addresses and that they do not respond to any other address. The test iterates all supported addresses and verifies that the device under test can be addressed and enumerated.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.Addressing Device.Connectivity.UsbDevices.AlternateDriver</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows Server 2008 R2 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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

This test fails if the test device is more than one hub deep.

**Note**  
You should run the test with a device that is connected directly to a root hub of the system or with a USB Implementers Forum (USB-IF)–certified hub that has less than seven ports.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

The test fails if any of the following occur:

-   Any standard device request is not correctly handled by the device that is being tested.

-   Any standard device request does not meet the response-time requirements as defined in the USB specification.

-   A device does not respond to a request at its currently assigned address.

-   A device responds at an address other than its currently assigned address.

## More information


This test runs multiple individual tests that verify various attributes and operations that the function-specific parts of the test device use. The tests also verify communications from the device through the bus interface to the host.

A USB device must respond correctly to all possible USB device addresses from 0 through 127. This test verifies that devices can respond correctly at their assigned addresses and that they do not respond at any other address.

The test includes the following parts:

**Initialization**

-   Gather initial information:

    -   Device descriptor

    -   Configuration descriptor

    -   String descriptors (if supported by device and test)

**Address test 1 (repeat for all addresses)**

1.  Get descriptors (device, configuration, string) from address 0.

2.  Set device address (next address value not in use).

3.  Get descriptors using address 0. (Device should not respond.)

4.  Get descriptors using new address. (Device should respond.)

5.  Compare descriptors to initial information.

**Address test 2 (repeat for all addresses)**

1.  Set address (next address value not in use).

2.  Get descriptors from previous address. (Device should not respond.)

3.  Get descriptors from new address. (Device should respond.)

4.  Compare descriptors to initial information.

**Result**

For success, a device must always respond with valid device, configuration, and string descriptors while not responding at its previous device address. Any failure is a test failure.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%20Address%20Description%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




