---
author: joshbax-msft
title: Project.GetTests (IEnumerable ContentLevelType ) Method
description: Project.GetTests (IEnumerable ContentLevelType ) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9107116f-967f-438e-a5d9-0f066b180d3f
---

# Project.GetTests (IEnumerable&lt;ContentLevelType&gt;) Method


This method retrieves all tests for this project specified by *contentLevels*.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**

``` syntax
Public Function GetTests(ByVal contentLevels As IEnumerable(Of ContentLevelType)) As IList(Of Test)
```

**C#**

``` syntax
public IList<Test> GetTests(IEnumerable<ContentLevelType> contentLevels)
```

## Parameters


*contentLevels*      List of content Levels that the test should be mapped to.

## Return Value


A list of tests. If *contentLevels* is empty, then returns an empty collection. Otherwise, returns all tests that are mapped to at least one content level in *contentLevels*.

## Remarks


Throws an exception if *contentLevels* is null.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






