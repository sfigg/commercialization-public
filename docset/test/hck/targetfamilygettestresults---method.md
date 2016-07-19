---
author: joshbax-msft
title: TargetFamily.GetTestResults() Method
description: TargetFamily.GetTestResults() Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3ad884f7-0ce7-45c1-a1fa-eb11b97ccd57
---

# TargetFamily.GetTestResults() Method


This method retrieves a list of test results for this **TargetFamily** where test ContentLevelType equals Certification.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Overridable Function GetTestResults() As ReadOnlyCollection(Of TestResult)`

**C#**`public virtual ReadOnlyCollection<TestResult> GetTestResults()`

## Return Value


Returns **ReadOnlyCollection**, which is the list of results for this **TargetFamily**.

## Remarks


For backwards compatibility with HCK 2.0, returns test results for tests mapped to Certification content level. To get test results for other content levels, use the overloaded method that takes a collection of *ContentLevelType*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






