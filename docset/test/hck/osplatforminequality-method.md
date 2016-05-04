---
author: joshbax-msft
title: OSPlatform.Inequality Method
description: OSPlatform.Inequality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f951529f-8134-4b91-bbe6-356332cc161e
---

# OSPlatform.Inequality Method


This method provides an Inequality operator between two **OSPlatform** objects.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As OSPlatform``Dim second As OSPlatform``Dim returnValue As Boolean``returnValue = (first <> second)`

## Syntax


**Visual Basic**`Public Shared Operator <> ( _`           `first As OSPlatform, _`           `second As OSPlatform _``) As Boolean`

**C#**`public static bool operator != (`           `OSPlatform first,`           `OSPlatform second``)`

## Parameters


*first*           The first **OSPlatform** object to compare against.

*second*           The second **OSPlatform** object to compare against.

## Return Value


**true** if the objects are not equal, or **false** if the objects are the same or if either object is **null**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






