---
author: joshbax-msft
title: IDeviceTargetData.VendorId Property
description: IDeviceTargetData.VendorId Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bd8d961f-a8a4-46e6-aceb-0146a32ffafd
---

# IDeviceTargetData.VendorId Property


This property represents the vendor ID value for a deviceTarget object. The vendor ID value is unique for each vendor.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IDeviceTargetData``Dim value As String``value = instance.VendorId`

## Syntax


**Visual Basic**`ReadOnly Property VendorId As String`

**C#**`string VendorId { get; }`

## Property Value


Returns **String**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## Remarks


Returns null if a Vendor ID cannot be found.

 

 






