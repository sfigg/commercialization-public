---
author: joshbax-msft
title: Target.GetTestResults(ContentLevelType) Method
description: Target.GetTestResults(ContentLevelType) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c370b6ca-f6a0-4917-869b-1e231c87abcf
---

# Target.GetTestResults(ContentLevelType) Method


This method retrieves a read-only collection of test results for tests mapped to the specified *ContentLevelType*.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Function GetTestResults(ByVal contentLevels As IEnumerable(Of ContentLevelType)) As ReadOnlyCollection(Of TestResult)`

**C#**`public ReadOnlyCollection<TestResult> GetTestResults(IEnumerable<ContentLevelType> contentLevels)`

## Parameters


*contentLevels*      List of content Levels that the test should be mapped to.

## Return Value


A read-only collection of TestResult objects for tests mapped to specified *contentLevels*. If *contentLevels* is empty, then returns an empty collection.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Target.GetTestResults%28ContentLevelType%29%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




