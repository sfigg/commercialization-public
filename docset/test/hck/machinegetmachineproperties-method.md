---
author: joshbax-msft
title: Machine.GetMachineProperties Method
description: Machine.GetMachineProperties Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 55ba53f2-0ba1-4860-9281-ce028d0b1e48
---

# Machine.GetMachineProperties Method


This method retrieves all of the machine properties for this machine.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim returnValue As ReadOnlyCollection(Of MachineProperty)``returnValue = instance.GetMachineProperties`

## Syntax


**Visual Basic**`Public MustOverride Function GetMachineProperties As ReadOnlyCollection(Of MachineProperty)`

**C#**`public abstract ReadOnlyCollection<MachineProperty> GetMachineProperties ()`

## Return Value


Returns **ReadOnlyCollection**, which is a read-only list of machine properties.

## Remarks


This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






