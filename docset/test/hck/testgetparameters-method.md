---
author: joshbax-msft
title: Test.GetParameters Method
description: Test.GetParameters Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3c16f9b2-632b-4d10-85d9-0cc10b4e4bdc
---

# Test.GetParameters Method


This method retrieves a dictionary collection of test parameters, sorted by parameter name.

## Usage


**Visual Basic**`Dim instance As Test``Dim returnValue As Dictionary(Of String, TestParameter)``returnValue = instance.GetParameters`

## Syntax


**Visual Basic**`Public MustOverride Function GetParameters As Dictionary(Of String, TestParameter)`

**C#**`public abstract Dictionary<string,TestParameter> GetParameters ()`

## Return Value


Returns **Dictionary**, which is a dictionary of [TestParameter Class](testparameter-class.md) objects used when scheduling this test.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






