---
author: joshbax-msft
title: Target.GetTestResults() Method
description: Target.GetTestResults() Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 94235e00-2fd1-4b9c-8a85-7fcc662aefb2
---

# Target.GetTestResults() Method


This method retrieves a read-only collection of test results for tests mapped to **Certification** content level.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Target``Dim returnValue As ReadOnlyCollection(Of TestResult)``returnValue = instance.GetTestResults`

## Syntax


**Visual Basic**`Public Function GetTestResults As ReadOnlyCollection(Of TestResult)`

**C#**`public ReadOnlyCollection<TestResult> GetTestResults ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of test results.

## Remarks


For backwards compatibility with HCK 2.0, returns test results for tests mapped to **Certification** content level. To get test results for other content levels, use the overloaded method that takes a collection of *ContentLevelType*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






