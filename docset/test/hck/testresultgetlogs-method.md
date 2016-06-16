---
author: joshbax-msft
title: TestResult.GetLogs Method
description: TestResult.GetLogs Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 04a1eba3-c953-423c-a405-0107ec36638b
---

# TestResult.GetLogs Method


This method retrieves all of the logs associated with this test result.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TestResult``Dim returnValue As ReadOnlyCollection(Of TestLog)``returnValue = instance.GetLogs`

## Syntax


**Visual Basic**`Public MustOverride Function GetLogs As ReadOnlyCollection(Of TestLog)`

**C#**`public abstract ReadOnlyCollection<TestLog> GetLogs ()`

## Return Value


Returns **ReadOnlyCollection**, which is a read-only list of all of the logs associated with this test result.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






