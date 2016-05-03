---
title: tracestats
description: tracestats
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 875ee44a-765d-44e4-b303-867b6c766251
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# tracestats


This action produces a text file that summarizes trace statistics.

``` syntax
-a tracestats [-timespan [actual]] [-detail] [-timezone {utc | local}]
```

## Options


<a href="" id="-timespan-actual-"></a>**-timespan***\[actual\]*  
Shows information about the session and trace. By default, *-timespan* requires inspection of trace headers only; no pass is performed through the traces in the session. When "actual" is specified, the actual times of the first event and the last event in the session are added to the report. In this case, a pass through the traces in the session is required.

<a href="" id="-detail--stack-"></a>**-detail *\[stack\]***  
Shows detailed information about providers, identifiers, tasks, operation codes, versions, channels, and levels of events in the session, along with provider and operation code friendly names. Requires a full pass through the traces in the session.

When the *stack* parameter is specified, the count of stacks for each type of event is added to the report. In this case, a second pass through the traces in the session is required.

<a href="" id="-timezone-utc-local-"></a>**-timezone***{utc|local}*  
Shows timestamps in the specified time zone. If no time zone is specified, the local time zone is used by default.

## Related topics


[Xperf Actions](xperf-actions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20tracestats%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





