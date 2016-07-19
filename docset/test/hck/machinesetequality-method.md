---
author: joshbax-msft
title: MachineSet.Equality Method
description: MachineSet.Equality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2302fc1a-1cb5-42f0-b052-56c45c20b7c9
---

# MachineSet.Equality Method


This method provides an Equality operator between two **MachineSet** objects.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As MachineSet``Dim second As MachineSet``Dim returnValue As Boolean``returnValue = (first = second)`

## Syntax


**Visual Basic**`Public Shared Operator = ( _`           `first As MachineSet, _`           `second As MachineSet _``) As Boolean`

**C#**`public static bool operator == (`           `MachineSet first,`           `MachineSet second``)`

## Parameters


*first*      The first **MachineSet** object to compare against.

*second*      The second **MachineSet** object to compare against.

## Return Value


**true** if the **MachineSet** objects are identical; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






