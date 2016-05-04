---
author: joshbax-msft
title: TargetFamily.QueueTest Method ()
description: TargetFamily.QueueTest Method ()
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f65ea1b0-25f2-4264-9bff-58a3dc143979
---

# TargetFamily.QueueTest Method ()


This method schedules this object to run.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TargetFamily``Dim returnValue As IList(Of TestResult)``returnValue = instance.QueueTest`

## Syntax


**Visual Basic**`Public Overridable Function QueueTest As IList(Of TestResult)`

**C#**`public virtual IList<TestResult> QueueTest ()`

## Return Value


Returns **IList**, which is a list of results for the jobs that were scheduled.

## Remarks


QueueTest attempts to schedule all of the tests in the current or child objects. If there is a failure, the scheduling of tests is stopped immediately and the method returns. The function will leave some tests scheduled and some that are incomplete. The returned list identifies the tests that were scheduled.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






