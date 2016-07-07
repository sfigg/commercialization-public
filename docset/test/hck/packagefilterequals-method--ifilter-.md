---
author: joshbax-msft
title: PackageFilter.Equals Method (IFilter)
description: PackageFilter.Equals Method (IFilter)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 00fdfa02-0494-4d56-a6cb-9f3ea3d4d401
---

# PackageFilter.Equals Method (IFilter)


This method compares two **PackageFilter** instances.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageFilter``Dim other As IFilter``Dim returnValue As Boolean``returnValue = instance.Equals(other)`

## Syntax


**Visual Basic**`Public Function Equals ( _`           `other As IFilter _``) As Boolean`

**C#**`public bool Equals (`           `IFilter other``)`

## Parameters


*other*      The **PackageFilter** to compare.

## Return Value


**true** if the two objects are equal; otherwise, **false**.

## Thread Saftey


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






