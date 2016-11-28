---
title: Required Descriptors
description: Required Descriptors
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1EE2882D-A69A-4BC8-A12C-27E7240CC3EB
---

# Required Descriptors


## Required OS Descriptors


If your device uses the internal USB bus, you must enable the USB selective suspend feature for your HID device by using the USB [Microsoft OS descriptor](http://go.microsoft.com/fwlink/p/?linkid=254381). With a properly formatted Microsoft OS extended property descriptor, the USB selective suspend feature can be enabled automatically whenever the HID device is connected. For more details about how the Microsoft OS extended property descriptor can be used to automatically enable selective suspend, see [Microsoft OS descriptor](http://go.microsoft.com/fwlink/p/?linkid=254381).

## Required HID Descriptors


A Windows pointer device must provide the following HID descriptors, attributes, and strings.

### Required USB HID Descriptor

The following table shows the required USB HID descriptor. For more information, see section 6.2.1 in [Device Class Definition for Human Interface Devices (HID) Version 1.11](http://www.usb.org/developers/hidpage/HID1_11.pdf).

| Member            | Size in Bytes | Description              |
|-------------------|---------------|--------------------------|
| bLength           | 1             | Size of the descriptor   |
| bDescriptorType   | 1             | Type of descriptor       |
| bcdHID            | 2             | HID version number       |
| bCountryCode      | 1             | Country code             |
| bNumDescriptors   | 1             | Number of descriptors    |
| bDescriptorType   | 1             | Descriptor type          |
| bDescriptorLength | 2             | Length of the descriptor |

 

### Required I2C HID Descriptor

The following table shows the required I2C HID descriptor.

| Member              | Size in Bytes | Description                                                      |
|---------------------|---------------|------------------------------------------------------------------|
| bLength             | 2             | The length of the complete HID descriptor, in bytes.             |
| bcdVersion          | 2             | The version number, in binary coded decimal (BCD) format.        |
| dwReportDescLength  | 2             | The length of the Report descriptor, in bytes.                   |
| wReportDescRegister | 2             | The register index containing the Report descriptor.             |
| wInputRegister      | 2             | The register number to read the input report, in unsigned bytes. |
| wOutputRegister     | 2             | The register number to send the output, in unsigned bytes.       |
| wVendorID           | 2             | USB-IF assigned Vendor ID.                                       |
| wDeviceID           | 2             | Device ID.                                                       |
| wRevisionID         | 2             | Firmware version number                                          |

 

### Required Device Attributes

The following HID properties must be provided in the device attributes. The reporting of these device attributes is bus specific. Consult the HID specific guidance for your choice of bus.

| Member         | Description                   |
|----------------|-------------------------------|
| bSize          | Size of the Device descriptor |
| wVendorID      | Vendor Id                     |
| wProduct       | Product Id                    |
| Version Number | Firmware version number       |

 

### HID Strings

The following strings must be supported by devices that support Windows pointer functionality:

-   Manufacturer Name
-   Product String

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Required%20Descriptors%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




