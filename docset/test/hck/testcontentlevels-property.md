---
author: joshbax-msft
title: Test.ContentLevels Property
description: Test.ContentLevels Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3967d832-5c87-4566-9808-45fce321713f
---

# Test.ContentLevels Property


This property represents a collection of ContentLevelType values that describe the content level for the test.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public ReadOnly MustOverride Property ContentLevels As ReadOnlyCollection(Of ContentLevelType)`

**C#**`public abstract ReadOnlyCollection<ContentLevelType> ContentLevels { get; }`

## Property Value


Returns **ReadOnlyCollection**.

## Remarks


A test can have multiple **ContentLevelType** values.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






