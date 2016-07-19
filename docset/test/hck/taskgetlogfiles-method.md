---
author: joshbax-msft
title: Task.GetLogFiles Method
description: Task.GetLogFiles Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2c1e7633-0f8b-467c-973b-2a18c2c52f4b
---

# Task.GetLogFiles Method


This method retrieves the log files associated with a test task.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Task``Dim returnValue As ReadOnlyCollection(Of TestLog)``returnValue = instance.GetLogFiles`

## Syntax


**Visual Basic**`Public MustOverride Function GetLogFiles As ReadOnlyCollection(Of TestLog)`

**C#**`public abstract ReadOnlyCollection<TestLog> GetLogFiles ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of log files.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






