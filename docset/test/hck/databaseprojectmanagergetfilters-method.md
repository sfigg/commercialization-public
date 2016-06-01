---
author: joshbax-msft
title: DatabaseProjectManager.GetFilters Method
description: DatabaseProjectManager.GetFilters Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f3a67e1a-7ac8-4a15-8b4b-55dc177556f0
---

# DatabaseProjectManager.GetFilters Method


This method returns all of the filters stored in the Windows HCK.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim returnValue As ReadOnlyCollection(Of IFilter)``returnValue = instance.GetFilters`

## Syntax


**Visual Basic**`Public Overrides Function GetFilters As ReadOnlyCollection(Of IFilter)`

**C#**`public override ReadOnlyCollection<IFilter> GetFilters ()`

## Return Value


Returns **ReadOnlyCollection**, which is a list of filter objects.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






