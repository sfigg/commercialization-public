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

 

 






