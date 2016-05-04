---
author: joshbax-msft
title: Target.GetTests() Method
description: Target.GetTests() Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a084a764-7b77-4e41-911a-458c8669b91d
---

# Target.GetTests() Method


This method retrieves all certification tests for this Target. For each test returned, *ContentLevels* equals Certification.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Overridable Function GetTests() As List(Of Test)`

**C#**`public virtual List<Test> GetTests()`

## Return Value


Returns **List**, which is a collection of tests for the test target.

## Remarks


For backwards compatibility with HCK 2.0, returns tests that are tagged with Certification content level. To get tests for other content levels, use the overloaded method that takes a collection of *ContentLevelType*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






