---
author: joshbax-msft
title: PackageManager.GetProductTypes Method
description: PackageManager.GetProductTypes Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 684f4e81-770e-43fe-8b9f-bb09e77a6ecf
---

# PackageManager.GetProductTypes Method


This method retrieves the product types found within the package.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim returnValue As ReadOnlyCollection(Of ProductType)``returnValue = instance.GetProductTypes`

## Syntax


**Visual Basic**`Public Overrides Function GetProductTypes As ReadOnlyCollection(Of ProductType)`

**C#**`public override ReadOnlyCollection<ProductType> GetProductTypes ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






