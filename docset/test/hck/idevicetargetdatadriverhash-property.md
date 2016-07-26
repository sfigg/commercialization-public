---
author: joshbax-msft
title: IDeviceTargetData.DriverHash Property
description: IDeviceTargetData.DriverHash Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0db368a4-9da1-4776-ba86-32a1a1c9c884
---

# IDeviceTargetData.DriverHash Property


This property represents all of the driver’s hash values for a deviceTarget object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IDeviceTargetData``Dim value As ReadOnlyCollection(Of String)``value = instance.DriverHash`

## Syntax


**Visual Basic**`ReadOnly Property DriverHash As ReadOnlyCollection(Of String)`

**C#**`ReadOnlyCollection<string> DriverHash { get; }`

## Property Value


Returns **ReadOnlyCollection**.

## Remarks


Upper and lower filter drivers may also be included.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






