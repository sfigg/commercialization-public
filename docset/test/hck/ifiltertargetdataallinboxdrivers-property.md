---
author: joshbax-msft
title: IFilterTargetData.AllInboxDrivers Property
description: IFilterTargetData.AllInboxDrivers Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 601aa7ee-bacc-41d1-a585-8751724ee37a
---

# IFilterTargetData.AllInboxDrivers Property


This property indicates whether all of the drivers associated with this device are signed.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IFilterTargetData``Dim value As TargetDriversType``value = instance.AllInboxDrivers`

## Syntax


**Visual Basic**`ReadOnly Property AllInboxDrivers As TargetDriversType`

**C#**`TargetDriversType AllInboxDrivers { get; }`

## Property Value


Returns **TargetDriversType**.

## Remarks


If all drivers associated with the target are signed, the result is InboxDrivers.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






