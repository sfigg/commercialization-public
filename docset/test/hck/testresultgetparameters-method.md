---
author: joshbax-msft
title: TestResult.GetParameters Method
description: TestResult.GetParameters Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ccd0b418-969c-4522-a706-e3ce62729a2c
---

# TestResult.GetParameters Method


This method retrieves the parameters that were applied to a test when it was run.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TestResult``Dim returnValue As ReadOnlyCollection(Of TestParameter)`) `returnValue = instance.GetParameters`

## Syntax


**Visual Basic**`Public MustOverride Function GetParameters As ReadOnlyCollection(Of TestParameter)`

**C#**`public abstract ReadOnlyCollection<TestParameter> GetParameters ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of parameters used for this test instance.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






