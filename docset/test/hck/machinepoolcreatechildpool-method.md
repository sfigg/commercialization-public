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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20MachinePool.CreateChildPool%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




