---
author: joshbax-msft
title: IRunTests.QueueTest Method (IEnumerable Machine )
description: IRunTests.QueueTest Method (IEnumerable Machine )
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 74dbc155-a70e-4669-9ae4-56d4e38e6e67
---

# IRunTests.QueueTest Method (IEnumerable{Machine})


This method schedules the test for execution on a specific subset of machines.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Function QueueTest( _`           `ByVal machineList As IEnumerable(Of Machine) _``) As IList(Of TestResult)`

**C#**`IList<TestResult> QueueTest (`           `IEnumerable<Machine> machineList``)`

## Parameters


*machineList*      The list of machines on which to run the test.

## Return Value


Returns **IList**, which is a list of results for the tests that were scheduled.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






