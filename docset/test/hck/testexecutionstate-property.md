---
author: joshbax-msft
title: Test.ExecutionState Property
description: Test.ExecutionState Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ef6420ac-cf02-45fc-bd48-35daf3c98554
---

# Test.ExecutionState Property


This property indicates whether there is an instance of this test that is queued, waiting to be run, or not running.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Overridable ReadOnly Property ExecutionState As ExecutionState`

**C#**`public virtual ExecutionState ExecutionState`

## Property Value


Returns **ExecutionState**.

## Remarks


If there is an instance of this test running while another instance is queued, the return value is ExecutionState.Running.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






