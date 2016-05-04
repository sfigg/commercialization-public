---
author: joshbax-msft
title: ProjectSummary.Inequality Method
description: ProjectSummary.Inequality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 386dd54d-9703-4e1b-b4e6-8886137b9e15
---

# ProjectSummary.Inequality Method


This method provides an Inequality operator between two **ProjectSummary** objects.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As ProjectSummary``Dim second As ProjectSummary``Dim returnValue As Boolean``returnValue = (first <> second)`

## Syntax


**Visual Basic**`Public Shared Operator <> ( _`           `first As ProjectSummary, _`           `second As ProjectSummary _``) As Boolean`

**C#**`public static bool operator != (`           `ProjectSummary first,`           `ProjectSummary second``)`

## Parameters


*first*           The first **ProjectSummary** object to compare against.

*second*           The second **ProjectSummary** object to compare against.

## Return Value


**true** if the objects are not equal, or **false** if the objects are the same or if either object is **null**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






