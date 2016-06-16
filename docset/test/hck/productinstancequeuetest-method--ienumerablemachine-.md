---
author: joshbax-msft
title: ProductInstance.QueueTest Method (IEnumerable Machine )
description: ProductInstance.QueueTest Method (IEnumerable Machine )
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 80358b46-990a-4c30-b8b2-3680d52719a0
---

# ProductInstance.QueueTest Method (IEnumerable&lt;Machine&gt;)


This method schedules the test for execution on a specific subset of machines.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim logicalMachineSet As MachineSet``Dim returnValue As IList(Of TestResult)``returnValue = instance.QueueTest(logicalMachineSet)`

## Syntax


**Visual Basic**

``` syntax
Public Overridable Function QueueTest(ByVal machineList As IEnumerable(Of Machine)) As IList(Of TestResult) 
    Dim testResults As List(Of TestResult) = New List(Of TestResult)()
    For Each targetFamily As TargetFamily In Me.GetTargetFamilies()
        testResults.AddRange(targetFamily.QueueTest(machineList))
    NextReturn testResults.AsReadOnly()
End Function
```

**C#**

``` syntax
public virtual IList<TestResult> QueueTest(IEnumerable<Machine> machineList)
{
    List<TestResult> testResults = new List<TestResult>();
    foreach (TargetFamily targetFamily in this.GetTargetFamilies())
    {
        testResults.AddRange(targetFamily.QueueTest(machineList));
    }
    return testResults.AsReadOnly();
}
```

## Parameters


*machineList*      List of machines that can run the test.

## Return Value


A list of results for the tests that were scheduled.

## Remarks


This is useful to specify a subset of possible machines. For example in the case where manual tests would prefer to run on specific machines.

An exception is thrown if:

-   A failure submitting a test to the scheduler.

-   Attempting to queue tests when the data source connection is Submission or Update package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






