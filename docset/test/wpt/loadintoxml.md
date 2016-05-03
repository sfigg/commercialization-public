---
title: LoadIntoXML
description: LoadIntoXML
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: aa5556fa-d58a-450d-b217-93986c383239
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# LoadIntoXML


Obtains the XML format of all profiles in the [IProfileCollection](iprofilecollection.md) object.

## Syntax


``` syntax
[id(5), helpstring("LoadIntoXML")] HRESULT LoadIntoXML([out] BSTR* pbstrResults);
```

## Parameters


<a href="" id="pbstrresults--out-"></a>*pbstrResults* \[out\]  
Pointer to a result string.

## Return Value


## Remarks


This function outputs one combined profile for all the profiles that have been added to the profile collection.

## Related topics


[IProfileCollection](iprofilecollection.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20LoadIntoXML%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





