---
author: joshbax-msft
title: DatabaseProjectManager.GetProjectNames Method
description: DatabaseProjectManager.GetProjectNames Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5c6d04bf-c60b-4f66-a7ab-fa8d5bb403c6
---

# DatabaseProjectManager.GetProjectNames Method


This method retrieves a list of project names.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim returnValue As ReadOnlyCollection(Of String)``returnValue = instance.GetProjectNames`

## Syntax


**Visual Basic**`Public Overrides Function GetProjectNames As ReadOnlyCollection(Of String)`

**C#**`public override ReadOnlyCollection<string> GetProjectNames ()`

## Return Value


Returns **ReadOnlyCollection**, which is a list a of project names used for submissions.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






