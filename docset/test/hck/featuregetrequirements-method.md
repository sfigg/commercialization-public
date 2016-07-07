---
author: joshbax-msft
title: Feature.GetRequirements Method
description: Feature.GetRequirements Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: eda25fc9-4cb3-4bf9-ad4d-3cf79b4bc9e7
---

# Feature.GetRequirements Method


This method retrieves the requirements associated with this **Feature**.

## Usage


**Visual Basic**`Dim instance As Feature``Dim returnValue As ReadOnlyCollection(Of Requirement)``returnValue = instance.GetRequirements`

## Syntax


**Visual Basic**`Public MustOverride Function GetRequirements As ReadOnlyCollection(Of Requirement)`

**C#**`public abstract ReadOnlyCollection<Requirement> GetRequirements ()`

## Return Value


Returns **ReadOnlyCollection**, which is a read-only collection of requirements.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






