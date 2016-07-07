---
author: joshbax-msft
title: DatabaseProjectManager.GetProject Method
description: DatabaseProjectManager.GetProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8e2df435-6b8c-439e-94f3-8b415ebd8077
---

# DatabaseProjectManager.GetProject Method


This method loads an existing project into the collection.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim projectName As String``Dim returnValue As Project``returnValue = instance.GetProject(projectName)`

## Syntax


**Visual Basic**`Public Overrides Function GetProject ( _`           `projectName As String _``) As Project`

**C#**`public override Project GetProject (`           `string projectName``) `

## Parameters


*projectName*      The case-insensitive name of the project to load.

## Return Value


Returns [Project Class](project-class.md).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






