---
title: CControlManager
description: CControlManager
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1952f739-e610-4bc3-938f-8ffad3875aec
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# CControlManager


Represents the control manager that runs a profile collection. The class implements the [IControlManager](icontrolmanager.md), [IOnOffTransitionManager](ionofftransitionmanager.md), [IControlErrorInfo](icontrolerrorinfo.md), and [IEnumControlWarningInfo](ienumcontrolwarninginfo.md) interfaces. To run profiles, the client instantiates an instance of the class. The library maintains only a single, static instance of the manager. If the client tries to instantiate multiple times, the library returns the original instance and increments its reference count.

## Syntax


``` syntax
{
  [default] interface IControlManager;
  interface IOnOffTransitionManager;
  interface IControlErrorInfo;
  interface IEnumControlWarningInfo;
};
```

## Related topics


[Classes](classes.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20CControlManager%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





