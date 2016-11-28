---
title: Required HID Descriptors
description: This topic presents the required HID descriptors (and device attributes) for a Windows pen device in Windows 10 and later operating systems.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: FA6F2EEF-FA5E-41DD-A561-E475991A0A9A
---

# Required HID Descriptors


This topic presents the required HID descriptors (and device attributes) for a Windows pen device in Windows 10 and later operating systems.

## Required USB HID Descriptor


The following table shows the required USB HID descriptor. For more information, see **section 6.2.1** in [Device Class Definition for Human Interface Devices (HID) Version 1.11](http://www.usb.org/developers/hidpage#class-definitions).

| Member            | Size in bytes | Description              |
|-------------------|---------------|--------------------------|
| bLength           | 1             | Size of the descriptor   |
| bDescriptorType   | 1             | Type of descriptor       |
| bcdHID            | 2             | HID version number       |
| bCountryCode      | 1             | Country code             |
| bNumDescriptors   | 1             | Number of descriptors    |
| bDescriptorType   | 1             | Descriptor type          |
| bDescriptorLength | 2             | Length of the descriptor |

 

## <a href="" id="required-i2c-hid-descriptor"></a>Required I²C HID Descriptor


The following table shows the required I²C HID descriptor.

| Member              | Size in bytes | Description                                                                     |
|---------------------|---------------|---------------------------------------------------------------------------------|
| wHIDDescLength      | 2             | The length of the complete HID descriptor (in Bytes).                           |
| bcdVersion          | 2             | The version number, in binary coded decimal (BCD) format.                       |
| wReportDescLength   | 2             | The length of the Report descriptor (in Bytes).                                 |
| wReportDescRegister | 2             | The register index containing the Report descriptor.                            |
| wInputRegister      | 2             | The register number to read the input report (in unsigned Bytes).               |
| wMaxInputLength     | 2             | The length of the largest input report to be read from the input register.      |
| wOutputRegister     | 2             | The register number to send the output (in unsigned Bytes).                     |
| wMaxOutputLength    | 2             | The length of the largest output report to be sent.                             |
| wCommandRegister    | 2             | The register number to send command requests (in unsigned Bytes).               |
| wDataRegister       | 2             | The register number to exchange data with command requests (in unsigned Bytes). |
| wVendorID           | 2             | USB-IF assigned Vendor ID.                                                      |
| wDeviceID           | 2             | Device ID.                                                                      |
| wVersionID          | 2             | Firmware version number.                                                        |

 

## Required Device Attributes


The following HID properties must be provided in the device attributes. The reporting of these device attributes is bus-specific. Consult the HID-specific guidance for your choice of bus.

| Member     | Description             | USB                                | I²C                                                        |
|------------|-------------------------|------------------------------------|------------------------------------------------------------|
| wVendorID  | Vendor ID               | idVendor in USB Device Descriptor  | wVendorID in I²C HID Descriptor (see the preceding table). |
| wProduct   | Product ID              | idProduct in USB Device Descriptor | wDeviceID in I²C HID Descriptor (see the preceding table). |
| wVersionID | Firmware version number | bcdDevice in USB Device Descriptor | wVersionID I²C HID Descriptor (see the preceding table).   |

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Required%20HID%20Descriptors%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




