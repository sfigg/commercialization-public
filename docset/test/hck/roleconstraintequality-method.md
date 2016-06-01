---
author: joshbax-msft
title: RoleConstraint.Equality Method
description: RoleConstraint.Equality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2c30e62a-c7db-4ec8-a6e1-3ba52a0e2eed
---

# RoleConstraint.Equality Method


This method acts as an Equality operator. The method returns False if either operand is null, otherwise returns True or False depending on the parameter values.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As RoleConstraint``Dim second As RoleConstraint``Dim returnValue As Boolean``returnValue = (first = second)`

## Syntax


**Visual Basic**`Public Shared Operator = ( _`           `first As As RoleConstraint, _`           `second As RoleConstraint _``) As Boolean`

**C#**`public static bool operator == (`      `RoleConstraint first,`      `RoleConstraint second``)`

## Parameters


*first*           The first value to compare against.

*second*           The second value to compare against.

## Return Value


**true** if the objects are equal; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






