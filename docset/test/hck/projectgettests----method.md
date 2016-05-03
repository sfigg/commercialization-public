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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Project.GetTests%20%28%29%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




