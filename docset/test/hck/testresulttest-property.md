---
author: joshbax-msft
title: TestResult.Test Property
description: TestResult.Test Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3b6e0f38-ae8c-41ba-97fe-6edf583159ba
---

# TestResult.Test Property


This property represents the certification test object this result is generated for.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TestResult``Dim value As Test``value = instance.Test`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property Test As Test`

**C#**`public abstract Test Test { get; }`

## Property Value


Returns **Test**, which is the test computer on which this test was run.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






