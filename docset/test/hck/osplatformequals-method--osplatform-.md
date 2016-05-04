---
author: joshbax-msft
title: OSPlatform.Equals Method (OSPlatform)
description: OSPlatform.Equals Method (OSPlatform)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ec3225c3-a7a2-4ce7-937e-944e805ed958
---

# OSPlatform.Equals Method (OSPlatform)


This method compares two **OSPlatform** instances.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As OSPlatform``Dim otherPlatform As OSPlatform``Dim returnValue As Boolean``returnValue = instance.Equals(otherPlatform)`

## Syntax


**Visual Basic**`Public Function Equals ( _`           `otherPlatform As OSPlatform _``) As Boolean`

**C#**`public bool Equals (`           `OSPlatform otherPlatform``)`

## Parameters


*otherMachineSet*      The **OSPlatform** object to compare against.

## Return Value


**true** if the two objects are equal; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






