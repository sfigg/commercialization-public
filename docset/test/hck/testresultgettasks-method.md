---
author: joshbax-msft
title: TestResult.GetTasks Method
description: TestResult.GetTasks Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 48c358dd-3ca8-402c-ab00-33a1a546d73f
---

# TestResult.GetTasks Method


This method retrieves the tasks associated with this test.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TestResult``Dim returnValue As ReadOnlyCollection(Of Task)``returnValue = instance.GetTasks`

## Syntax


**Visual Basic**`Public MustOverride Function GetTasks As ReadOnlyCollection(Of Task)`

**C#**`public abstract ReadOnlyCollection<Task> GetTasks ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of tasks for a test.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






