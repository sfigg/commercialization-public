---
author: joshbax-msft
title: TargetFamily.DeleteTarget Method
description: TargetFamily.DeleteTarget Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 689488ee-423b-4449-87cb-7587c4111e36
---

# TargetFamily.DeleteTarget Method


This method deletes a test target from a target family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TargetFamily``Dim targetToDelete As Target``instance.DeleteTarget(targetToDelete)`

## Syntax


**Visual Basic**`Public MustOverride Sub DeleteTarget ( _`           `targetToDelete As Target _``) `

**C#**`public abstract void DeleteTarget (`           `Target targetToDelete``)`

## Parameters


*targetToDelete*      The test target to delete.

## Remarks


All results associated with the target are also deleted.

This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






