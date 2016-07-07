---
author: joshbax-msft
title: ProjectManager.DeleteProject Method
description: ProjectManager.DeleteProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c0214f5e-2868-4c43-87be-991a05528162
---

# ProjectManager.DeleteProject Method


This method deletes a project.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim projectNameToDelete As String``instance.DeleteProject(projectNameToDelete)`

## Syntax


**Visual Basic**`Public MustOverride Sub DeleteProject ( _`           `projectNameToDelete As String _``)`

**C#**`public abstract void DeleteProject (`           `string projectNameToDelete``)`

## Parameters


*projectNameToDelete*           The name of the project to delete.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






