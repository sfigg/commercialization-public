---
author: joshbax-msft
title: Task.AssessmentScores Property
description: Task.AssessmentScores Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9c837d45-7b8b-4f3b-9853-79589ad1517d
---

# Task.AssessmentScores Property


This property represents a collection of assessment scores for this task.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Task``Dim value As ReadOnlyCollection(Of AssessmentData)``value = instance.AssessmentScores`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property AssessmentScores As ReadOnlyCollection(Of AssessmentData)`

**C#**`public abstract ReadOnlyCollection<AssessmentData> AssessmentScores { get; }`

## Property Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






