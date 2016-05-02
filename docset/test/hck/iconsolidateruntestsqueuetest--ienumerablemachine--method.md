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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20IConsolidateRunTests.QueueTest%20%28IEnumerable%3CMachine%3E%29%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




