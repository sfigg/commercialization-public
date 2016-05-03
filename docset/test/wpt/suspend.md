---
title: suspend
description: suspend
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 76df9308-9496-43a7-90cb-113ff5f672a8
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# suspend


This action produces an XML file that summarizes the metrics for the suspend sequence.

``` syntax
-a suspend [-summary] [-timeout <unit> [<precision>]] [-min <duration>]
```

## Options


<a href="" id="-summary"></a>**-summary**  
Displays the suspend transitions in this trace.

<a href="" id="-timeunit-unit----precision--"></a>**-timeunit***&lt;unit&gt; \[&lt;precision&gt;\]*  
Configure time presentation to use time unit &lt;*unit*&gt; and optionally time precision &lt;*precision*&gt;. Possible units of time are "ns" (nanoseconds), "us" (microseconds), "ms" (milliseconds), or "s" (seconds).

<a href="" id="-min-duration-"></a>**-min***&lt;duration&gt;*  
Shows individual timings longer than or equal to &lt;*duration*&gt;.

## Remarks


If you do not specify an option, **-summary** is used by default.

## Related topics


[Xperf Actions](xperf-actions.md)

[Time and Timestamp Formats](time-and-timestamp-formats.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20suspend%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





