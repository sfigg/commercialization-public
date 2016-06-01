---
author: joshbax-msft
title: IConsolidateRunTests.QueueTest (IEnumerable Machine ) Method
description: IConsolidateRunTests.QueueTest (IEnumerable Machine ) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 99eb4458-d2dd-470a-ac1b-7920d5f3886c
---

# IConsolidateRunTests.QueueTest (IEnumerable&lt;Machine&gt;) Method


This method schedules the test for execution on a specific subset of machines.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Function QueueTest(ByVal testList As IEnumerable(Of Test), ByVal machineList As IEnumerable(Of Machine)) As IList(Of TestResult)`

**C#**           `IList<TestResult> QueueTest(IEnumerable<Test> testList, IEnumerable<Machine> machineList);``)`

## Parameters


*testList* A list of tests to consolidate with the current test.

*machinelist* List of machines that can run the test.

## Return Value


A list of results for the tests that were scheduled.

## Remarks


This is useful to specify a subset of possible machines. For example in the case where manual tests would prefer to run on specific machines

This is not supported when the project is connected to a package.

## Exception


*ScheduleException* thrown when there is a failure submitting a test to the scheduler.

*NotSupportedException* thrown when attempting to queue tests when the data source connection is Submission or Update package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






