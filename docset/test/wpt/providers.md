---
title: Providers
description: Providers
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2da92ebb-055a-45ff-8da6-7a06f78a8d9e
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Providers


Providers are Event Tracing for Windows (ETW) components that expose events to Windows Performance Recorder (WPR). You can use a single system provider and multiple event providers in a profile, including a heap event provider.

## System Providers


A system provider provides kernel events. System providers are defined by using the following:

-   Keywords for the events to be collected.

-   Stacks from which to collect events.

-   Pool tags to indicate the component that made the allocation or the allocation type.

For a description of supported system keywords, see [Keyword (in SystemProvider)](keyword--in-systemprovider-.md).

## Event Providers


You can configure event providers to provide certain types of events (among those that are supported by the provider) by specifying a hexadecimal bitmask keyword. Because providers support different events, there are no string constants for these keywords. Therefore, they must be hexadecimal-style strings.

## Related topics


[WPR Features](wpr-features.md)

[2. System and Event Provider Definitions](2-system-and-event-provider-definitions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Providers%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





