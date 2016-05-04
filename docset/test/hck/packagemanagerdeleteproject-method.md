---
author: joshbax-msft
title: PackageManager.DeleteProject Method
description: PackageManager.DeleteProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fd9fc52c-48f1-44e4-8e4f-6d67d3c3da05
---

# PackageManager.DeleteProject Method


This method deletes a project from the submission package.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim projectNameToDelete As String``instance.DeleteProject(projectNameToDelete)`

## Syntax


**Visual Basic**`Public Overrides Sub DeleteProject ( _`           `projectNameToDelete As String _``)`

**C#**`public override void DeleteProject (`           `string projectNameToDelete``)`

## Parameters


*projectNameToDelete*           The name of the project to delete.

## Remarks


An exception is thrown if the method attempts to delete a project from a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






