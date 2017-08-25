---
title: Target Families
description: Target Families
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bf92a08d-1593-4838-9090-06d104601bae
---

# Target Families


A **TargetFamily** is a collection of targets on different computers where:

-   Each target's hardware ID matches an entry in the **DeviceFamily**.

-   The parent computer is in a common **ProductInstance**.

For example, if you're testing a mouse on several computers, a **TargetFamily** can represent all the common hardware IDs for a device node (devnode), one on each computer. You can use this representation to run many parallel tests on hardware collections.

It's important to note the difference between **TargetFamily** and **ProductInstance**. **ProductInstance** is a collection of dissimilar targets that are sold in one box to a customer. **TargetFamily** is a collection of hardware that (for testing) can be treated identically.

Not all the features that are found on one instance of a **Target** in a **TargetFamily** are available on all instances of targets within that **TargetFamily**.

The **TargetFamiley.GetTests()** method gets a list of all the tests that are required for a **TargetFamily**, but not all the features that are found on a **Target** will be found on all targets. For this reason, the **TargetFamily.GetFeatures()** method returns a list of all features that are found on any **Target**.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk%5D:%20Target%20Families%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




