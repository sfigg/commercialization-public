---
author: joshbax-msft
title: ProductInstance.QueueTest Method (MachineSet)
description: ProductInstance.QueueTest Method (MachineSet)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9ae8d8c7-42e9-4437-b72f-715eec9f978b
---

# ProductInstance.QueueTest Method (MachineSet)


This method schedules this object to run. The machine under test (the test computer) is always part of the machine set. This method is only for additional machines (test computers).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim logicalMachineSet As MachineSet``Dim returnValue As IList(Of TestResult)``returnValue = instance.QueueTest(logicalMachineSet)`

## Syntax


**Visual Basic**`Public Overridable Function QueueTest ( _`           `logicalMachineSet As MachineSet _``) As IList(Of TestResult)`

**C#**`public virtual IList<TestResult> QueueTest (`           `MachineSet logicalMachineSet``)`

## Parameters


*logicalMachineSet*      The list of machines to run this on.

## Return Value


Returns **IList**, which is a list of results for the jobs that were scheduled.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






