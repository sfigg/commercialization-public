---
title: Features and Requirements
description: Features and Requirements
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 73eeb2c4-13b9-4606-938f-f64113ed407e
---

# Features and Requirements


A feature can be a property (for example, a kernel mode device driver), a bus, an interface, or capability (for example, a device that prints) of a target. **Feature** objects contain a list of requirements that are children of the **Feature**. Use the **TargetType** property to determine whether a feature applies toward a specific target.

A requirement (for example, "all PCI devices must do *x*") maps to only one feature. Tests are mapped against requirements, so if a feature is found, you must run all the corresponding tests for its requirements.

A feature can apply to only a subset of operating system versions or platforms. For example, a requirement might apply to only Windows® 7 x86, or to it might apply to Windows 8 (x86) and Windows 8 (x64) (but not Windows Server® 2012).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk%5D:%20Features%20and%20Requirements%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




