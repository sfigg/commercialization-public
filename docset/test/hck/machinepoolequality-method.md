---
author: joshbax-msft
title: MachinePool.Equality Method
description: MachinePool.Equality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ca7a8779-3e05-4e45-b98b-0aaeff9a6244
---

# MachinePool.Equality Method


**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As MachinePool``Dim second As MachinePool``Dim returnValue As Boolean``returnValue = (first = second)`

## Syntax


**Visual Basic**`Public Shared Operator = ( _`           `first As MachinePool, _`           `second As MachinePool _``) As Boolean`

**C#**`public static bool operator == (`           `MachinePool first,`           `MachinePool second``)`

## Parameters


*first*           The first value to compare against.

*second*           The second value to compare against.

## Return Value


**true** if the objects are equal; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






