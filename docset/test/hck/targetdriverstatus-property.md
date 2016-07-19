---
author: joshbax-msft
title: Target.DriverStatus Property
description: Target.DriverStatus Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8d983f52-9940-43de-911d-9e434dd74e33
---

# Target.DriverStatus Property


This property represents the driver status of the test target.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Target``Dim value As TargetDriversType``value = instance.DriverStatus`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property DriverStatus As TargetDriversType`

**C#**`[DataMemberAttribute]``public TargetDriversType DriverStatus { get; }`

## Return Value


Returns [TargetDriversType Enumeration](targetdriverstype-enumeration.md).

## Remarks


The status provides information on the driver that is associated with the target. The value is estimated.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






