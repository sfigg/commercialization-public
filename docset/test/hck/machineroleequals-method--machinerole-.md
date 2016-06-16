---
author: joshbax-msft
title: MachineRole.Equals Method (MachineRole)
description: MachineRole.Equals Method (MachineRole)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0408d829-8642-4181-a2e6-0ac576db70e4
---

# MachineRole.Equals Method (MachineRole)


This method compares two **MachineRole** instances.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineRole``Dim otherMachineRole As MachineRole``Dim returnValue As Boolean``returnValue = instance.Equals(otherMachineRole)`

## Syntax


**Visual Basic**`Public Function Equals ( _`           `otherMachineRole As MachineRole _``) As Boolean`

**C#**`public bool Equals (`           `MachineRole otherMachineRole``)`

## Parameters


*otherMachineRole*      The **MachineRole** object to compare against this **MachineRole** object.

## Return Value


Returns **Boolean**, which has a value of **true** if the two objects are equal, or a value of **false** if they are different.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






