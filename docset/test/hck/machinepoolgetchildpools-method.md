---
author: joshbax-msft
title: MachinePool.GetChildPools Method
description: MachinePool.GetChildPools Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 36a42fdd-b37d-41b9-b6a6-75c3de8be77e
---

# MachinePool.GetChildPools Method


**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachinePool``Dim returnValue As ReadOnlyCollection(Of MachinePool)``returnValue = instance.GetChildPools`

## Syntax


**Visual Basic**`Public MustOverride Function GetChildPools As ReadOnlyCollection(Of MachinePool)`

**C#**`public abstract ReadOnlyCollection<MachinePool> GetChildPools ()`

## Return Value


Returns **ReadOnlyCollection**, which is the collection of child pools.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






