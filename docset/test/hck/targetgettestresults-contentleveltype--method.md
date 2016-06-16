---
author: joshbax-msft
title: Target.GetTestResults(ContentLevelType) Method
description: Target.GetTestResults(ContentLevelType) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c370b6ca-f6a0-4917-869b-1e231c87abcf
---

# Target.GetTestResults(ContentLevelType) Method


This method retrieves a read-only collection of test results for tests mapped to the specified *ContentLevelType*.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Function GetTestResults(ByVal contentLevels As IEnumerable(Of ContentLevelType)) As ReadOnlyCollection(Of TestResult)`

**C#**`public ReadOnlyCollection<TestResult> GetTestResults(IEnumerable<ContentLevelType> contentLevels)`

## Parameters


*contentLevels*      List of content Levels that the test should be mapped to.

## Return Value


A read-only collection of TestResult objects for tests mapped to specified *contentLevels*. If *contentLevels* is empty, then returns an empty collection.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






