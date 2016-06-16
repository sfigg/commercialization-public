---
author: joshbax-msft
title: Test.QueueTest Method ()
description: Test.QueueTest Method ()
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e1012ba2-aeeb-4a0c-9f41-fa972ea4795c
---

# Test.QueueTest Method ()


This method schedules this object for execution.

## Usage


**Visual Basic**`Dim instance As Test``Dim returnValue As IList(Of TestResult)``returnValue = instance.QueueTest`

## Syntax


**Visual Basic**`Public Overridable Function QueueTest As IList(Of TestResult)`

**C#**`public virtual IList<TestResult> QueueTest ()`

## Return Value


Returns **IList**, which is a list of results for the jobs that were scheduled.

**Tip**  
If you use the **QueueTest** method to add a computer to a test queue and that computer configuration subsequently changes, **QueueTest** can throw an exception. If an exception occurs, immediately retry **QueueTest**.

 

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






