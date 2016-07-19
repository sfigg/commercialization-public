---
author: joshbax-msft
title: IFilterConstraintEvaluator.IsMatch Method
description: IFilterConstraintEvaluator.IsMatch Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 94942d00-fbc4-415d-8549-4ec6fd03cd48
---

# IFilterConstraintEvaluator.IsMatch Method


This method evaluates a filter constraint and returns **true** if the constraint matches.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IFilterConstraintEvaluator``Dim constraint As IFilterConstraint``Dim returnValue As Boolean``returnValue = instance.IsMatch(constraint)`

## Syntax


**Visual Basic**`Function IsMatch ( _`           `constraint As IFilterConstraint _``) As Boolean`

**C#**`bool IsMatch (`           `IFilterConstraint constraint``)`

## Parameters


*constraint*      The filter constraint to match.

## Return Value


**true** if the constraint matches; otherwise, **false**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






