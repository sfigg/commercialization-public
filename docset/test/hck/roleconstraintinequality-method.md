---
author: joshbax-msft
title: RoleConstraint.Inequality Method
description: RoleConstraint.Inequality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9c61b328-d2b5-4a9b-b86e-ba3b622239d7
---

# RoleConstraint.Inequality Method


This method acts as an InEquality operator. It returns false if either operand is **null**.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As RoleConstraint``Dim second As RoleConstraint``Dim returnValue As Boolean``returnValue = (first <> second)`

## Syntax


**Visual Basic**`Public Shared Operator <> ( _`      `first As RoleConstraint, _`      `second As RoleConstraint _``) As Boolean`

**C#**`public static bool operator != (`           `RoleConstraint first,`           `RoleConstraint second``)`

## Parameters


*first*           The first value to compare against.

*second*           The second value to compare against.

## Return Value


**true** if the objects are not equal, or **false** if the objects are the same or if either object is **null**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






