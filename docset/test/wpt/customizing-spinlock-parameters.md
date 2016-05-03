---
title: Customizing Spinlock Parameters
description: Customizing Spinlock Parameters
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 16e6e317-659b-4797-a447-db4dcdb3c9c0
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Customizing Spinlock Parameters


By default, the system logs one spinlock event for every 1000 non-contended acquisitions, and one spinlock event for every contended acquisition. Spinlock data collection supports three parameters that enable you to customize data collection. To set spinlock collection parameters, use the following command.

``` syntax
xperf -setspinlocksample [spin_threshold] [acquire_sample_rate] [contention_sample_rate]
```

## Parameters


<a href="" id="spin-threshold"></a>*spin\_threshold*  
The spinlock instrumentation provides a capability to trace heavily contended locks. This is achieved by setting a high spin threshold. If a lock spins less than this threshold, no spinlock event will be logged. For example, if this value is 1, one spinlock event is acquired for each attempt to acquire a lock. If this value is 10, one spinlock event is logged for each ten attempts to acquire a lock. The default value is 1.

<a href="" id="acquire-sample-rate"></a>*acquire\_sample\_rate*  
Sample rate at which spinlock events are logged during a trace. For example, if this value is 1000, one spinlock event is logged for each 1000 non-collision event acquisitions. The default value is 1000.

<a href="" id="contention-sample-rate"></a>*contention\_sample\_rate*  
Rate at which spinlock events are logged when collisions occur. For example, if this value is 100, one spinlock event is logged for each 100 spinlock collisions. The default value is 1.

## Remarks


Spinlock collection parameters return to the default values when the system reboots. To ensure valid data collection, always query or set spinlock parameters before starting event data collection.

## Example


The following example shows how to query for the current values.

``` syntax
xperf -spinlock
```

The following example sets the spin threshold to 1, the acquire sample rate to 1000, and the spinlock contention sample rate to 100.

``` syntax
xperf -setspinlocksample 1 1000 100
```

This query returns the following result for the values set in the previous example.

``` syntax
Current Spinlock Spin Threshold = 1
Current Spinlock Acquire Sample Rate = 1000
Current Spinlock Contention Sample Rate = 100
```

## Related topics


[spinlock](spinlock.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Customizing%20Spinlock%20Parameters%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





