---
author: joshbax-msft
title: TargetFamily.QueueTest Method (IEnumerable Machine )
description: TargetFamily.QueueTest Method (IEnumerable Machine )
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dad2ca21-b3ad-47f2-8e07-fbf3473b5210
---

# TargetFamily.QueueTest Method (IEnumerable{Machine})


This method schedules a test to be run against a specified subset of machines.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Overridable Function QueueTest ( _`           `machineList As IEnumerable(Of Machine)) _``) As IList(Of TestResult)`

**C#**`public virtual IList<TestResult> QueueTest (`           `IEnumerable<Machine> machineList``)`

## Parameters


*machineList*      The list of test computers on which a test should run.

## Return Value


Returns **IList**, which is a list of results for the jobs that were scheduled.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






