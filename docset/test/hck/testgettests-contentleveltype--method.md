---
author: joshbax-msft
title: Test.GetTests(ContentLevelType) Method
description: Test.GetTests(ContentLevelType) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7a7f2cdf-5585-4a3e-a33c-6d47ac47f64e
---

# Test.GetTests(ContentLevelType) Method


This method retrieves a test list specified by *ContentLevelType*.

## Syntax


**Visual Basic**`Public Overridable Function GetTests(ByVal contentLevels As IEnumerable(Of ContentLevelType)) As IList(Of Test)`

**C#**`public virtual IList<Test> GetTests(IEnumerable<ContentLevelType> contentLevels)`

## Parameters


*contentLevels*      List of content Levels that the test should be mapped to.

## Return Value


Returns **IList**, which is a collection of tests specified by content level.

## Remarks


If *contentLevels* is empty, then returns an empty collection. Otherwise, returns all tests that are mapped to at least one content level in *contentLevels*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






