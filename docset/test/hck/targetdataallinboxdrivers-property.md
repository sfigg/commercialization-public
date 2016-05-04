---
author: joshbax-msft
title: TargetData.AllInboxDrivers Property
description: TargetData.AllInboxDrivers Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e9b4553b-975e-4a89-b2a9-41ffbacb1516
---

# TargetData.AllInboxDrivers Property


This property represents the driver status for this test target.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TargetData``Dim value As TargetDriversType``value = instance.AllInboxDrivers`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property AllInboxDrivers As TargetDriversType`

**C#**`public abstract TargetDriversType AllInboxDrivers { get; }`

## Property Value


Returns [TargetDriversType Enumeration](targetdriverstype-enumeration.md).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






