---
author: joshbax-msft
title: Project.DeleteProperty Method
description: Project.DeleteProperty Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ae4d6755-b2ee-4802-891a-4aec26b05e56
---

# Project.DeleteProperty Method


This method deletes an instance of a **Name** property.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim nameOfPropertyToDelete As String``instance.DeleteProperty(nameOfPropertyToDelete)`

## Syntax


**Visual Basic**`Public MustOverride Sub DeleteProperty ( _`           `nameOfPropertyToDelete As String _``)`

**C#**`public abstract void DeleteProperty (`           `string nameOfPropertyToDelete``)`

## Parameters


*nameOfPropertyToDelete*           The name of the property to delete.

## Remarks


An exception occurs if *nameOfPropertyToDelete* is **null** or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






