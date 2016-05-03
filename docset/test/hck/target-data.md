---
author: joshbax-msft
title: Target Data
description: Target Data
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5b0a8666-ad96-4fbf-9aa4-a5a95eeed175
---

# Target Data


Both the **Target** object and the **TargetData** object represent an instance of a test target on a computer. Both are based on **Sysparse** data for the computer. However, **TargetData** is a dynamic representation of what's available on a computer at a particular time. **TargetData** elements can appear or disappear in response to system events, power management, load conditions, and other conditions.

After you select a **TargetData** object for testing, its data is copied to the **Target** list and a new object is created.

The read-only **Target.XmlData** property is used both for parameter resolution and feature detection. It contains the raw correlator data that has been returned for a device, and it's used for feature detection and parameter resolution during testing.

The required **Target.Name** property is a string that's used to identify the target to the user.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Target%20Data%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




