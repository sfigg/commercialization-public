---
author: joshbax-msft
title: Test.FilterMultiDeviceTestGroups Method
description: Test.FilterMultiDeviceTestGroups Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: aad7aa37-f29e-4210-a005-86cafb8bc5ec
---

# Test.FilterMultiDeviceTestGroups Method


This method removes tests from a list of tests that can be consolidated and returns the consolidated groupings of tests that are compatible.

## Syntax


**Visual Basic**`Public Shared Function FilterMultiDeviceTestGroups(ByVal tests As List(Of Test)) As List(Of List(Of Test))`

**C#**`public static List<List<Test>> FilterMultiDeviceTestGroups(List<Test> tests)`

## Parameters


*tests*      A list of tests to be filtered for multi-device tests.

## Returns


A list test groupings which can be consolidated.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






