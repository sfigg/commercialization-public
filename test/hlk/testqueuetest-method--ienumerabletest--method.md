---
title: Test.QueueTest Method (IEnumerable Test ) Method
description: Test.QueueTest Method (IEnumerable Test ) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fb9650ff-f7b0-4c2d-b727-fa2d7be831a9
---

# Test.QueueTest Method (IEnumerable&lt;Test&gt;) Method


This method schedules tests to be run and consolidating the test run with additional compatible tests that are flagged to run as a set as an optimization

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`Public Overridable Function QueueTest(ByVal testList As IEnumerable(Of Test)) As IList(Of TestResult)`

**C#**

`This method schedules tests to be run and consolidating the test run with additional compatible tests that are flagged to run as a set as an optimization`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*testList*

     The list of tests to consolidate the test run with.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


Returns IList, a list of results for the jobs that were scheduled.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


An exception is thrown if:

-   The *ScheduleOptions* member of the test is not *ConsolidateScheduleAcrossTargets*.

-   The tests differ by their Id fields and are therefore not the same test running against different targets.

-   The tests validate different product instances.

-   All of the tests cannot run on a least one machine.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Test.QueueTest%20Method%20%28IEnumerable%3CTest%3E%29%20Method%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




