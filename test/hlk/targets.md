---
title: Targets
description: Targets
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 40aa7343-693f-432d-8611-129f8134c99f
---

# Targets


Any object that you can test by using the Windows Hardware Lab Kit (Windows HLK) is a *target*. Most devices have several hardware ID components (that is, targets) that must be tested. You can query any target for its properties. Targets can be any of these:

-   Devices (for example, a mouse or keyboard)

-   Systems (that is, a computer that you test as a unit)

-   Filter drivers (for example, antivirus drivers)

A typical certification submission has multiple targets that use hardware on several platforms.

A test target can provide data about how to run a test by dynamically resolving test parameters based on target data. So if a test must identify a device ID, that device ID can be resolved and specified when you schedule a test.

Each target has an associated .xml file. This data file is the collection of all applicable gatherer data for that target. It's used for detecting features, running tests, and reporting.

You can specify some tests to run on one target in a **TargetFamily** object. Other tests must run on each target in a **TargetFamily**.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk%5D:%20Targets%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




