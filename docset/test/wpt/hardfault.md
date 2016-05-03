---
title: hardfault
description: hardfault
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: eef636a1-7b5f-48bd-9fa5-cc3d8a74c88d
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# hardfault


This action produces a text report that summarizes hard faults.

``` syntax
-a hardfault [-file] [-bytes] [-range T1 T2]
```

## Options


<a href="" id="-file"></a>**-file**  
Sort first by file, instead of by process.

<a href="" id="-bytes"></a>**-bytes**  
Sort second by total number of bytes, instead of by fault count.

<a href="" id="-ranget1-t2"></a>**-range***T1 T2*  
Shows hard faults recorded between *T1* and *T2*, in microseconds.

## Related topics


[Xperf Actions](xperf-actions.md)

[Time and Timestamp Formats](time-and-timestamp-formats.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20hardfault%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





