---
author: joshbax-msft
title: ProductInstance.GetTargetFamilies Method
description: ProductInstance.GetTargetFamilies Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e1218395-e159-4e1d-b12d-034eef6ee1a4
---

# ProductInstance.GetTargetFamilies Method


This method retrieves an enumerable list of TargetFamilies that expose the product to the system.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim returnValue As ReadOnlyCollection(Of TargetFamily)``returnValue = instance.GetTargetFamilies`

## Syntax


**Visual Basic**`Public MustOverride Function GetTargetFamilies As ReadOnlyCollection(Of TargetFamily)`

**C#**`public abstract ReadOnlyCollection<TargetFamily> GetTargetFamilies ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of **DeviceFamily** objects.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






