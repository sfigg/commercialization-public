---
author: joshbax-msft
title: MachinePool.Path Property
description: MachinePool.Path Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f61102ad-915c-42bf-90dc-55a63226442e
---

# MachinePool.Path Property


This property represents the machine pool path.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachinePool``Dim value As String``value = instance.Path`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property Path As String`

**C#**`public abstract string Path { get; }`

## Property Value


Returns **String**.

## Remarks


The path of a Machine Pool includes all the Machine Pools from the root pool to the current pool.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






