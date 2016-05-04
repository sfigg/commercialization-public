---
author: joshbax-msft
title: TestResult.GetAppliedFilters Method
description: TestResult.GetAppliedFilters Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 40f49fc7-31dc-496d-9f9b-ef5b0713fb5e
---

# TestResult.GetAppliedFilters Method


This method retrieves the filters applied for this test result.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TestResult``Dim returnValue As ReadOnlyCollection(Of IFilter)``returnValue = instance.GetAppliedFilters`

## Syntax


**Visual Basic**`Public MustOverride Function GetAppliedFilters As ReadOnlyCollection(Of IFilter)`

**C#**`public abstract ReadOnlyCollection<IFilter> GetAppliedFilters ()`

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






