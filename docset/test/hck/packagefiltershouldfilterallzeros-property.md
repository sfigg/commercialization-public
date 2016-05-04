---
author: joshbax-msft
title: PackageFilter.ShouldFilterAllZeros Property
description: PackageFilter.ShouldFilterAllZeros Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ed7db6d7-a63f-407c-b832-cbafbbd3f08a
---

# PackageFilter.ShouldFilterAllZeros Property


This property represents a value indicating whether the filter should be applied if the pass and fail count are both zero.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageFilter``Dim value As Boolean``value = instance.ShouldFilterAllZeros`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property ShouldFilterAllZeros As Boolean`

**C#**`[DataMemberAttribute]``public bool ShouldFilterAllZeros { get; }`

## Property Value


Returns **Boolean**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






