---
title: Mouse Collection Report Descriptor
description: Mouse Collection Report Descriptor
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: B8188BBD-49A3-4C83-8C76-EA308674C8D6
---

# Mouse Collection Report Descriptor


The mouse report descriptor sample shows the pointer device usage in a physical collection.

``` syntax
//
    // Dummy mouse collection starts here
    //
    0x05, 0x01,                         // USAGE_PAGE (Generic Desktop)     0
    0x09, 0x02,                         // USAGE (Mouse)                    2
    0xa1, 0x01,                         // COLLECTION (Application)         4
    0x85, REPORTID_MOUSE,               //   REPORT_ID (Mouse)              6
    0x09, 0x01,                         //   USAGE (Pointer)                8
    0xa1, 0x00,                         //   COLLECTION (Physical)          10
    0x05, 0x09,                         //     USAGE_PAGE (Button)          12
    0x19, 0x01,                         //     USAGE_MINIMUM (Button 1)     14
    0x29, 0x02,                         //     USAGE_MAXIMUM (Button 2)     16
    0x15, 0x00,                         //     LOGICAL_MINIMUM (0)          18
    0x25, 0x01,                         //     LOGICAL_MAXIMUM (1)          20
    0x75, 0x01,                         //     REPORT_SIZE (1)              22
    0x95, 0x02,                         //     REPORT_COUNT (2)             24
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)         26
    0x95, 0x06,                         //     REPORT_COUNT (6)             28
    0x81, 0x03,                         //     INPUT (Cnst,Var,Abs)         30
    0x05, 0x01,                         //     USAGE_PAGE (Generic Desktop) 32
    0x09, 0x30,                         //     USAGE (X)                    34
    0x09, 0x31,                         //     USAGE (Y)                    36
    0x15, 0x81,                         //     LOGICAL_MINIMUM (-127)       38
    0x25, 0x7f,                         //     LOGICAL_MAXIMUM (127)        40
    0x75, 0x08,                         //     REPORT_SIZE (8)              42
    0x95, 0x02,                         //     REPORT_COUNT (2)             44
    0x81, 0x06,                         //     INPUT (Data,Var,Rel)         46
    0xc0,                               //   END_COLLECTION                 48
    0xc0                                // END_COLLECTION                   49/50
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Mouse%20Collection%20Report%20Descriptor%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




