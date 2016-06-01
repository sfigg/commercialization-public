---
author: joshbax-msft
title: Test.GetRequirements Method
description: Test.GetRequirements Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c759ae13-c6e2-400a-afb6-df8b56a3b34d
---

# Test.GetRequirements Method


This method retrieves the enumerable list of certification requirements that this test verifies.

## Usage


**Visual Basic**`Dim instance As Test``Dim returnValue As ReadOnlyCollection(Of Requirement)``returnValue = instance.GetRequirements`

## Syntax


**Visual Basic**`Public MustOverride Function GetRequirements As ReadOnlyCollection(Of Requirement)`

**C#**`public abstract ReadOnlyCollection<Requirement> GetRequirements ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of requirements that this test can validate.

## Remarks


Most tests do not have machine roles which will return NULL.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






