---
author: joshbax-msft
title: IRun.GetTests Method (IEnumerable(Of ContentLevelType))
description: IRun.GetTests Method (IEnumerable(Of ContentLevelType))
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4906fe19-2ec3-494e-bcd9-8441a9bab796
---

# IRun.GetTests Method (IEnumerable(Of ContentLevelType))


Gets a collection of tests for the specified content levels.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Function GetTests(ByVal contentLevels As IEnumerable(Of ContentLevelType)) As IList(Of Test)`

**C#**`IList<Test> GetTests(IEnumerable<ContentLevelType> contentLevels);`

## Parameters


*contentLevels*      List of content levels to which the test should be mapped.

## Return Value


If *contentLevels* is empty, then returns an empty collection. Otherwise, returns all tests that are mapped to at least one content level in contentLevels.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






