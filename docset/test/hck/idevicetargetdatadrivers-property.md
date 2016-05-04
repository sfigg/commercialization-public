---
author: joshbax-msft
title: IDeviceTargetData.Drivers Property
description: IDeviceTargetData.Drivers Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cd5dc782-6060-4005-b600-7cb113bde7c7
---

# IDeviceTargetData.Drivers Property


This property represents all of the drivers for this device that can be identified for this deviceTarget object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IDeviceTargetData``Dim value As ReadOnlyCollection(Of String)``value = instance.Drivers`

## Syntax


**Visual Basic**`ReadOnly Property Drivers As ReadOnlyCollection(Of String)`

**C#**`ReadOnlyCollection<string> Drivers { get; }`

## Property Value


Returns **ReadOnlyCollection**.

## Remarks


Upper and lower filter drivers may also be included.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






