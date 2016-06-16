---
author: joshbax-msft
title: Task.Status Property
description: Task.Status Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a6228bf3-719c-4e72-93ed-67160430f7fb
---

# Task.Status Property


This property represents the status of a task.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Task``Dim value As TestResultStatus``value = instance.Status`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property Status As TestResultStatus`

**C#**`public abstract TestResultStatus Status { get; }`

## Property Value


Returns [TestResultStatus Enumeration](testresultstatus-enumeration.md).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






