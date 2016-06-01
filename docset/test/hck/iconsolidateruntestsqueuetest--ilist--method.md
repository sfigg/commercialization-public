---
author: joshbax-msft
title: IConsolidateRunTests.QueueTest (IList) Method
description: IConsolidateRunTests.QueueTest (IList) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e3c9468f-3e0b-4146-ba5e-9f5d2396faf4
---

# IConsolidateRunTests.QueueTest (IList) Method


This method schedules all the tests for execution.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Function QueueTest(ByVal testList As IEnumerable(Of Test)) As IList(Of TestResult)`

**C#**           `IList<TestResult> QueueTest(IEnumerable<Test> testList);``)`

## Parameters


*testList* A list of tests to consolidate with the current test.

## Return Value


A list of results for the tests that were scheduled.

## Remarks


*QueueTest* will attempt to schedule all of the tests in the current or child objects. If there is a failure, the scheduling of tests is stopped immediately and the method returns. The function will leave some tests scheduled, and some that are incomplete. The list returned identifies the tests that were scheduled.

This is not supported when the project is connected to a package.

## Exception


*System.NotSupportedException* thrown when attempting to schedule tests when the data source connection is Submission or Update package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






