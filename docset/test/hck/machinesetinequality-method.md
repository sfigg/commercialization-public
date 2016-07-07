---
author: joshbax-msft
title: MachineSet.Inequality Method
description: MachineSet.Inequality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a1bf9e97-d211-47b4-b2f5-3a9f5d7fd6c7
---

# MachineSet.Inequality Method


This method provides an Inequality operator between two **MachineSet** objects.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As MachineSet``Dim second As MachineSet``Dim returnValue As Boolean``returnValue = (first <> second)`

## Syntax


**Visual Basic**`Public Shared Operator <> ( _`           `first As MachineSet, _`           `second As MachineSet _``) As Boolean`

**C#**`public static bool operator != (`           `MachineSet first,`           `MachineSet second``)`

## Parameters


*first*           The first **MachineSet** object to compare against.

*second*           The second **MachineSet** object to compare against.

## Return Value


**true** if the objects are not equal, or **false** if the objects are the same or if either object is **null**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






