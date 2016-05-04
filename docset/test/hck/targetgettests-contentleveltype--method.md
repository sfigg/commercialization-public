---
author: joshbax-msft
title: Target.GetTests(ContentLevelType) Method
description: Target.GetTests(ContentLevelType) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e239a1ef-df73-43af-a38b-9bcdeac59320
---

# Target.GetTests(ContentLevelType) Method


This method retrieves all tests for this Target specified by ContentLevelType.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public MustOverride Function GetTests(ByVal contentLevels As IEnumerable(Of ContentLevelType)) As List(Of Test)`

**C#**`public abstract List<Test> GetTests(IEnumerable<ContentLevelType> contentLevels);`

## Parameters


*contentLevels*      List of content Levels that the test should be mapped to.

## Return Value


Returns **List**, which is a collection of tests specified by content level for the test target.

## Remarks


If *contentLevels* is empty, then returns an empty collection. Otherwise, returns all tests that are mapped to at least one content level in *contentLevels*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






