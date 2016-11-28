---
title: Sample Report Descriptors
description: This topic presents a sample report descriptor and some sample descriptor excerpts for a Windows pen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C81F79C8-CA53-4064-AAF6-6F8FBFB78353
---

# Sample Report Descriptors


This topic presents a sample report descriptor and some sample descriptor excerpts for a Windows pen device.

## Sample Report Descriptor


The following is a report descriptor for an integrated Windows Pen top-level collection.

``` syntax
// Integrated Windows Pen TLC
    0x05, 0x0d,                         // USAGE_PAGE (Digitizers)          
    0x09, 0x02,                         // USAGE (Pen)                      
    0xa1, 0x01,                         // COLLECTION (Application)         
    0x85, REPORTID_PEN,                 //   REPORT_ID (Pen)                
    0x09, 0x20,                         //   USAGE (Stylus)                 
    0xa1, 0x00,                         //   COLLECTION (Physical)          
    0x09, 0x42,                         //     USAGE (Tip Switch)           
    0x09, 0x44,                         //     USAGE (Barrel Switch)        
    0x09, 0x3c,                         //     USAGE (Invert)               
    0x09, 0x45,                         //     USAGE (Eraser Switch)        
    0x15, 0x00,                         //     LOGICAL_MINIMUM (0)          
    0x25, 0x01,                         //     LOGICAL_MAXIMUM (1)          
    0x75, 0x01,                         //     REPORT_SIZE (1)              
    0x95, 0x04,                         //     REPORT_COUNT (4)             
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)         
    0x95, 0x01,                         //     REPORT_COUNT (1)             
    0x81, 0x03,                         //     INPUT (Cnst,Var,Abs)         
    0x09, 0x32,                         //     USAGE (In Range)             
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)         
    0x95, 0x02,                         //     REPORT_COUNT (2)             
    0x81, 0x03,                         //     INPUT (Cnst,Var,Abs)         
    0x05, 0x01,                         //     USAGE_PAGE (Generic Desktop) 
    0x09, 0x30,                         //     USAGE (X)                    
    0x75, 0x10,                         //     REPORT_SIZE (16)             
    0x95, 0x01,                         //     REPORT_COUNT (1)             
    0xa4,                               //     PUSH                         
    0x55, 0x0d,                         //     UNIT_EXPONENT (-3)           
    0x65, 0x13,                         //     UNIT (Inch,EngLinear)        
    0x35, 0x00,                         //     PHYSICAL_MINIMUM (0)         
    0x46, 0x3a, 0x20,                   //     PHYSICAL_MAXIMUM (8250)      
    0x26, 0xf8, 0x52,                   //     LOGICAL_MAXIMUM (21240)      
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)         
    0x09, 0x31,                         //     USAGE (Y)                    
    0x46, 0x2c, 0x18,                   //     PHYSICAL_MAXIMUM (6188)      
    0x26, 0x6c, 0x3e,                   //     LOGICAL_MAXIMUM (15980)      
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)         
    0xb4,                               //     POP                          
    0x05, 0x0d,                         //     USAGE_PAGE (Digitizers)      
    0x09, 0x30,                         //     USAGE (Tip Pressure)         
    0x26, 0xff, 0x00,                   //     LOGICAL_MAXIMUM (255)        
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)         
    0x75, 0x08,                         //     REPORT_SIZE (8)              
    0x09, 0x3d,                         //     USAGE (X Tilt)               
    0x15, 0x81,                         //     LOGICAL_MINIMUM (-127)       
    0x25, 0x7f,                         //     LOGICAL_MAXIMUM (127)        
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)         
    0x09, 0x3e,                         //     USAGE (Y Tilt)               
    0x15, 0x81,                         //     LOGICAL_MINIMUM (-127)       
    0x25, 0x7f,                         //     LOGICAL_MAXIMUM (127)        
    0x81, 0x02,                         //     INPUT (Data,Var,Abs)         
    0xc0,                               //   END_COLLECTION                 
    0xc0                                // END_COLLECTION                
```

## Sample Report Descriptor Excerpt - (Latency Mode Feature Report)


The following is a report descriptor excerpt from the integrated Windows Pen top-level collection, for the optional (but highly recommended) support of the latency mode feature report.

``` syntax
    0x05, 0x0d,                         //    USAGE_PAGE (Digitizer)
    0x85, REPORTID_LATENCY,             //    REPORT_ID (Latency)              
    0x09, 0x60,                         //    USAGE(Latency Mode)
    0x75, 0x01,                         //    REPORT_SIZE (1) 
    0x95, 0x01,                         //    REPORT_COUNT (1)
    0x15, 0x00,                         //    LOGICAL_MINIMUM (0)
    0x25, 0x01,                         //    LOGICAL_MAXIMUM (1)
    0xb1, 0x02,                         //    FEATURE (Data,Var,Abs)
    0x95, 0x07,                         //    REPORT_COUNT (7)             
    0xb1, 0x03,                         //    FEATURE (Cnst,Var,Abs)            
```

## Sample Report Descriptor Excerpt - (Device Certification Status Feature Report)


The following is a report descriptor excerpt from the integrated Windows Pen top-level collection, for the optional (but highly recommended) support of the device certification status feature report.

``` syntax
    0x06, 0x00, 0xff,                   //    USAGE_PAGE (Vendor Defined)
    0x85, REPORTID_PENHQA,              //    REPORT_ID (PTPHQA)  
    0x09, 0xC5,                         //    USAGE (Vendor Usage 0xC5)    
    0x15, 0x00,                         //    LOGICAL_MINIMUM (0)          
    0x26, 0xff, 0x00,                   //    LOGICAL_MAXIMUM (0xff) 
    0x75, 0x08,                         //    REPORT_SIZE (8)             
    0x96, 0x00, 0x01,                   //    REPORT_COUNT (0x100 (256))             
    0xb1, 0x02,                         //    FEATURE (Data,Var,Abs)
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Sample%20Report%20Descriptors%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




