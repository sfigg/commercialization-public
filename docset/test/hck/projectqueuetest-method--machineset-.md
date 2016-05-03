---
author: joshbax-msft
title: Project.QueueTest Method (MachineSet)
description: Project.QueueTest Method (MachineSet)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d0eda212-cd78-4ba0-a6e4-4c44201ba1be
---

# Project.QueueTest Method (MachineSet)


This method schedules a test. This method schedules this object for to be run. The machine under test (the test computer) is always part of the machine set, this is only for additional test computers.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim logicalMachineSet As MachineSet``Dim returnValue As IList(Of TestResult)``returnValue = instance.QueueTest(logicalMachineSet)`

## Syntax


**Visual Basic**`Public Overridable Function QueueTest ( _`           `logicalMachineSet As MachineSet _``) As IList(Of TestResult)`

**C#**`public virtual IList<TestResult> QueueTest (`           `logicalMachineSet As MachineSet _``)`

## Parameters


*logicalMachineSet*           The list of machines to run this on.

## Return Value


Returns **IList**.

## Remarks


The machine associated with the target (that was selected) is automatically added to the set.

QueueTest attempts to schedule all of the tests in the current or child objects. If a failure occurs, the scheduling is stopped immediately, and an exception is thrown. As a result, some of the tests might have been scheduled.

This method is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Project.QueueTest%20Method%20%28MachineSet%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




