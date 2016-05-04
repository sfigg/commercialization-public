---
author: joshbax-msft
title: MachinePool.CreateChildPool Method
description: MachinePool.CreateChildPool Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a204e91c-f2ae-49e5-baec-b8208fd0edb4
---

# MachinePool.CreateChildPool Method


This method creates a child machine pool.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachinePool``Dim name As String``Dim returnValue As MachinePool``returnValue = instance.CreateChildPool(name)`

## Syntax


**Visual Basic**`Public MustOverride Function CreateChildPool ( _`           `name As String _``) As MachinePool`

**C#**`public abstract MachinePool CreateChildPool (`           `string name``)`

## Parameters


*name*      The name of the pool to add to this machine pool.

## Return Value


Returns **MachinePool**, which is the name of the machine pool that was added.

## Remarks


The child Machine Pool name must not match another existing Machine Pool name.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






