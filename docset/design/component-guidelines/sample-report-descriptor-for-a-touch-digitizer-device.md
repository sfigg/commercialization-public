---
title: Sample Report Descriptor for a Touch Digitizer Device (Windows 7)
description: Sample Report Descriptor for a Touch Digitizer Device (Windows 7)
MS-HAID:
- 'touch\_cbaeb07f-0d53-43d6-9cac-b7648518336a.xml'
- 'p\_weg\_hardware.sample\_report\_descriptor\_for\_a\_touch\_digitizer\_device'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d4f81529-8537-410f-a3d6-181eb83d8df2
keywords: ["Windows Touch WDK , touch digitizer device", "touch digitizer device WDK , sample report descriptor", "digitizer device WDK Touch", "digitizer device WDK Touch , sample report descriptor"]
---

# Sample Report Descriptor for a Touch Digitizer Device (Windows 7)


The following example shows a sample report descriptor for a touch digitizer device that supports a single contact point:

```
    0x05, 0x0d,                         // USAGE_PAGE (Digitizers)
    0x09, 0x04,                         // USAGE (Touch Screen)
    0xa1, 0x01,                         // COLLECTION (Application)
    0x85, REPORTID_TOUCH,               //   REPORT_ID (Touch)
    0x09, 0x20,                         //   USAGE (Stylus)
    0xa1, 0x00,                         //   COLLECTION (Physical)
    0x09, 0x42,                         //     USAGE (Tip Switch)
    0x15, 0x00,                         //     LOGICAL_MINIMUM (0)
    0x25, 0x01,                         //     LOGICAL_MAXIMUM (1)
    0x75, 0x01,                         //     REPORT_SIZE (1)
    0x95, 0x01,                         //     REPORT_COUNT (1)
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)
    0x95, 0x03,                         //     REPORT_COUNT (3)
    0x81, 0x03,                         //     INPUT (Cnst,Ary,Abs)
    0x09, 0x32,                         //     USAGE (In Range)
    0x09, 0x47,                         //     USAGE (Confidence)
    0x95, 0x02,                         //     REPORT_COUNT (2)
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)
    0x95, 0x0a,                         //     REPORT_COUNT (10)
    0x81, 0x03,                         //     INPUT (Cnst,Ary,Abs)
    0x05, 0x01,                         //     USAGE_PAGE (Generic Desktop)
    0x26, 0xff, 0x7f,                   //     LOGICAL_MAXIMUM (32767)
    0x75, 0x10,                         //     REPORT_SIZE (16)
    0x95, 0x01,                         //     REPORT_COUNT (1)
    0xa4,                               //     PUSH
    0x55, 0x0d,                         //     UNIT_EXPONENT (-3)
    0x65, 0x00,                         //     UNIT (None)
    0x09, 0x30,                         //     USAGE (X)
    0x35, 0x00,                         //     PHYSICAL_MINIMUM (0)
    0x46, 0x00, 0x00,                   //     PHYSICAL_MAXIMUM (0)
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)
    0x09, 0x31,                         //     USAGE (Y)
    0x46, 0x00, 0x00,                   //     PHYSICAL_MAXIMUM (0)
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)
    0xb4,                               //     POP
    0x05, 0x0d,                         //     USAGE PAGE (Digitizers)
    0x09, 0x48,                         //     USAGE (Width)
    0x09, 0x49,                         //     USAGE (Height)
    0x95, 0x02,                         //     REPORT_COUNT (2)
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)
    0x95, 0x01,                         //     REPORT_COUNT (1)
    0x81, 0x03,                         //     INPUT (Cnst,Ary,Abs)
    0xc0,                               //   END_COLLECTION
    0xc0,                               // END_COLLECTION
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Sample%20Report%20Descriptor%20for%20a%20Touch%20Digitizer%20Device%20%28Windows%207%29%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




