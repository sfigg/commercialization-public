---
author: joshbax-msft
title: PackageFilterLogNode.GetHashCode Method
description: PackageFilterLogNode.GetHashCode Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 18d472fe-f171-4b64-8c1f-f7705c877429
---

# PackageFilterLogNode.GetHashCode Method


This method serves as a hash function for a particular package filter type.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageFilterLogNode``Dim returnValue As Integer``returnValue = instance.GetHashCode`

## Syntax


**Visual Basic**`Public Overrides Function GetHashCode As Integer`

**C#**`public override int GetHashCode ()`

## Return Value


Returns **Int32**, which is a unique number which is the **PackageFilterConstraint** hash code.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






