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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20IConsolidateRunTests.QueueTest%20%28IList%29%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




