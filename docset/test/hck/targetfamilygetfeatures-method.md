---
author: joshbax-msft
title: TargetFamily.GetFeatures Method
description: TargetFamily.GetFeatures Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b029358d-e141-4a2b-871d-e530b3ae9768
---

# TargetFamily.GetFeatures Method


This method retrieves a list of features for this **TargetFamily**.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TargetFamily``Dim returnValue As ReadOnlyCollection(Of Feature)``returnValue = instance.GetFeatures`

## Syntax


**Visual Basic**`Public MustOverride Function GetFeatures As ReadOnlyCollection(Of Feature)`

**C#**`public abstract ReadOnlyCollection<Feature> GetFeatures ()`

## Return Value


Returns **ReadOnlyCollection**, which is the collection of features.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






