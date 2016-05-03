---
title: dumper
description: dumper
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e5fec87c-6945-4611-8e50-52d279357004
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# dumper


This action produces an ANSI text file of the ETL trace log.

``` syntax
-a dumper [-range T1 T2] [-stacktimeshifting] [exc_dpcisr] [-provider id1 id2 …] [-add_rawdata] [-add_pgodata] [-add_inline]
```

## Options


<a href="" id="-ranget1-t2"></a>**-range***T1 T2*  
Dumps only data between times *T1* and *T2*, both in microseconds.

<a href="" id="-stacktimeshifting"></a>**-stacktimeshifting**  
Combines user and kernel stack fragments and places them after the trigger event.

<a href="" id="-exc-dpcisr"></a>**-exc\_dpcisr**  
Excludes time spent in DPCs or ISRs. DPC and interrupt tracing must be enabled for this option to have any effect. Currently this affects only **cswitch** events.

<a href="" id="-providerid1-id2--"></a>**-provider***id1 id2 …*  
Dumps events for the specified provider(s). Takes as input any number of provider GUIDs.

<a href="" id="-add-rawdata"></a>**-add\_rawdata**  
Adds a raw information line before each event.

<a href="" id="-add-pgodata"></a>**-add\_pgodata**  
Adds PGO training information to each stack frame.

<a href="" id="-add-inline"></a>**-add\_inline**  
Appends inline function names to the end of each stack frame.

## Remarks


Events in the trace are dumped in text form.

## Example


The following is an example of this action with providers specified.

``` syntax
xperf -i trace.etl -o trace.etl.csv -a dumper -provider {315a8872-923e-4ea2-9889-33cd4754bf64} {7dd42a49-5329-4832-8dfd-43d979153a88}
```

## Related topics


[Xperf Actions](xperf-actions.md)

[Time and Timestamp Formats](time-and-timestamp-formats.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20dumper%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





