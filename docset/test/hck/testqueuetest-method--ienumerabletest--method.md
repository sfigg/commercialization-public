---
author: joshbax-msft
title: Test.QueueTest Method (IEnumerable Test ) Method
description: Test.QueueTest Method (IEnumerable Test ) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9018a579-84ef-4435-b5f0-b53b93f08571
---

# Test.QueueTest Method (IEnumerable&lt;Test&gt;) Method


This method schedules tests to be run and consolidating the test run with additional compatible tests that are flagged to run as a set as an optimization

## Syntax


**Visual Basic**`Public Overridable Function QueueTest(ByVal testList As IEnumerable(Of Test)) As IList(Of TestResult)`

**C#**`This method schedules tests to be run and consolidating the test run with additional compatible tests that are flagged to run as a set as an optimization`

## Parameters


*testList*      The list of tests to consolidate the test run with.

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

 

 






