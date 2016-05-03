---
author: joshbax-msft
title: ProductInstance
description: ProductInstance
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f8fbf263-fb74-4aa7-89f5-065b3ec9a95a
---

# ProductInstance


The **ProductInstance** class is a specific example of a product on a specific **OSPlatform**. Note that you can test multiple versions of a product type on multiple computers. However, each platform (that is, the combination of operating system and architecture) must be tested individually, in parallel with the other instances. Unlike the **DeviceFamily** and **TargetFamily** classes, **ProductInstance** is a collection of dissimilar devices, whereas **TargetFamily** is a collection of essentially identical devices.

Using the example of a printer, there would be a separate **ProductInstance** class for each printer for every **OSPlatform**. Each **ProductInstance** class might have a printer **Target** or **TargetFamily** class as a child, in addition to a scanner target and a memory card reader target.

Each **ProductInstance** class is named. The **Name** value must be unique to each project. Unlike a project, you can't rename a **ProductInstance** class. Each **ProductInstance** class is associated with a specific **MachinePool**. This **MachinePool** can be shared with other **ProductInstance** classes.

**ProductInstance** has several **FindTargetFrom**\* methods. Each method searches across computers in a machine pool and returns **TargetData** for each target that meets the filter criteria. The caller must verify that all the targets that it meant to return are returned.

**TargetData** is an abstract target (that is, it's what can be tested). **Target** is what you test. You select a **TargetData** object by using one of the **FindTarget**\* methods, and then call **CreateTarget()** to promote that **TargetData** to a **Target** class for testing.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20ProductInstance%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




