---
author: joshbax-msft
title: ProductInstance.GetProductTypes Method
description: ProductInstance.GetProductTypes Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2c404f82-b884-4b0e-8c3a-945c5e3b0b91
---

# ProductInstance.GetProductTypes Method


This method attempts to detect product types this product instance belongs to.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim returnValue As ReadOnlyCollection(Of ProductType)``returnValue = instance.GetProductTypes`

## Syntax


**Visual Basic**`Public Overridable Function GetProductTypes As ReadOnlyCollection(Of ProductType)`

**C#**`public virtual ReadOnlyCollection<ProductType> GetProductTypes ()`

## Return Value


Returns **ReadOnlyCollection**, which is a list() of product types.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






