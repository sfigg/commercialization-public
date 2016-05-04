---
author: joshbax-msft
title: TargetFamily.GetTargets Method
description: TargetFamily.GetTargets Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5ccd31aa-bc45-48f2-8894-2fde3831f89a
---

# TargetFamily.GetTargets Method


This method retrieves a list of test targets that have been assigned to this Device Family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TargetFamily``Dim returnValue As ReadOnlyCollection(Of Target)``returnValue = instance.GetTargets`

## Syntax


**Visual Basic**`Public MustOverride Function GetTargets As ReadOnlyCollection(Of Target)`

**C#**`public abstract ReadOnlyCollection<Target> GetTargets ()`

## Return Value


Returns **ReadOnlyCollection**, which is a read-only collection of test targets for this target family.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






