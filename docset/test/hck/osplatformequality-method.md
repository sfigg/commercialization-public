---
author: joshbax-msft
title: OSPlatform.Equality Method
description: OSPlatform.Equality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0d155b2a-def0-473f-a2df-33cdfec5054b
---

# OSPlatform.Equality Method


This method provides an Equality operator between two **OSPlatform** objects.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As OSPlatform``Dim second As OSPlatform``Dim returnValue As Boolean``returnValue = (first = second)`

## Syntax


**Visual Basic**`Public Shared Operator = ( _`           `first As OSPlatform, _`           `second As OSPlatform _``) As Boolean`

**C#**`public static bool operator == (`           `OSPlatform first,`           `OSPlatform second``)`

## Parameters


*first*      The first **OSPlatform** object to compare against.

*second*      The second **OSPlatform** object to compare against.

## Return Value


**true** if the **OSPlatform** objects are identical; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






