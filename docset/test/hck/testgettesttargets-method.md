---
author: joshbax-msft
title: Test.GetTestTargets Method
description: Test.GetTestTargets Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5504849e-2aa1-488b-8c4e-31ca0f75fc43
---

# Test.GetTestTargets Method


This method retrieves a list of possible test targets for this test.

## Usage


**Visual Basic**`Dim instance As Test``Dim returnValue As ReadOnlyCollection(Of Target)``returnValue = instance.GetTestTargets`

## Syntax


**Visual Basic**`Public MustOverride Function GetTestTargets As ReadOnlyCollection(Of Target)`

**C#**`public abstract ReadOnlyCollection<Target> GetTestTargets ()`

## Return Value


Returns **ReadOnlyCollection**, which is a read-only list of test targets.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






