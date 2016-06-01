---
author: joshbax-msft
title: Test.QueueTest Method (Test, Machine) Method
description: Test.QueueTest Method (Test, Machine) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dba9eea0-c1d2-4f39-8529-9e4579416add
---

# Test.QueueTest Method (Test, Machine) Method


This method schedules tests to be run on a specified set of machines and consolidating the test run with additional compatible tests that are flagged to run as a set as an optimization.

## Syntax


**Visual Basic**`Public Overridable Function QueueTest(ByVal testList As IEnumerable(Of Test), ByVal machineList As IEnumerable(Of Machine)) As IList(Of TestResult)`

**C#**`public virtual IList<TestResult> QueueTest(IEnumerable<Test> testList, IEnumerable<Machine> machineList)`

## Parameters


*testList*      The list of tests to consolidate the test run with.

*machineList*      A list of machines to run this on.

## Return Value


Returns IList, a list of results for the jobs that were scheduled.

## Remarks


An exception is thrown if:

-   The *ScheduleOptions* member of the test is not *ConsolidateScheduleAcrossTargets*.

-   The tests differ by their Id fields and are therefore not the same test running against different targets.

-   The tests validate different product instances.

-   All of the tests cannot run on a least one machine.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






