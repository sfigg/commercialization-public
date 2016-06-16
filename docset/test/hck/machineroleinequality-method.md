---
author: joshbax-msft
title: MachineRole.Inequality Method
description: MachineRole.Inequality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 43cdb2f8-3cef-411b-a4a5-94a6a26fc6c4
---

# MachineRole.Inequality Method


This method acts as an Inequality operator. The method always returns **false** if either operand is **null**; otherwise, returns **true** or **false**.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As MachineRole``Dim second As MachineRole``Dim returnValue As Boolean``returnValue = (first <> second)`

## Syntax


**Visual Basic**`Public Shared Operator <> ( _`           `first As MachineRole, _`           `second As MachineRole _``) As Boolean`

**C#**`public static bool operator != (`           `MachineRole first,`           `MachineRole second``)`

## Parameters


*first*           The first value to compare against.

*second*           The second value to compare against.

## Return Value


**true** if the objects are not equal, or **false** if the objects are the same or if either object is **null**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






