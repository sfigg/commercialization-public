---
author: joshbax-msft
title: ProjectManager.GetProject Method
description: ProjectManager.GetProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0b185f07-95ad-4cda-a4cb-ed9a7a33e484
---

# ProjectManager.GetProject Method


This method retrieves a Project and returns its object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim projectName As String``Dim returnValue As Project``returnValue = instance.GetProject(projectName)`

## Syntax


**Visual Basic**`Public MustOverride Function GetProject ( _`           `projectName As String _``) As Project`

**C#**`public abstract Project GetProject (`           `string projectName``) `

## Parameters


*projectName*      The name of the Project to open.

## Return Value


Returns [Project Class](project-class.md).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






