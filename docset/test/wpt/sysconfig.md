---
title: sysconfig
description: sysconfig
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bd020833-a2fe-4619-8d9d-d049fd4e543c
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# sysconfig


This action produces a text file that has detailed information about the system on which the trace was taken.

``` syntax
-a sysconfig [-xml] [-netidentity] [-cpu] [-memory] [-build] [-etw] [-power] [-disk] [-idechannel] [-video] [-nic] [-irq] [-services] [-pnp]
```

## Options


<a href="" id="-xml"></a>**-xml**  
Output is in XML format.

<a href="" id="-netidentity"></a>**-netidentity**  
Displays network identity information.

<a href="" id="-cpu"></a>**-cpu**  
Displays CPU configuration.

<a href="" id="-memory"></a>**-memory**  
Displays memory configuration.

<a href="" id="-build"></a>**-build**  
Displays build information.

<a href="" id="-etw"></a>**-etw**  
Displays ETW version information.

<a href="" id="-power"></a>**-power**  
Displays power state support information.

<a href="" id="-disk"></a>**-disk**  
Displays disk configuration.

<a href="" id="-idechannel"></a>**-idechannel**  
Displays Integrated Drive Electronics (IDE) channel configuration.

<a href="" id="-video"></a>**-video**  
Displays video configuration.

<a href="" id="-nic"></a>**-nic**  
Displays network interface controller configuration.

<a href="" id="-irq"></a>**-irq**  
Displays interrupt request (IRQ) configuration.

<a href="" id="-services"></a>**-services**  
Displays services information.

<a href="" id="-pnp"></a>**-pnp**  
Displays Plug and Play configuration.

## Remarks


If no activity is selected, all activities are selected by default.

## Related topics


[Xperf Actions](xperf-actions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20sysconfig%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





