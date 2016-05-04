---
author: joshbax-msft
title: ProjectManager.GetProjectInfoList Method
description: ProjectManager.GetProjectInfoList Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 79e35bf0-ecb1-414d-b52c-4ff81564c026
---

# ProjectManager.GetProjectInfoList Method


This method retrieves a list of Project Info classes. This does not open each of the Projects.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim returnValue As ReadOnlyCollection(Of ProjectInfo)``returnValue = instance.GetProjectInfoList`

## Syntax


**Visual Basic**`Public MustOverride Function GetProjectInfoList As ReadOnlyCollection(Of ProjectInfo)`

**C#**`public abstract ReadOnlyCollection<ProjectInfo> GetProjectInfoList ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






