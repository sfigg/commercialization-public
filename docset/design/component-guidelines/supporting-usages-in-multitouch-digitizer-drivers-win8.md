---
title: Supporting Usages in Multi-touch Digitizers
description: Supporting Usages in Multi-touch Digitizers
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C139C81E-78D2-4CB6-A532-748613B1F068
---

# Supporting Usages in Multi-touch Digitizers


In the context of a Windows Pointer Device, multi-touch refers to support for two or more contact points. The required and optional usages for a multi-touch digitizer device are described below.

### <a href="" id="required-hid-usages"></a>Required HID Usages for Multi-touch Digitizers

The report descriptor for a multi-touch digitizer must specify that the device is a HID touch screen (page = 0x0D and usage = 0x04).

In addition to the existing HID touch usages, multi-touch digitizers must implement the following [usages](supporting-usages-in-digitizer-report-descriptors.md#required-hid-usages).

-   Contact identifier
-   Contact count maximum
-   Scan Time

### Optional HID Usages

The following [usages](supporting-usages-in-digitizer-report-descriptors.md#optional-hid-usages) are optional, but multi-touch digitizers should repoirt them if the digitizer hardware supports them.

-   Confidence
-   Pressure
-   Azimuth
-   In-range (optional for touch, required for pen)
-   Width and Height

### HID Usages for Multi-touch Digitizers

The HID standard defines the following usages for multi-touch input from digitizers.

| Name                  | Description                          | CA Usage | Page      | Type               | ID   |
|-----------------------|--------------------------------------|----------|-----------|--------------------|------|
| Contact Identifier    | Contact identifier                   | Touch    | Digitizer | Dynamic Value (DV) | 0x51 |
| Contact Count         | Actual contact count                 | Touch    | Digitizer | Dynamic Value (DV) | 0x54 |
| Contact count maximum | Maximum number of contacts supported | Touch    | Digitizer | Dynamic Value (DV) | 0x55 |

 

<a href="" id="-contact-identifier"></a> **Contact identifier**  
Specifies the identifier of the current contact. An identifier must remain constant while the contact is detected by the device. Each separate concurrent contact must have a unique identifier. Identifiers can be reused if a contact is no longer detected. If the device supports "in-air" packets (the contact is hovering above the surface), the identifier must persist from the time that the contact is detected until the time that it goes out of range.

<a href="" id="-contact-count"></a> **Contact count**  
Specifies the number of valid contacts in the current packet. Drivers that use parallel or Hybrid mode should include this usage. A device that cannot provide this value must use **NULL** for all values in the first position that do not contain valid contact information. However, **NULL** is an option only for Parallel mode devices. Devices should not use a combination of Contact count and **NULL** for reporting the actual count. Either one or the other should be used.

<a href="" id="-contact-count-maximum"></a> **Contact count maximum**  
Specifies the total number of contacts that a multi-touch device supports. This usage must be included in the multi-touch top-level collection and not in any child collection. This usage must be present in a feature report in the touch top-level collection. While reporting data, a device must not report more contacts than the contact count maximum. Any new contact information reported after the contact count maximum has been reached will be ignored by the host. A device without the Contact count maximum in the descriptor will be considered to be a single-touch device.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Supporting%20Usages%20in%20Multi-touch%20Digitizers%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




