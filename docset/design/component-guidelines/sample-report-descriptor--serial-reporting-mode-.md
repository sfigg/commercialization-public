---
title: Sample Report Descriptor - Serial Reporting Mode (Windows 7)
description: Sample Report Descriptor - Serial Reporting Mode (Windows 7)
MS-HAID:
- 'touch\_a4fc26ab-c876-410d-8fdc-fa0e87ee07a8.xml'
- 'p\_weg\_hardware.sample\_report\_descriptor\_\_serial\_reporting\_mode\_'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 563ecefc-8a42-477e-97ce-710ed1c97b35
keywords: ["Windows Touch WDK , multitouch digitizer drivers, sample report descriptor (serial reporting mode)", "multitouch digitizer drivers WDK , sample report descriptor (serial reporting mode)", "serial report WDK Touch"]
---

# Sample Report Descriptor - Serial Reporting Mode (Windows 7)


The following example shows a sample report descriptor for serial reporting mode. It contains a top-level collection with a single embedded physical collection:

```
    0x05, 0x0d,                         // USAGE_PAGE (Digitizers)
    0x09, 0x04,                         // USAGE (Touch Screen)
    0xa1, 0x01,                         // COLLECTION (Application)
    0x85, REPORTID_MTOUCH,              //   REPORT_ID (Touch)
    0x09, 0x22,                         //   USAGE (Finger)
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
    0x05, 0x01,                         //     USAGE_PAGE (Generic Desk..
    0x26, 0xff, 0x7f,                   //     LOGICAL_MAXIMUM (32767)
    0x75, 0x10,                         //     REPORT_SIZE (16)
    0x95, 0x01,                         //     REPORT_COUNT (1)
    0x65, 0x00,                         //     UNIT (None)
    0x09, 0x30,                         //     USAGE (X)
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)
    0x09, 0x31,                         //     USAGE (Y)
    0x46, 0x00, 0x00,                   //     PHYSICAL_MAXIMUM (0)
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)
    0x05, 0x0d,                         //     USAGE PAGE (Digitizers)
    0x09, 0x48,                         //     USAGE (Width)
    0x09, 0x49,                         //     USAGE (Height)
    0x95, 0x01,                         //     REPORT_COUNT (2)
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)
    0x81, 0x03,                         //     INPUT (Cnst,Ary,Abs)
    0x09, 0x51,                         //     USAGE (Contact Identifier)
    0x75, 0x10,                         //     REPORT_SIZE (16) 
    0x95, 0x02,                         //     REPORT_COUNT (1)
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)
    0x09, 0x55,                         //    USAGE(Maximum Count)
    0x15, 0x00,                         //   LOGICAL_MINIMUM (0)
    0x25, 0x08,                         //   LOGICAL_MAXIMUM (255)
    0x75, 0x08,                         //   REPORT_SIZE (8)
    0x95, 0x01,                         //   REPORT_COUNT (1)
    0xb1, 0x02,                         //   FEATURE (Data,Var,Abs)
    0xc0,                               //   END_COLLECTION
    0xc0,                               // END_COLLECTION
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Sample%20Report%20Descriptor%20-%20Serial%20Reporting%20Mode%20%28Windows%207%29%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




