---
author: joshbax-msft
title: DatabaseProjectManager.DeleteProject Method
description: DatabaseProjectManager.DeleteProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0af087d9-1fb1-43e3-8efc-2fb71999a4d6
---

# DatabaseProjectManager.DeleteProject Method


This method deletes a named project.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim projectNameToDelete As String``instance.DeleteProject(projectNameToDelete)`

## Syntax


**Visual Basic**`Public Overrides Sub DeleteProject ( _`           `projectNameToDelete As String _``) `

**C#**`public override void DeleteProject (`           `string projectNameToDelete``)`

## Parameters


*projectNameToDelete*      The name of the project to delete.

## Remarks


An exception occurs when the *projectNameToDelete* parameter is **null** or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






