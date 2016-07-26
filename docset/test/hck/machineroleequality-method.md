---
author: joshbax-msft
title: MachineRole.Equality Method
description: MachineRole.Equality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9f440076-ee0e-4839-8d35-78d4ecf81873
---

# MachineRole.Equality Method


This method acts as an Equality operator which always returns a value of False if either operand is null, otherwise returns True or False.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As MachineRole``Dim second As MachineRole``Dim returnValue As Boolean``returnValue = (first = second)`

## Syntax


**Visual Basic**`Public Shared Operator = ( _`           `first As MachineRole, _`           `second As MachineRole _``) As Boolean`

**C#**`public static bool operator == (`           `MachineRole first,`           `MachineRole second``)`

## Parameters


*first*           The first value to compare against.

*second*           The second value to compare against.

## Return Value


**true** if the objects are equal; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






