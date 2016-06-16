---
author: joshbax-msft
title: IRunTests.QueueTest Method (MachineSet)
description: IRunTests.QueueTest Method (MachineSet)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 27783d95-adce-4feb-bba6-46e1e95c4533
---

# IRunTests.QueueTest Method (MachineSet)


This method schedules this object to be run. The machine under test (test computer) is always part of the machine set. This method is only for additional machines in a machine set.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IRunTests``Dim logicalMachineSet As MachineSet``Dim returnValue As IList(Of TestResult)``returnValue = instance.QueueTest(logicalMachineSet)`

## Syntax


**Visual Basic**`Function QueueTest ( _`           `logicalMachineSet As MachineSet _``) As IList(Of TestResult)`

**C#**`IList<TestResult> QueueTest (`           `MachineSet logicalMachineSet``)`

## Parameters


*logicalMachineSet*      The list of machines to run this on.

## Return Value


Returns **IList**, which is a list of results for the tests that were scheduled.

## Remarks


The machine associated with the target that was selected is automatically added to the set.

QueueTest will attempt to schedule all of the tests in the current or child objects. If there is a failure, the scheduling of tests is stopped immediately, and an exception is thrown. As a result, some tests could have been scheduled.

This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






