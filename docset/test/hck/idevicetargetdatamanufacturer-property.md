---
author: joshbax-msft
title: IDeviceTargetData.Manufacturer Property
description: IDeviceTargetData.Manufacturer Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7fa91ead-79d4-49c6-a7fd-09c548699d1d
---

# IDeviceTargetData.Manufacturer Property


This property represents the name of the manufacturer of a deviceTarget object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IDeviceTargetData``Dim value As String``value = instance.Manufacturer`

## Syntax


**Visual Basic**`ReadOnly Property Manufacturer As String`

**C#**`string Manufacturer { get; }`

## Property Value


Returns **String**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## Remarks


Returns null if a manufacturer cannot be found.

 

 






