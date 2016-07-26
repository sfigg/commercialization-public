---
author: joshbax-msft
title: MachineRole.IsValidRole Method
description: MachineRole.IsValidRole Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 06a83f51-f7a7-4aa3-bef4-025111e6be44
---

# MachineRole.IsValidRole Method


This method checks to see if the other machine role is sufficient to enable this machine role.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineRole``Dim otherMachineRole As MachineRole``Dim returnValue As Boolean``returnValue = instance.IsValidRole(otherMachineRole)`

## Syntax


**Visual Basic**`Public Function IsValidRole ( _`           `otherMachineRole As MachineRole _``) As Boolean`

**C#**`public bool IsValidRole (`           `MachineRole otherMachineRole``) `

## Parameters


*otherMachineRole*           The **MachineRole** object to compare against this **MachineRole** object.

## Return Value


**true** if the two objects being compared are the same; otherwise, **false**.

## Remarks


An exception is thrown when the *otherMachineRole* parameter is **null**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






