---
author: joshbax-msft
title: PackageFilter.GetHashCode Method
description: PackageFilter.GetHashCode Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2a57709b-1259-47e8-b39c-68c13bc8eb5e
---

# PackageFilter.GetHashCode Method


This method serves as a hash function for a particular type.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageFilter``Dim returnValue As Integer``returnValue = instance.GetHashCode`

## Syntax


**Visual Basic**`Public Overrides Function GetHashCode As Integer`

**C#**`public override int GetHashCode ()`

## Return Value


Returns **Int32**, which is a unique number which is the **PackageFilter** hash code.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






