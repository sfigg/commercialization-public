---
author: joshbax-msft
title: ProjectManager.GetProjectSummary Method
description: ProjectManager.GetProjectSummary Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a4c09858-5c47-4a66-8412-34431d12e15f
---

# ProjectManager.GetProjectSummary Method


This method retrieves a list of project summaries.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim returnValue As ReadOnlyCollection(Of ProjectSummary)``returnValue = instance.GetProjectSummary`

## Syntax


**Visual Basic**`Public MustOverride Function GetProjectSummary() As ReadOnlyCollection(Of ProjectSummary)`

**C#**`public abstract ReadOnlyCollection<ProjectSummary> GetProjectSummary();`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






