---
author: joshbax-msft
title: Test.GetTestResults Method
description: Test.GetTestResults Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e4aeca55-6c22-4092-8f18-b7b3af3403dd
---

# Test.GetTestResults Method


This method retrieves the list of the test results generated during runs of this certification test.

## Usage


**Visual Basic**`Dim instance As Test``Dim returnValue As ReadOnlyCollection(Of TestResult)``returnValue = instance.GetTestResults`

## Syntax


**Visual Basic**`Public MustOverride Function GetTestResults As ReadOnlyCollection(Of TestResult)`

**C#**`public abstract ReadOnlyCollection<TestResult> GetTestResults ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of results for the test.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






