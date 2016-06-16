---
author: joshbax-msft
title: Project.GetTests () Method
description: Project.GetTests () Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f6cf3846-c1f8-471c-979e-493340fe1ddb
---

# Project.GetTests () Method


This method retrieves all certification tests for this project.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**

``` syntax
Public Overridable Function GetTests() As IList(Of Test) 
    Dim tests As List(Of Test) = New List(Of Test)()
    For Each productInstance As ProductInstance In Me.GetProductInstances()
        tests.AddRange(productInstance.GetTests())
    NextReturn tests
End Function
```

**C#**

``` syntax
public virtual IList<Test> GetTests()
{
    List<Test> tests = new List<Test>();
    foreach (ProductInstance productInstance in this.GetProductInstances())
    {
        tests.AddRange(productInstance.GetTests());
    }
    return tests;
}
```

## Return Value


Returns a **IList**, which is a collection of required tests.

## Remarks


For backwards compatibility with HCK 2.0, returns tests that are tagged with Certification content level. To get tests for other content levels, use the overloaded method that takes a collection of ContentLevelType.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






