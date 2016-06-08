---
title: Sample Report Descriptors
description: This topic presents a sample report descriptor and a sample descriptor excerpt for a Windows Touchscreen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 03B1C02A-CFFB-49B6-BD85-B9A471F499F5
---

# Sample Report Descriptors


This topic presents a sample report descriptor and a sample descriptor excerpt for a Windows Touchscreen device.

**Note**  If you are implementing the following descriptor on a SKU that is specific to a mobile device, or a Windows phone, then see the [knowledge base article about the HID descriptor issue](https://connect.microsoft.com/site1304/Downloads/DownloadDetails.aspx?DownloadID=57812) (partner access required), to make sure that you have the right setup on your mobile device.

 

## Sample Report Descriptor


The following is a sample descriptor of a two-finger parallel/hybrid mode device.

``` syntax
    0x05, 0x0d,                         // USAGE_PAGE (Digitizers)          
    0x09, 0x04,                         // USAGE (Touch Screen)             
    0xa1, 0x01,                         // COLLECTION (Application)         
    0x85, 0x01,                         //   REPORT_ID (Touch)              
    0x09, 0x22,                         //   USAGE (Finger)                 
    0xa1, 0x02,                         //     COLLECTION (Logical)  
    0x09, 0x42,                         //       USAGE (Tip Switch)           
    0x15, 0x00,                         //       LOGICAL_MINIMUM (0)          
    0x25, 0x01,                         //       LOGICAL_MAXIMUM (1)          
    0x75, 0x01,                         //       REPORT_SIZE (1)              
    0x95, 0x01,                         //       REPORT_COUNT (1)             
    0x81, 0x02,                         //       INPUT (Data,Var,Abs) 
    0x95, 0x07,                         //       REPORT_COUNT (7)  
    0x81, 0x03,                         //       INPUT (Cnst,Ary,Abs)
    0x75, 0x08,                         //       REPORT_SIZE (8)
    0x09, 0x51,                         //       USAGE (Contact Identifier)
    0x95, 0x01,                         //       REPORT_COUNT (1)             
    0x81, 0x02,                         //       INPUT (Data,Var,Abs) 
    0x05, 0x01,                         //       USAGE_PAGE (Generic Desk..
    0x26, 0xff, 0x0f,                   //       LOGICAL_MAXIMUM (4095)         
    0x75, 0x10,                         //       REPORT_SIZE (16)             
    0x55, 0x0e,                         //       UNIT_EXPONENT (-2)           
    0x65, 0x13,                         //       UNIT(Inch,EngLinear)                  
    0x09, 0x30,                         //       USAGE (X)                    
    0x35, 0x00,                         //       PHYSICAL_MINIMUM (0)         
    0x46, 0xb5, 0x04,                   //       PHYSICAL_MAXIMUM (1205)
    0x95, 0x02,                         //       REPORT_COUNT (2)         
    0x81, 0x02,                         //       INPUT (Data,Var,Abs)         
    0x46, 0x8a, 0x03,                   //       PHYSICAL_MAXIMUM (906)
    0x09, 0x31,                         //       USAGE (Y)                    
    0x81, 0x02,                         //       INPUT (Data,Var,Abs)
    0x05, 0x0d,                         //       USAGE_PAGE (Digitizers)
    0x09, 0x48,                         //       USAGE (Width)                
    0x09, 0x49,                         //       USAGE (Height)               
    0x81, 0x02,                         //       INPUT (Data,Var,Abs)
    0x95, 0x01,                         //       REPORT_COUNT (1)
    0x55, 0x0C,                         //       UNIT_EXPONENT (-4)           
    0x65, 0x12,                         //       UNIT (Radians,SIROtation)        
    0x35, 0x00,                         //       PHYSICAL_MINIMUM (0)         
    0x47, 0x6f, 0xf5, 0x00, 0x00,       //       PHYSICAL_MAXIMUM (62831)      
    0x15, 0x00,                         //       LOGICAL_MINIMUM (0)      
    0x27, 0x6f, 0xf5, 0x00, 0x00,       //       LOGICAL_MAXIMUM (62831)        
    0x09, 0x3f,                         //       USAGE (Azimuth[Orientation]) 
    0x81, 0x02,                         //       INPUT (Data,Var,Abs)  
    0xc0,                               //     END_COLLECTION
    0x09, 0x22,                         //   USAGE (Finger)                 
    0xa1, 0x02,                         //     COLLECTION (Logical)  
    0x09, 0x42,                         //       USAGE (Tip Switch)           
    0x15, 0x00,                         //       LOGICAL_MINIMUM (0)          
    0x25, 0x01,                         //       LOGICAL_MAXIMUM (1)          
    0x75, 0x01,                         //       REPORT_SIZE (1)              
    0x95, 0x01,                         //       REPORT_COUNT (1)             
    0x81, 0x02,                         //       INPUT (Data,Var,Abs) 
    0x95, 0x07,                         //       REPORT_COUNT (7)  
    0x81, 0x03,                         //       INPUT (Cnst,Ary,Abs)
    0x75, 0x08,                         //       REPORT_SIZE (8)
    0x09, 0x51,                         //       USAGE (Contact Identifier)
    0x95, 0x01,                         //       REPORT_COUNT (1)             
    0x81, 0x02,                         //       INPUT (Data,Var,Abs) 
    0x05, 0x01,                         //       USAGE_PAGE (Generic Desk..
    0x26, 0xff, 0x0f,                   //       LOGICAL_MAXIMUM (4095)         
    0x75, 0x10,                         //       REPORT_SIZE (16)             
    0x55, 0x0e,                         //       UNIT_EXPONENT (-2)           
    0x65, 0x13,                         //       UNIT(Inch,EngLinear)                  
    0x09, 0x30,                         //       USAGE (X)                    
    0x35, 0x00,                         //       PHYSICAL_MINIMUM (0)         
    0x46, 0xb5, 0x04,                   //       PHYSICAL_MAXIMUM (1205)
    0x95, 0x02,                         //       REPORT_COUNT (2)         
    0x81, 0x02,                         //       INPUT (Data,Var,Abs)         
    0x46, 0x8a, 0x03,                   //       PHYSICAL_MAXIMUM (906)
    0x09, 0x31,                         //       USAGE (Y)                    
    0x81, 0x02,                         //       INPUT (Data,Var,Abs)
    0x05, 0x0d,                         //       USAGE_PAGE (Digitizers)
    0x09, 0x48,                         //       USAGE (Width)                
    0x09, 0x49,                         //       USAGE (Height)               
    0x81, 0x02,                         //       INPUT (Data,Var,Abs)
    0x95, 0x01,                         //       REPORT_COUNT (1)
    0x55, 0x0C,                         //       UNIT_EXPONENT (-4)           
    0x65, 0x12,                         //       UNIT (Radians,SIROtation)        
    0x35, 0x00,                         //       PHYSICAL_MINIMUM (0)         
    0x47, 0x6f, 0xf5, 0x00, 0x00,       //       PHYSICAL_MAXIMUM (62831)      
    0x15, 0x00,                         //       LOGICAL_MINIMUM (0)      
    0x27, 0x6f, 0xf5, 0x00, 0x00,       //       LOGICAL_MAXIMUM (62831)        
    0x09, 0x3f,                         //       USAGE (Azimuth[Orientation]) 
    0x81, 0x02,                         //       INPUT (Data,Var,Abs)  
    0xc0,                               //     END_COLLECTION
    0x05, 0x0d,                         //   USAGE_PAGE (Digitizers)
    0x55, 0x0C,                         //     UNIT_EXPONENT (-4)           
    0x66, 0x01, 0x10,                   //     UNIT (Seconds)        
    0x47, 0xff, 0xff, 0x00, 0x00,       //       PHYSICAL_MAXIMUM (65535)
    0x27, 0xff, 0xff, 0x00, 0x00,       //   LOGICAL_MAXIMUM (65535) 
    0x75, 0x10,                         //   REPORT_SIZE (16)             
    0x95, 0x01,                         //   REPORT_COUNT (1) 
    0x09, 0x56,                         //   USAGE (Scan Time)
    0x81, 0x02,                         //   INPUT (Data,Var,Abs)         
    0x09, 0x54,                         //   USAGE (Contact count)
    0x25, 0x7f,                         //   LOGICAL_MAXIMUM (127) 
    0x95, 0x01,                         //   REPORT_COUNT (1)
    0x75, 0x08,                         //   REPORT_SIZE (8)    
    0x81, 0x02,                         //   INPUT (Data,Var,Abs)
    0x85, REPORTID_MAX_COUNT,           //   REPORT_ID (Feature)              
    0x09, 0x55,                         //   USAGE(Contact Count Maximum)
    0x95, 0x01,                         //   REPORT_COUNT (1)
    0x25, 0x02,                         //   LOGICAL_MAXIMUM (2)
    0xb1, 0x02,                         //   FEATURE (Data,Var,Abs)
    0x85, 0x44,                         //   REPORT_ID (Feature)
    0x06, 0x00, 0xff,                   //   USAGE_PAGE (Vendor Defined)  
    0x09, 0xC5,                         //   USAGE (Vendor Usage 0xC5)    
    0x15, 0x00,                         //   LOGICAL_MINIMUM (0)          
    0x26, 0xff, 0x00,                   //   LOGICAL_MAXIMUM (0xff) 
    0x75, 0x08,                         //   REPORT_SIZE (8)             
    0x96, 0x00,  0x01,                  //   REPORT_COUNT (0x100 (256))             
    0xb1, 0x02,                         //   FEATURE (Data,Var,Abs) 
    0xc0,                               // END_COLLECTION 
```

Note that Windows expects the coordinate (0,0) to be the top-left corner of the native display orientation – either portrait or landscape.

## Sample Report Descriptor Excerpt - (Latency Mode Feature Report)


The following excerpt is from the descriptor for the Windows Touchscreen top-level collection for the optional (highly recommended) support of the latency mode feature report.

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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Sample%20Report%20Descriptors%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




