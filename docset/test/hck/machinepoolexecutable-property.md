---
author: joshbax-msft
title: MachinePool.Executable Property
description: MachinePool.Executable Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 32574ecb-8c96-4d15-9430-1442c97a08fc
---

# MachinePool.Executable Property


This property represents a value indicating whether this pool can be used to run tests.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachinePool``Dim value As Boolean``value = instance.Executable`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property Executable As Boolean`

**C#**`public abstract bool Executable { get; }`

## Return Value


Returns **Boolean**.

## Remarks


Tests cannot be scheduled on a machine that resides in certain reserved Machine Pools. This value indicates if tests can be run on any machines in this machine pool.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






