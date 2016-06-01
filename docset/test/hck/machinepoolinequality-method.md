---
author: joshbax-msft
title: MachinePool.Inequality Method
description: MachinePool.Inequality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c8fd5d5d-a679-4ee3-bbd5-5ad84f61b2cd
---

# MachinePool.Inequality Method


This method acts as an Inequality operator. The method always returns **false** if either operand is **null**; otherwise, returns **true** or **false**.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As MachinePool``Dim second As MachinePool``Dim returnValue As Boolean``returnValue = (first <> second)`

## Syntax


**Visual Basic**`Public Shared Operator <> ( _`           `first As MachinePool, _`           `second As MachinePool _``) As Boolean`

**C#**`public static bool operator != (`           `MachinePool first,`           `MachinePool second``)`

## Parameters


*first*           The first value to compare against.

*second*           The second value to compare against.

## Return Value


**true** if the objects are not equal, or **false** if the objects are the same or if either object is **null**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






