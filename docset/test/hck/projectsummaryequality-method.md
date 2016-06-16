---
author: joshbax-msft
title: ProjectSummary.Equality Method
description: ProjectSummary.Equality Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d7740d19-4167-4c1a-b02a-497da15121d7
---

# ProjectSummary.Equality Method


This method provides an Equality operator between two **ProjectSummary** objects.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim first As ProjectSummary``Dim second As ProjectSummary``Dim returnValue As Boolean``returnValue = (first = second)`

## Syntax


**Visual Basic**`Public Shared Operator = ( _`           `first As ProjectSummary, _`           `second As ProjectSummary _``) As Boolean`

**C#**`public static bool operator == (`           `ProjectSummary first,`           `ProjectSummary second``)`

## Parameters


*first*      The first **ProjectSummary** object to compare against.

*second*      The second **ProjectSummary** object to compare against.

## Return Value


**true** if the **ProjectSummary** objects are identical; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






