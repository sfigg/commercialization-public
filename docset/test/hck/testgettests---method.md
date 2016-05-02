---
author: joshbax-msft
title: Test.GetTests() Method
description: Test.GetTests() Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fb7a62ae-5c9c-4d4b-949d-5f61e149160c
---

# Test.GetTests() Method


This method retrieves a test list. For each test returned, *ContentLevels* equals Certification.

## Syntax


**Visual Basic**`Public Overridable Function GetTests() As IList(Of Test)`

**C#**`public virtual IList<Test> GetTests()`

## Return Value


Returns **IList**, which is a collection of tests needed to be run.

## Remarks


For backwards compatibility with HCK 2.0, returns tests that are tagged with Certification content level. To get tests for other content levels, use the overloaded method that takes a collection of *ContentLevelType*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Test.GetTests%28%29%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




