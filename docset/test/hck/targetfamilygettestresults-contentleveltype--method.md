---
author: joshbax-msft
title: TargetFamily.GetTestResults(ContentLevelType) Method
description: TargetFamily.GetTestResults(ContentLevelType) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3b81e8bb-1c56-446b-b2b8-f1fa38f8623f
---

# TargetFamily.GetTestResults(ContentLevelType) Method


This method retrieves a list of test results for this **TargetFamily** specified by *ContentLevelType*.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public MustOverride Function GetTestResults(ByVal contentLevels As IEnumerable(Of ContentLevelType)) As ReadOnlyCollection(Of TestResult)`

**C#**`public abstract ReadOnlyCollection<TestResult> GetTestResults(IEnumerable<ContentLevelType> contentLevels);`

## Parameters


*contentLevels*      List of content Levels that the test should be mapped to.

## Return Value


Returns **ReadOnlyCollection**, which is the list of results for this **TargetFamily**.

## Remarks


A read-only collection of TestResult objects for tests mapped to specified contentLevels. If contentLevels is empty, then returns an empty collection.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






