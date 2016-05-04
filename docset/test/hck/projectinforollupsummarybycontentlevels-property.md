---
author: joshbax-msft
title: ProjectInfo.RollupSummaryByContentLevels Property
description: ProjectInfo.RollupSummaryByContentLevels Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 551c8ba7-2843-497d-92f0-d4b245f60eae
---

# ProjectInfo.RollupSummaryByContentLevels Property


This property represents test roll-up summary for the project grouped by each test content level.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**

``` syntax
Public Property RollupSummaryByContentLevels As ReadOnlyCollection(Of ContentLevelRollupInfo)
    Get
    End Get
    Friend Set(ByVal value As ReadOnlyCollection(Of ContentLevelRollupInfo))
    End Set
End Property
```

**C#**

``` syntax
public ReadOnlyCollection<ContentLevelRollupInfo> RollupSummaryByContentLevels
{
    get;
    internal set;
}
```

## Property Value


Returns a collection of *ContentLevelRollupInfo* one for each *ContentLevelType*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






