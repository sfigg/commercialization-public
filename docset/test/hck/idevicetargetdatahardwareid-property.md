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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20IDeviceTargetData.HardwareId%20Property%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




