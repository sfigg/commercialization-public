---
author: joshbax-msft
title: USB Isochronous Alternate Interface Presence
description: USB Isochronous Alternate Interface Presence
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 94629cdc-2493-4726-8686-8a776fb7a9ee
---

# USB Isochronous Alternate Interface Presence


This test verifies that when any device has an interface that consumes isochronous bandwidth, that device supports multiple alternate settings for that interface, and that alternate setting 0 (zero) does not consume isochronous bandwidth.

The requirement for alternate setting zero can be provided by an interface that has no endpoints, an interface with isochronous endpoints that do not carry a payload, or an alternate interface that has non-isochronous endpoints. The test software looks for these capabilities by recursively examining the configurations, interfaces, and endpoints that a device supports.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.IsochronousDeviceAndDriver</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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

If the connected device does not support the isochronous transfer type, the test does not run and automatically reports the results as Pass.

Individual Pass/Fail indication is provided for each test category of USB peripheral device support for the power management requirements.

Windows HCK provides individual Pass/Fail indication for each test category of USB peripheral device support for the power management requirements."

The following conditions cause test failures:

-   Alternate interface zero consumes isochronous bandwidth.

-   An interface that the device supports consumes isochronous bandwidth and does not provide more than one alternate setting.

## More information


The USB peripheral device must be attached to a port on the root hub. The test software puts the ports on the root hub in the powered-on state. The test software then puts the port in the enabled state and initiates communication with the target device. The test software issues a Get Descriptor request to the target device. The number of configurations that the device supports is returned in the field bNumConfigurations. The test software stores the number of configurations to later conduct an iterative examination of all configurations. For each device configuration, the test software issues a Get Configuration request to the target device. The number of interfaces that the configuration supports is returned in the field bNumInterfaces. The descriptor for the interfaces and endpoints for those interfaces are returned in the body of the configuration descriptor.

The test software parses interface descriptors for a configuration by using the bInterfaceNumber and bAlternateSetting fields as keys. Groups of alternative interfaces share the same bInterfaceNumber field with incrementing bAlternateSetting fields. For each interface that has the bAlternateSetting field equal to zero and the bNumEndpoints field greater than zero, the test software parses endpoint descriptors. The test software examines the bmAttributes field of the endpoint descriptor to determine whether the endpoint is using an isochronous transfer type. If the transfer type is isochronous, the test software examines the wMaxPacketSize field. If wMaxPacketSize is greater than zero, the device is consuming isochronous bandwidth inappropriately and it doesn't meet the Windows HCK requirement (B2.6.4.4.2). The interface is appropriately flagged as out of compliance. If the transfer type is isochronous with wMaxPacketSize equal to zero or is not isochronous, the interface is in compliance.

If an isochronous interface has a descriptor with a bAlternateSetting value of one or greater, the interface provides multiple alternate settings and complies with the Windows Hardware Certification Program requirements.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%20Isochronous%20Alternate%20Interface%20Presence%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




