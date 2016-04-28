---
author: joshbax-msft
title: Setting Test Parameters
description: Setting Test Parameters
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 195a16f5-fd85-4f79-ab7a-97b98938c125
---

# Setting Test Parameters


Use the **SetParameter()** method to set parameters for the current instance of a **Test** or as the default value for subsequent test runs.

You can also use **SetParameter()** to find all instances of the same name for all of a target’s tests. For example, you could find every parameter with the name *TargetIPAddress* in a large group of tests.

Here's an example of how to set a **Test** parameter:

``` syntax
Test myTest = SomeClass.GetTest();
myTest.SetParameter("TargetIpAddress", "1.2.3.4", ParameterSetAsDefault.ApplyToAllTargets);    
```

When you use the **ParameterSetAsDefault.ApplyToAllTargets()** method, all tests that are associated with the current target are searched, and all parameters that have the same parameter name are set via the supplied values. This parameter setting doesn't span targets within a target family.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Setting%20Test%20Parameters%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




