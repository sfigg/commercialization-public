---
author: joshbax-msft
title: Test.QueueTest Method (IEnumerable Machine ) Method
description: Test.QueueTest Method (IEnumerable Machine ) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 17d74d0e-3f1f-4c17-8f4e-15679534edfb
---

# Test.QueueTest Method (IEnumerable&lt;Machine&gt;) Method


This method schedules this object for execution.

## Syntax


**Visual Basic**`Public Overridable Function QueueTest( _`           `machineList As IEnumerable(Of Machine) _``) As IList(Of TestResult)`

**C#**`public virtual IList<TestResult> QueueTest(`           `IEnumerable<Machine> machineList``) `

## Parameters


*machineList*      A list of machines to run this on.

## Return Value


Returns IList, a list of results for the jobs that were scheduled. The test computer is always part of the machine set, this is only for additional test computers, required in multi-machine tests.

**Tip**  
If you use the **QueueTest** method to add a computer to a test queue and that computer configuration subsequently changes, **QueueTest** can throw an exception. If an exception occurs, immediately retry **QueueTest**.

 

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






