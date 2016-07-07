---
author: joshbax-msft
title: Test.GetSupportedPlatforms Method
description: Test.GetSupportedPlatforms Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9c731076-1bc6-42a4-8ae5-041959a4efe2
---

# Test.GetSupportedPlatforms Method


This method returns a enumerable list of the architectures supported by this certification test.

## Usage


**Visual Basic**`Dim instance As Test``Dim returnValue As ReadOnlyCollection(Of OSPlatform)``returnValue = instance.GetSupportedPlatforms`

## Syntax


**Visual Basic**`Public MustOverride Function GetSupportedPlatforms As ReadOnlyCollection(Of OSPlatform)`

**C#**`public abstract ReadOnlyCollection<OSPlatform> GetSupportedPlatforms ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of platforms on which this test can be run.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






