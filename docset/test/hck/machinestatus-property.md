---
author: joshbax-msft
title: Machine.Status Property
description: Machine.Status Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5b6a1fd4-4bfc-45b9-bcff-a3bc1322c37c
---

# Machine.Status Property


Represents the state of a machine.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim value As MachineStatus``value = instance.Status`

## Syntax


**Visual Basic**`<IgnoreDataMemberAttribute> _``Public MustOverride ReadOnly Property Status As MachineStatus`

**C#**`[IgnoreDataMemberAttribute]``public abstract MachineStatus Status { get; }`

## Property Value


Returns **MachineStatus**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






