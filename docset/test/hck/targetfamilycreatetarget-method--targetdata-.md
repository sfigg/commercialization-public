---
author: joshbax-msft
title: TargetFamily.CreateTarget Method (TargetData)
description: TargetFamily.CreateTarget Method (TargetData)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ac16b4a7-f13d-45ac-acf7-85d680beac25
---

# TargetFamily.CreateTarget Method (TargetData)


This method creates a target from a **TargetData** object, and adds it to a target family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TargetFamily``Dim target As TargetData``Dim returnValue As Target``returnValue = instance.CreateTarget(target)`

## Syntax


**Visual Basic**`Public MustOverride Function CreateTarget ( _`           `target As TargetData _``) As Target`

**C#**`public abstract Target CreateTarget (`           `TargetData target``)`

## Parameters


*target*      Target data to create a target from.

## Return Value


Returns [Target Class](target-class.md), which is the name of the target that was created.

## Remarks


This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20TargetFamily.CreateTarget%20Method%20%28TargetData%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




