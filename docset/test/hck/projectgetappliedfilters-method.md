---
author: joshbax-msft
title: Project.GetAppliedFilters Method
description: Project.GetAppliedFilters Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7004d237-bed6-4e44-9db6-93ad18be2e20
---

# Project.GetAppliedFilters Method


This method retrieves a list of filters applied for this submission project.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim returnValue As ReadOnlyCollection(Of IFilter)``returnValue = instance.GetAppliedFilters`

## Syntax


**Visual Basic**`Public Function GetAppliedFilters As ReadOnlyCollection(Of IFilter)`

**C#**`public ReadOnlyCollection<IFilter> GetAppliedFilters ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of filters.

## Remarks


An exception occurs when the method fails to retrieve the filters.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






