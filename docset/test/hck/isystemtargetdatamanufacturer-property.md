---
author: joshbax-msft
title: ISystemTargetData.Manufacturer Property
description: ISystemTargetData.Manufacturer Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 369aaa6f-ccef-4ed4-98b7-19aee45871d3
---

# ISystemTargetData.Manufacturer Property


This property represents the manufacturer of the test target (test device).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ISystemTargetData``Dim value As String``value = instance.Manufacturer`

## Syntax


**Visual Basic**`ReadOnly Property Manufacturer As String`           

**C#**`string Manufacturer { get; }`

## Return Value


Returns String.

## Remarks


Returns null if a manufacturer cannot be found.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






