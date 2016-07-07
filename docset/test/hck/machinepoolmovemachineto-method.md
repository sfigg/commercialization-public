---
author: joshbax-msft
title: MachinePool.MoveMachineTo Method
description: MachinePool.MoveMachineTo Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9bf7183c-2250-40dc-acb4-2f0966699491
---

# MachinePool.MoveMachineTo Method


**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachinePool``Dim machine As Machine``Dim otherPool As MachinePool``instance.MoveMachineTo(machine, otherPool)`

## Syntax


**Visual Basic**`Public MustOverride Sub MoveMachineTo ( _`           `machine As Machine, _`           `otherPool As MachinePool _``)`

**C#**`public abstract void MoveMachineTo (`           `Machine machine,`           `MachinePool otherPool``)`

## Parameters


*machine*           A machine to move from this pool.

*otherPool*           The destination pool to move the machine to.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






