---
author: joshbax-msft
title: DatabaseProjectManager.CreateProject Method
description: DatabaseProjectManager.CreateProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d6581c61-273b-4e8e-9a2a-bb4787401c11
---

# DatabaseProjectManager.CreateProject Method


This method creates a new **Project** object and adds it to the project collection.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim projectName As String``Dim returnValue As Project``returnValue = instance.CreateProject(projectName)`

## Syntax


**Visual Basic**`Public Overrides Function CreateProject ( _`           `projectName As String, _``) As Project`

**C#**`public override Project CreateProject (`           `string projectName,``)`

## Parameters


*projectName*      The name to be associated with the project. The name is case-insensitive.

## Return Value


Returns [Project Class](project-class.md).

## Remarks


An exception occurs when the *projectName* parameter is **null**, empty, or there is a failure while creating the **Project** object.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






