---
author: joshbax-msft
title: PackageManager.GetFilters Method
description: PackageManager.GetFilters Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5cc3e6fe-0463-4eb6-b945-00697482525c
---

# PackageManager.GetFilters Method


This method retrieves the filters present in the submission package. Getting filters from a package is not supported.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim returnValue As ReadOnlyCollection(Of IFilter)``returnValue = instance.GetFilters`

## Syntax


**Visual Basic**`Public Overrides Function GetFilters As ReadOnlyCollection(Of IFilter)`

**C#**`public override ReadOnlyCollection<IFilter> GetFilters ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






