---
author: joshbax-msft
title: IDeviceCollectionTargetData.Manufacturer Property
description: IDeviceCollectionTargetData.Manufacturer Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 120547fd-be79-472a-b989-cb4f8abef516
---

# IDeviceCollectionTargetData.Manufacturer Property


**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IDeviceCollectionTargetData``Dim value As String``value = instance.Manufacturer`

## Syntax


**Visual Basic**`ReadOnly Property Manufacturer As String`

**C#**`string Manufacturer { get; }`

## Property Value


Returns **String**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## Remarks


Returns null if a manufacturer cannot be found.

 

 






