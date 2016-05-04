---
author: joshbax-msft
title: MachineSet.Equals Method (MachineSet)
description: MachineSet.Equals Method (MachineSet)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b8220b4e-26a6-4842-ad81-06e1167f9111
---

# MachineSet.Equals Method (MachineSet)


This method compares two **MachineSet** instances.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineSet``Dim otherMachineSet As MachineSet``Dim returnValue As Boolean``returnValue = instance.Equals(otherMachineSet)`

## Syntax


**Visual Basic**`Public Function Equals ( _`           `otherMachineSet As MachineSet _``) As Boolean`

**C#**`public bool Equals (`           `MachineSet otherMachineSet``)`

## Parameters


*otherMachineSet*      The **MachineSet** object to compare against.

## Return Value


**true** if the two objects are equal; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






