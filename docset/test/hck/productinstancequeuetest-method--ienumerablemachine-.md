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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20ProductInstance.QueueTest%20Method%20%28IEnumerable%3CMachine%3E%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




