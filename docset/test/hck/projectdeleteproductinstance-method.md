---
author: joshbax-msft
title: Project.DeleteProductInstance Method
description: Project.DeleteProductInstance Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ad961410-0637-4ecb-bdfe-99b83a87dc27
---

# Project.DeleteProductInstance Method


This method deletes **ProductInstance** object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim nameOfProductInstanceToDelete As String``instance.DeleteProductInstance(nameOfProductInstanceToDelete)`

## Syntax


**Visual Basic**`Public MustOverride Sub DeleteProductInstance ( _`           `nameOfProductInstanceToDelete As String _``) `

**C#**`public abstract void DeleteProductInstance (`           `string nameOfProductInstanceToDelete``)`

## Parameters


*nameOfProductInstanceToDelete*      The name of the **ProductInstance** object to delete.

## Remarks


An error occurs if *nameOfProductInstanceToDelete* is **null** or empty.

This method is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






