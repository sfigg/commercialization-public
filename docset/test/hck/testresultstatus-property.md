---
author: joshbax-msft
title: TestResult.Status Property
description: TestResult.Status Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3f2e7c66-a1d4-475e-8fe1-df7069db3ad6
---

# TestResult.Status Property


This property represents the status of this certification test result.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TestResult``Dim value As TestResultStatus``value = instance.Status`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property Status As TestResultStatus`

**C#**`public abstract TestResultStatus Status { get; }`

## Property Value


Returns **TestResultStatus**.

**Note**  
**TestResult.Status** does not return **Queued** (if a test is scheduled or running it returns **Running**).

 

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






