---
author: joshbax-msft
title: MachinePool.DeleteChildPool Method
description: MachinePool.DeleteChildPool Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d50e8894-9643-4bc7-a860-334b09bf9c3e
---

# MachinePool.DeleteChildPool Method


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


Any machines that are in this pool are moved to the default pool. This will not remove any results. However, any tests that are still outstanding will be canceled.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






