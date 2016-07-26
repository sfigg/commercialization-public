---
author: joshbax-msft
title: DatabaseProjectManager.GetProductTypes Method
description: DatabaseProjectManager.GetProductTypes Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 64d08604-70e9-431b-bbb9-eacccf2d652c
---

# DatabaseProjectManager.GetProductTypes Method


This method returns all of the product types stored in the Windows HCK.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim returnValue As ReadOnlyCollection(Of ProductType)``returnValue = instance.GetProductTypes`

## Syntax


**Visual Basic**`Public Overrides Function GetProductTypes As ReadOnlyCollection(Of ProductType)`

**C#**`public override ReadOnlyCollection<ProductType> GetProductTypes ()`

## Return Value


Returns **ReadOnlyCollection**, which is a list of product types.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






