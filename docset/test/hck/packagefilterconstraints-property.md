---
author: joshbax-msft
title: PackageFilter.Constraints Property
description: PackageFilter.Constraints Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ca0e873c-0c54-43ee-b5c0-806a8d1d2c95
---

# PackageFilter.Constraints Property


This property represents the filter constraints for the filter.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageFilter``Dim value As ReadOnlyCollection(Of IFilterConstraint)``returnValue = instance.Constraints`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property Constraints As ReadOnlyCollection(Of IFilterConstraint)`

**C#**`[DataMemberAttribute]``public ReadOnlyCollection<IFilterConstraint> Constraints { get; }``)`

## Property Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






