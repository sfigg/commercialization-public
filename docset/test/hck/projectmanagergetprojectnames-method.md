---
author: joshbax-msft
title: ProjectManager.GetProjectNames Method
description: ProjectManager.GetProjectNames Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 13481f43-b00c-4096-9b76-92bc367bb70d
---

# ProjectManager.GetProjectNames Method


This method retrieves a list of names of the projects.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim returnValue As ReadOnlyCollection(Of String)``returnValue = instance.GetProjectNames`

## Syntax


**Visual Basic**`Public MustOverride Function GetProjectNames As ReadOnlyCollection(Of String)`

**C#**`public abstract ReadOnlyCollection<string> GetProjectNames ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






