---
author: joshbax-msft
title: IFilter.LogNodes Property
description: IFilter.LogNodes Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9e9b8510-5ba4-49e2-9eb4-69d64eb66761
---

# IFilter.LogNodes Property


This property represents the filter log nodes for the filter.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IFilter``Dim value As ReadOnlyCollection(Of IFilterLogNode)``value = instance.LogNodes`

## Syntax


**Visual Basic**`ReadOnly Property LogNodes As ReadOnlyCollection(Of IFilterLogNode)`

**C#**`ReadOnlyCollection<IFilterLogNode> LogNodes { get; }`

## Property Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






