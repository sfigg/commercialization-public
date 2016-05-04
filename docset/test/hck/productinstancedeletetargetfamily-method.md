---
author: joshbax-msft
title: ProductInstance.DeleteTargetFamily Method
description: ProductInstance.DeleteTargetFamily Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 68bab74f-b32b-4b7f-8a7a-545bf86e5b6e
---

# ProductInstance.DeleteTargetFamily Method


This method deletes a target family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim familyToDelete As TargetFamily``instance.DeleteTargetFamily(familyToDelete)`

## Syntax


**Visual Basic**`Public MustOverride Sub DeleteTargetFamily ( _`           `familyToDelete As TargetFamily _``) `

**C#**`public abstract void DeleteTargetFamily (`           `TargetFamily familyToDelete``)`

## Parameters


*familyToDelete*      The **TargetFamily** to delete.

## Remarks


An exception occurs if *familyToDelete* is **null** or not valid, or if an internal storage problem exists (for example, the controller cannot be reached).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






