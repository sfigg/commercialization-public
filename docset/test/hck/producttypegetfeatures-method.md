---
author: joshbax-msft
title: ProductType.GetFeatures Method
description: ProductType.GetFeatures Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 91208e85-98a6-4300-ba88-2e277b4fda54
---

# ProductType.GetFeatures Method


This method retrieves the enumerated list of features stored in m\_Features.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductType``Dim returnValue As ReadOnlyCollection(Of Feature)``returnValue = instance.GetFeatures`

## Syntax


**Visual Basic**`Public MustOverride Function GetFeatures As ReadOnlyCollection(Of Feature)`

**C#**`public abstract ReadOnlyCollection<Feature> GetFeatures ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of features for a product type..

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






