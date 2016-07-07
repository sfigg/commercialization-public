---
author: joshbax-msft
title: DatabaseProjectManager.GetProjectInfoList Method
description: DatabaseProjectManager.GetProjectInfoList Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2ba695de-431e-40f9-a49b-1d95442bd290
---

# DatabaseProjectManager.GetProjectInfoList Method


This method retrieves a list of project information.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim returnValue As ReadOnlyCollection(Of ProjectInfo)``returnValue = instance.GetProjectInfoList`

## Syntax


**Visual Basic**`Public Overrides Function GetProjectInfoList As ReadOnlyCollection(Of ProjectInfo)`

**C#**`public override ReadOnlyCollection<ProjectInfo> GetProjectInfoList ()`

## Return Value


Returns **ReadOnlyCollection**, which is a list a of project information.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






