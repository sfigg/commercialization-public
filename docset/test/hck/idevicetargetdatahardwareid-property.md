---
author: joshbax-msft
title: IDeviceTargetData.HardwareId Property
description: IDeviceTargetData.HardwareId Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a8299a61-f3cb-4399-a3ce-d50ffe6c1b76
---

# IDeviceTargetData.HardwareId Property


This property represents the hardware IDs for a deviceTarget object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IDeviceTargetData``Dim value As ReadOnlyCollection(Of String)``value = instance.HardwareId`

## Syntax


**Visual Basic**`ReadOnly Property HardwareId As ReadOnlyCollection(Of String)`

**C#**`ReadOnlyCollection<string> HardwareId { get; }`

## Property Value


Returns **ReadOnlyCollection**.

## Remarks


Hardware IDs are returned in a particular order. The order is determined by the OS on the machine where the target is found. The strong matched hardware ID is first in the collection and the last hardware ID is the weakest matching hardware ID.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






