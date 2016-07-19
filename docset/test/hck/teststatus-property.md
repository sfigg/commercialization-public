---
author: joshbax-msft
title: Test.Status Property
description: Test.Status Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4bcea552-8cc1-4308-8b00-73627b132869
---

# Test.Status Property


This property represents the pass or fail status of this test.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Test``Dim value As TestResultStatus``value = instance.Status`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property Status As TestResultStatus`

**C#**`public abstract TestResultStatus Status { get; }`

## Property Value


Returns [TestResultStatus Enumeration](testresultstatus-enumeration.md).

**Note**  
**Test.Status** does not return **Running** (if a test is scheduled or is running, **Test.Status** returns **Queued**).

 

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






