---
title: Querying Providers
description: Querying Providers
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: abe58e3b-4050-4d42-ad71-a0c702492f8d
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Querying Providers


Displays trace and providers query options.

``` syntax
xperf {-providers [options] | -loggers | -boottrace | -profint | -profiles | -profileswithdetails | -profilesessions | -profileproviders | -profileloggers}
```

## Parameters


<a href="" id="-providers-options----"></a>**-providers***\[options...\]*  
Query all installed/known and registered providers, as well as all known kernel flags and groups. For details, see [providers](providers-wpa.md).

<a href="" id="-loggers"></a>**-loggers**  
Query all active logging sessions.

<a href="" id="-boottrace"></a>**-boottrace**  
Query the boot trace configuration.

<a href="" id="-profint"></a>**-profint**  
Query the current profile interval.

<a href="" id="-profiles-profilefilename---profilename-"></a>**-profiles***{ProfileFileName | ProfileName}*  
Query the profile names defined in *ProfileFileName* or *ProfileName*. If no parameters are specified, query the names of the built-in profiles.

<a href="" id="-profileswithdetails-profilefilename---profilename-"></a>**-profileswithdetails***{ProfileFileName | ProfileName}*  
Query the profile names defined in *ProfileFileName* or detailed properties in *ProfileName*. If no parameters are specified, query the names of the built-in profiles.

<a href="" id="-profilesessions-profilefilename---sessionname-"></a>**-profilesessions***{ProfileFileName | SessionName}*  
Query the profile session names defined in *ProfileFileName* or *SessionName*. If no parameters are specified, query the names of the built-in profile sessions.

<a href="" id="-profileproviders-profilefilename---providername-"></a>**-profileproviders***{ProfileFileName | ProviderName}*  
Query the profile provider names defined in *ProfileFileName* or *ProviderName*. If no parameters are specified, query the names of the built-in profile providers.

<a href="" id="-profileloggersprofilename"></a>**-profileloggers***ProfileName*  
Query logging sessions specified in *ProfileName*.

## Related topics


[Xperf Options](xperf-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Querying%20Providers%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





