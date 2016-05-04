---
author: joshbax-msft
title: Task.GetChildTasks Method
description: Task.GetChildTasks Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6db94f18-3d5b-4cec-8713-205f554d25e7
---

# Task.GetChildTasks Method


This method retrieves a collection of child tasks.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Task``Dim returnValue As ReadOnlyCollection(Of Task)``returnValue = instance.GetChildTasks`

## Syntax


**Visual Basic**`Public MustOverride Function GetChildTasks As ReadOnlyCollection(Of Task)`

**C#**`public abstract ReadOnlyCollection<Task> GetChildTasks ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of child tasks.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






