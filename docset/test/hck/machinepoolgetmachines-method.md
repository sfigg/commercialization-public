---
author: joshbax-msft
title: MachinePool.GetMachines Method
description: MachinePool.GetMachines Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c5ce548b-8a97-4051-9aea-114bd2f2c463
---

# MachinePool.GetMachines Method


**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachinePool``Dim returnValue As ReadOnlyCollection(Of Machine)``returnValue = instance.GetMachines`

## Syntax


**Visual Basic**`Public MustOverride Function GetMachines As ReadOnlyCollection(Of Machine)`

**C#**`public abstract ReadOnlyCollection<Machine> GetMachines ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of machines (test computers) in this machine pool.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






