---
author: joshbax-msft
title: MachineSet.IsValid Method
description: MachineSet.IsValid Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 90c0de0d-3609-499c-98d2-7f81461cc792
---

# MachineSet.IsValid Method


This method checks to see if the specified **MachineSet** is sufficient to enable this machine set.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineSet``Dim otherMachineSet As MachineSet``Dim returnValue As Boolean``returnValue = instance.IsValid(otherMachineSet)`

## Syntax


**Visual Basic**`Public Function IsValid ( _`           `otherMachineSet As MachineSet _``) As Boolean`

**C#**`public bool IsValid (`           `MachineSet otherMachineSet``) `

## Parameters


*otherMachineSet*           The **MachineSet** object to compare against this **MachineSet** object.

## Return Value


**true** if the two objects being compared are the same; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






