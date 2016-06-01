---
author: joshbax-msft
title: Test.GetTests() Method
description: Test.GetTests() Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fb7a62ae-5c9c-4d4b-949d-5f61e149160c
---

# Test.GetTests() Method


This method retrieves a test list. For each test returned, *ContentLevels* equals Certification.

## Syntax


**Visual Basic**`Public Overridable Function GetTests() As IList(Of Test)`

**C#**`public virtual IList<Test> GetTests()`

## Return Value


Returns **IList**, which is a collection of tests needed to be run.

## Remarks


For backwards compatibility with HCK 2.0, returns tests that are tagged with Certification content level. To get tests for other content levels, use the overloaded method that takes a collection of *ContentLevelType*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






