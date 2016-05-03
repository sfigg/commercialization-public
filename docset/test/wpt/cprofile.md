---
title: CProfile
description: CProfile
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 046b4559-0408-4766-8bb5-d50a695138b9
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# CProfile


Represents a **Profile** object and contains data to configure Event Tracing for Windows (ETW) sessions and providers. This class implements the [IProfile](iprofile.md) and [IParsingErrorInfo](iparsingerrorinfo.md) interfaces. The client instantiates a new instance for every profile that it needs to run. When the client loads the profile, the instance validates against the schema. If the validation fails, the instance stores the error information and returns an error code. In case of an error, the client receives an interface pointer to **IParsingErrorInfo** and retrieves the error information.

## Syntax


``` syntax
{
  [default] interface IProfile;
  interface IParsingErrorInfo;
};
```

## Related topics


[Classes](classes.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20CProfile%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





