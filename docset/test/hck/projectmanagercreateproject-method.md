---
author: joshbax-msft
title: ProjectManager.CreateProject Method
description: ProjectManager.CreateProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 72a33b46-39a9-4b10-a435-ccd6becb4ca9
---

# ProjectManager.CreateProject Method


This method creates a new project.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim projectName As String``returnValue As Project``returnValue = instance.CreateProject(projectName)`

## Syntax


**Visual Basic**`Public MustOverride Function CreateProject ( _`           `projectName As String, _``) As Project`

**C#**`public abstract Project CreateProject (`           `string projectName``)`

## Parameters


*projectName*      The name of the project to create.

## Return Value


Returns [Project Class](project-class.md).

## Remarks


*projectName* is not case sensitive.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






