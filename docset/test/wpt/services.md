---
title: services
description: services
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 139a09db-6c62-449a-9369-2219cc99e823
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# services


This action produces a text file that summarizes metrics related to services.

``` syntax
-a services [-range T1 T2] [-poiThreshold_ContainerInit <t>] [-poiThreshold_ImageLoad <t>] [-poiThreshold_ServiceInit <t>]
```

## Parameters


<a href="" id="-ranget1-t2"></a>**-range***T1 T2*  
Shows data between times *T1* and *T2*, both in microseconds.

<a href="" id="-poithreshold-containerinit-t-"></a>**-poiThreshold\_ContainerInit***&lt;t&gt;*  
Flags any container initialization time greater than *t*, in microseconds, as a point of interest.

<a href="" id="-poithreshold-imageload-t-"></a>**-poiThreshold\_ImageLoad***&lt;t&gt;*  
Flags any image load time greater than *t*, in microseconds, as a point of interest.

<a href="" id="-poithreshold-serviceinit-t-"></a>**-poiThreshold\_ServiceInit***&lt;t&gt;*  
Flags any service initialization time greater than *t*, in microseconds, as a point of interest.

## Remarks


The default is to not flag any services as points of interest. All times are displayed in milliseconds.

## Related topics


[Xperf Actions](xperf-actions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20services%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





