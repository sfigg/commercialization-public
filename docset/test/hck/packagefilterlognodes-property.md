---
author: joshbax-msft
title: PackageFilter.LogNodes Property
description: PackageFilter.LogNodes Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 82dd7da2-068b-4358-b205-2aee9bcafc30
---

# PackageFilter.LogNodes Property


This property represents the filter log nodes for the filter.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageFilter``Dim value As ReadOnlyCollection(Of IFilterLogNode)``value = instance.LogNodes`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property LogNodes As ReadOnlyCollection(Of IFilterLogNode)`

**C#**`[DataMemberAttribute]``public ReadOnlyCollection<IFilterLogNode> LogNodes { get; }`

## Property Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






