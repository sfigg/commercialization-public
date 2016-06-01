---
author: joshbax-msft
title: TestParameter.IsSame Method
description: TestParameter.IsSame Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7ef6d455-bf82-48f7-bea3-bb712ad45f00
---

# TestParameter.IsSame Method


This method indicates whether the current instance and a specified TestParameter object are the same parameter.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Function IsSame(ByVal other As TestParameter) As Boolean`

**C#**`public bool IsSame(TestParameter other)`

## Return Value


Returns **true** if the two objects are equal; otherwise, **false**.

## Remarks


When running multiple tests simultaneously, this function indicates if one parameter value can be applied to any of the other parameters in that same test list.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






