---
author: joshbax-msft
title: Target Class
description: Target Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4f83368d-26a9-4b97-b6af-8ae7d676a1c6
---

# Target Class


This class represents a single test target that can be detected on a system (a piece of hardware, a driver, and so on).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Target`

## Syntax


**Visual Basic**`<DataContractAttribute> _``Public MustInherit Class Target`           `Implements ITargetInformation`

**C#**`[DataContractAttribute]``public abstract class Target : ITargetInformation`

## Remarks


A Target contains information that is in XML format. Features have an XPATH query that can return specific nodes from the XML data. All Feature objects in the system are detected for the Target. Since a Feature object is associated with Requirement objects which are associated with Test objects, you can generate a test list.

## Inheritance Hierarchy


**System.Object**      **Microsoft.Windows.Kits.Hardware.ObjectModel.Target**           **Microsoft.Windows.Kits.Hardware.ObjectModel.Submission.PackageTarget**

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Target%20Class%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




