---
title: stack
description: stack
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7f8b4905-4702-4bba-998e-baa533adcdb2
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# stack


This action produces a text file that summarizes metrics related to stacks.

``` syntax
-a stack [-butterfly [n]] [-range T1 T2] [-export <format>] [-pid <pid> ...] [-tid <tid> ...] [-process RegEx1 RegEx2 ... RegExN] [-symbol RegEx1 RegEx2 ... RegExN] [-event RegEx1 RegEx2 ... RegExN]
```

## Options


<a href="" id="-butterfly-n-"></a>**-butterfly***\[n\]*  
Displays the butterfly view of stacks in this trace, including only symbols that have at least &lt;*min\_hits*&gt; hits, whether every occurrence is counted or only the first occurrence. The default value of *min\_hits* is 10.

<a href="" id="-ranget1-t2"></a>**-range***T1 T2*  
Limits the report to the interval `[lo, hi]`. The default value of *T1* is zero. The default value of *T2* is `_I64_MAX`.

<a href="" id="-pid-pid-"></a>**-pid***&lt;pid&gt;*  
Includes only stacks from processes with matching process identifiers.

<a href="" id="-tid-tid-"></a>**-tid***&lt;tid&gt;*  
Includes only stacks from threads with matching thread identifiers.

<a href="" id="-processregex1-regex2---regexn"></a>**-process***RegEx1 RegEx2 … RegExN*  
Includes only stacks from threads that match the provided ATL regular expression(s).

<a href="" id="-symbolregex1-regex2---regexn"></a>**-symbol***RegEx1 RegEx2 … RegExN*  
Includes only stacks that contain symbols that match the provided ATL regular expression(s).

<a href="" id="-eventregex1-regex2---regexn"></a>**-event***RegEx1 RegEx2 … RegExN*  
Includes only stacks for events that match the provided ATL regular expression(s).

## Related topics


[Xperf Actions](xperf-actions.md)

[Time and Timestamp Formats](time-and-timestamp-formats.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20stack%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





