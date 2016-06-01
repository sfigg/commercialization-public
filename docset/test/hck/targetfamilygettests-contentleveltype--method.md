---
author: joshbax-msft
title: TargetFamily.GetTests(ContentLevelType) Method
description: TargetFamily.GetTests(ContentLevelType) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 17174f10-1deb-4b54-9c01-7b725ab9d395
---

# TargetFamily.GetTests(ContentLevelType) Method


This method retrieves all tests for this **TargetFamily** specified by *ContentLevelType*.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public MustOverride Function GetTests(ByVal contentLevels As IEnumerable(Of ContentLevelType)) As IList(Of Test)`

**C#**`public abstract IList<Test> GetTests(IEnumerable<ContentLevelType> contentLevels);`

## Parameters


*contentLevels*      List of content Levels that the test should be mapped to.

## Return Value


Returns **IList**, which is a collection of tests.

## Remarks


If contentLevels is empty, then returns an empty collection. Otherwise, returns all tests that are mapped to at least one content level in *contentLevels*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






