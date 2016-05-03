---
title: process
description: process
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 349abd2d-5708-4438-8448-3e9d49618ac5
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# process


This action produces a text file that summarizes metrics related to processes.

``` syntax
-a process [[-thread] [-image] [-vm]]|[-tree] [-range T1 T2] [-withsids] [-withcmdline]
```

## Options


<a href="" id="-thread"></a>**-thread**  
Shows threads.

<a href="" id="-image"></a>**-image**  
Shows images.

<a href="" id="-vm"></a>**-vm**  
Shows allocated virtual memory ranges.

<a href="" id="-tree"></a>**-tree**  
Shows the process tree structure.

<a href="" id="-ranget1-t2"></a>**-range***T1 T2*  
Shows data between times *T1* and *T2*, both in microseconds.

<a href="" id="-withsid"></a>**-withsid**  
Shows security identifiers (SIDs) in process reports.

<a href="" id="-withcmdline"></a>**-withcmdline**  
Shows the command line in process reports.

## Remarks


By default, only processes are shown.

## Related topics


[Xperf Actions](xperf-actions.md)

[Time and Timestamp Formats](time-and-timestamp-formats.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20process%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





