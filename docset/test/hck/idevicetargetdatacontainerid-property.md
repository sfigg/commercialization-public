---
author: joshbax-msft
title: IDeviceTargetData.ContainerId Property
description: IDeviceTargetData.ContainerId Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 73dfb35d-7ae0-4dc7-9281-2e59b18b9bcd
---

# IDeviceTargetData.ContainerId Property


**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IDeviceTargetData``Dim value As String``value = instance.ContainerId`

## Syntax


**Visual Basic**`ReadOnly Property ContainerId As String`

**C#**`string ContainerId { get; }`

## Property Value


Returns **String**.

## Remarks


Returns null if the device is not part of a container.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






