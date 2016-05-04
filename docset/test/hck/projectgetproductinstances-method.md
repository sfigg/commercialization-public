---
author: joshbax-msft
title: Project.GetProductInstances Method
description: Project.GetProductInstances Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3fb363b1-d70a-4552-9000-25bd360eaf01
---

# Project.GetProductInstances Method


This method retrieves a list of **ProductInstance** objects.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim returnValue As ReadOnlyCollection(Of ProductInstance)``returnValue = instance.GetProductInstances`

## Syntax


**Visual Basic**`Public MustOverride Function GetProductInstances As ReadOnlyCollection(Of ProductInstance)`

**C#**`public abstract ReadOnlyCollection<ProductInstance> GetProductInstances ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of **ProductInstance** objects.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






