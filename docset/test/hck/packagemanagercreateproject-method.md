---
author: joshbax-msft
title: PackageManager.CreateProject Method
description: PackageManager.CreateProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: eefb2bcb-edab-4119-b0e4-2d0f5eab3eba
---

# PackageManager.CreateProject Method


This method creates a new project in a submission package.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim projectName As String``returnValue As Project``returnValue = instance.CreateProject(projectName)`

## Syntax


**Visual Basic**`Public Overrides Function CreateProject ( _`           `projectName As String, _``) As Project`

**C#**`public override Project CreateProject (`           `string projectName``)`

## Parameters


*projectName*      The name of the project to create.

## Return Value


Returns [Project Class](project-class.md).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






