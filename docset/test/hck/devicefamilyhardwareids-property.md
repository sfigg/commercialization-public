---
author: joshbax-msft
title: DeviceFamily.HardwareIds Property
description: DeviceFamily.HardwareIds Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3eb3bcdb-6467-40db-8474-72ca435955b9
---

# DeviceFamily.HardwareIds Property


This property represents a collection of hardware IDs used to identify the test targets in this device family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As DeviceFamily``Dim value As ReadOnlyCollection(Of String)``value = instance.HardwareIds`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property HardwareIds As ReadOnlyCollection(Of String)`

**C#**`public abstract ReadOnlyCollection<string> HardwareIds { get; }`

## Property Value


Returns Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






