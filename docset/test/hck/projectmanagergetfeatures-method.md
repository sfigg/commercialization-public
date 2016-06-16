---
author: joshbax-msft
title: ProjectManager.GetFeatures Method
description: ProjectManager.GetFeatures Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e014c388-f3d8-4691-8513-b00ec47205a8
---

# ProjectManager.GetFeatures Method


This method retrieves the list of feature registered.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim returnValue As ReadOnlyCollection(Of Feature)``returnValue = instance.GetFeatures`

## Syntax


**Visual Basic**`Public MustOverride Function GetFeatures As ReadOnlyCollection(Of Feature)`

**C#**`public abstract ReadOnlyCollection<Feature> GetFeatures ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






