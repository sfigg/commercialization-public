---
author: joshbax-msft
title: Task.GetAppliedFilters Method
description: Task.GetAppliedFilters Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f6f14dc0-0944-461f-9561-0dfb42a168be
---

# Task.GetAppliedFilters Method


This method retrieves the filters applied for this task result.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Task``Dim returnValue As ReadOnlyCollection(Of IFilter)``returnValue = instance.GetAppliedFilters`

## Syntax


**Visual Basic**`Public MustOverride Function GetAppliedFilters As ReadOnlyCollection(Of IFilter)`

**C#**`public abstract ReadOnlyCollection<IFilter> GetAppliedFilters ()`

## Return Value


Returns **ReadOnlyCollection**, which is a read-only collection of filters applied to a test task.

## Remarks


If the task does not have a TaskResult or the TaskResult status is Not Complete, this method returns an empty collection.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






