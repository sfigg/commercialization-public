---
author: joshbax-msft
title: IFilter.IsApplicable Method
description: IFilter.IsApplicable Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1e604e3a-90bd-4ddd-b497-1a395766190e
---

# IFilter.IsApplicable Method


This method determines whether the filter is applicable for the given taskResult.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IFilter``Dim constraintEvaluator As IFilterConstraintEvaluator``Dim returnValue As Boolean``returnValue = instance.IsApplicable(constraintEvaluator)`

## Syntax


**Visual Basic**`Function IsApplicable ( _`           `constraintEvaluator As IFilterConstraintEvaluator _``) As Boolean`

**C#**`bool IsApplicable (`           `IFilterConstraintEvaluator constraintEvaluator``)`

## Parameters


*constraintEvaluator*      The filter constraint evaluator.

## Return Value


**true** if the filter is applicable; othwerwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






