---
author: joshbax-msft
title: PackageFilterConstraint.GetHashCode Method
description: PackageFilterConstraint.GetHashCode Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1faa440c-4774-489f-8e72-cadbde8bf895
---

# PackageFilterConstraint.GetHashCode Method


This method serves as a hash function for a particular package filter type.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageFilterConstraint``Dim returnValue As Integer``returnValue = instance.GetHashCode`

## Syntax


**Visual Basic**`Public Overrides Function GetHashCode As Integer`

**C#**`public override int GetHashCode ()`

## Return Value


Returns **Int32**, which is a unique number which is the **PackageFilterConstraint** hash code.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






