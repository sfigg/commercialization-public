---
author: joshbax-msft
title: ProjectManager.GetProductTypes Method
description: ProjectManager.GetProductTypes Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ecfc8a91-08a1-4c5d-81d3-31c0cb292e0a
---

# ProjectManager.GetProductTypes Method


This method retrieves the collection of registered product types.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim returnValue As ReadOnlyCollection(Of ProductType)``returnValue = instance.GetProductTypes`

## Syntax


**Visual Basic**`Public MustOverride Function GetProductTypes As ReadOnlyCollection(Of ProductType)`

**C#**`public abstract ReadOnlyCollection<ProductType> GetProductTypes ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






