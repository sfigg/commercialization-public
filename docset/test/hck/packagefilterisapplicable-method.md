---
author: joshbax-msft
title: PackageFilter.IsApplicable Method
description: PackageFilter.IsApplicable Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c894265c-3874-4822-83b1-581202b3bae2
---

# PackageFilter.IsApplicable Method


This method determines whether the filter is applicable for the given taskResult.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageFilter``Dim constraintEvaluator As IFilterConstraintEvaluator``Dim returnValue As Boolean``returnValue = instance.IsApplicable(constraintEvaluator)`

## Syntax


**Visual Basic**`Public Function IsApplicable ( _`           `constraintEvaluator As IFilterConstraintEvaluator``) As Boolean`

**C#**`public bool IsApplicable (`           `IFilterConstraintEvaluator constraintEvaluator``)`

## Parameters


*constraintEvaluator*      The filter constraint evaluator.

## Return Value


**true** if applicable; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






