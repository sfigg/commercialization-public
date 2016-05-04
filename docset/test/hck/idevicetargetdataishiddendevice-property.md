---
author: joshbax-msft
title: IDeviceTargetData.IsHiddenDevice Property
description: IDeviceTargetData.IsHiddenDevice Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8275bb42-a620-4234-8d3c-8b3e92a35307
---

# IDeviceTargetData.IsHiddenDevice Property


This property represents a value indicating whether this should be hidden from the user by default for a deviceTarget object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IDeviceTargetData``Dim value As Boolean``value = instance.IsHiddenDevice`

## Syntax


**Visual Basic**`ReadOnly Property IsHiddenDevice As Boolean`

**C#**`bool IsHiddenDevice { get; }`

## Property Value


**true** if the test target should be hidden from testers; otherwise, **false**.

## Remarks


The devices that are marked hidden are typically devices that are not commonly certified.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






