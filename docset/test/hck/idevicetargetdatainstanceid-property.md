---
author: joshbax-msft
title: IDeviceTargetData.InstanceId Property
description: IDeviceTargetData.InstanceId Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dcc9bcf3-1974-4d6c-97f3-90d3c97c8355
---

# IDeviceTargetData.InstanceId Property


This property represents the Instance ID value of a deviceTarget object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IDeviceTargetData``Dim value As String``value = instance.InstanceId`

## Syntax


**Visual Basic**`ReadOnly Property InstanceId As String`

**C#**`string InstanceId { get; }`

## Property Value


Returns **String**.

## Remarks


The instance ID is the device ID combined with any instance specific additional data.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## Remarks


The instance ID is comprised of a combination of device ID and any instance-specific additions.

 

 






