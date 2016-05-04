---
author: joshbax-msft
title: IFilterTargetData.Manufacturer Property
description: IFilterTargetData.Manufacturer Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: eb790c0e-2e5b-4558-9892-b9644b39495f
---

# IFilterTargetData.Manufacturer Property


This property represents the manufacturer of the device driver.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IFilterTargetData``Dim value As String``value = instance.Manufacturer`

## Syntax


**Visual Basic**`ReadOnly Property Manufacturer As String`

**C#**`string Manufacturer { get; }`

## Property Value


Returns **String**.

## Remarks


Returns null if a manufacturer cannot be found.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






