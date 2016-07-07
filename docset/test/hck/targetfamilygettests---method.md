---
author: joshbax-msft
title: TargetFamily.GetTests() Method
description: TargetFamily.GetTests() Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9b93cf8f-4f98-4d95-89cf-94eacab97835
---

# TargetFamily.GetTests() Method


This method retrieves a list of all of the tests needed for this **TargetFamily**. For each test returned, ContentLevels equals Certification.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Overridable Function GetTests() As IList(Of Test)`

**C#**`public virtual IList<Test> GetTests()`

## Return Value


Returns **IList**, which is a collection of tests.

## Remarks


For backwards compatibility with HCK 2.0, returns tests that are tagged with Certification content level. To get tests for other content levels, use the overloaded method that takes a collection of *ContentLevelType*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






