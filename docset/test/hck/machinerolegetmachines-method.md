---
author: joshbax-msft
title: MachineRole.GetMachines Method
description: MachineRole.GetMachines Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2e3ba798-ac70-4543-8c13-549a0d99caf1
---

# MachineRole.GetMachines Method


This method retrieves all of the machines assigned to this role.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineRole``Dim returnValue As ReadOnlyCollection(Of Machine)``returnValue = instance.GetMachines`

## Syntax


**Visual Basic**`Public Function GetMachines As ReadOnlyCollection(Of Machine)`

**C#**`public ReadOnlyCollection<Machine> GetMachines ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






