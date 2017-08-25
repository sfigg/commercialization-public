---
title: Test.QueueTest Method (IEnumerable Machine ) Method
description: Test.QueueTest Method (IEnumerable Machine ) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 02e634db-8b39-4295-8d40-7ea1773ded09
---

# Test.QueueTest Method (IEnumerable&lt;Machine&gt;) Method


This method schedules this object for execution.

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`Public Overridable Function QueueTest( _`

          `machineList As IEnumerable(Of Machine) _`

`) As IList(Of TestResult)`

**C#**

`public virtual IList<TestResult> QueueTest(`

          `IEnumerable<Machine> machineList`

`) `

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*machineList*

     A list of machines to run this on.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


Returns IList, a list of results for the jobs that were scheduled. The test computer is always part of the machine set, this is only for additional test computers, required in multi-machine tests.

**Tip**  
If you use the **QueueTest** method to add a computer to a test queue and that computer configuration subsequently changes, **QueueTest** can throw an exception. If an exception occurs, immediately retry **QueueTest**.

 

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Test.QueueTest%20Method%20%28IEnumerable%3CMachine%3E%29%20Method%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




