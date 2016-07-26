---
author: joshbax-msft
title: Machine.LastHeartbeat Property
description: Machine.LastHeartbeat Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3c821076-ca5e-4310-a2d4-7f81788949af
---

# Machine.LastHeartbeat Property


Represents the last heartbeat time.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim value As DateTime``value = instance.LastHeartbeat`

## Syntax


**Visual Basic**`<IgnoreDataMemberAttribute> _``Public MustOverride ReadOnly Property LastHeartbeat As DateTime`

**C#**`[IgnoreDataMemberAttribute]``public abstract DateTime LastHeartbeat { get; }`

## Property Value


Returns **DateTime**.

## Remarks


This will update the heartbeat and invoke a general refresh of the device.

This is not supported when the Project Manager is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






