---
title: prefetch
description: prefetch
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8769558a-7749-4696-82b3-50e237d846d7
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# prefetch


This action produces a text file that summarizes the metrics regarding prefetches.

``` syntax
-a prefetch [-summary] [-timeunit <unit> [<precision>]] [-min <duration>]
```

## Options


<a href="" id="-summary"></a>**-summary**  
Displays the prefetch scenarios in the trace.

<a href="" id="-timeunit-unit----precision--"></a>**-timeunit***&lt;unit&gt; \[&lt;precision&gt;\]*  
Configures time presentation to use time unit &lt;*unit*&gt; and optionally time precision &lt;*precision*&gt;. The units can be "ns" (nanoseconds), "us" (microseconds), "ms" (milliseconds), or "s" (seconds).

<a href="" id="-min-duration-"></a>**-min***&lt;duration&gt;*  
Shows only individual timings, in microseconds, longer than or equal to &lt;*duration*&gt;.

## Related topics


[Xperf Actions](xperf-actions.md)

[Time and Timestamp Formats](time-and-timestamp-formats.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20prefetch%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





