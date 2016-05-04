---
author: joshbax-msft
title: IDeviceTargetData.AllInboxDrivers Property
description: IDeviceTargetData.AllInboxDrivers Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b2d70e0e-fe50-4ca3-ab93-21e5f5a2def4
---

# IDeviceTargetData.AllInboxDrivers Property


**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IDeviceTargetData``Dim value As TargetDriversType``value = instance. AllInboxDrivers`

## Syntax


**Visual Basic**`ReadOnly Property AllInboxDrivers As TargetDriversType`

**C#**`TargetDriversType AllInboxDrivers { get; }`

## Property Value


Returns **TargetDriversType**.

## Remarks


Only if all drivers associated with the target are signed, the result is InboxDrivers.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






