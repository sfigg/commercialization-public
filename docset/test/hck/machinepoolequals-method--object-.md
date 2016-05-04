---
author: joshbax-msft
title: MachinePool.Equals Method (Object)
description: MachinePool.Equals Method (Object)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 48aaba7a-3e56-4eac-a527-1d05f6b581e9
---

# MachinePool.Equals Method (Object)


**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachinePool``Dim obj As Object``Dim returnValue As Boolean``returnValue = instance.Equals(obj)`

## Syntax


**Visual Basic**`Public Overrides Function Equals ( _`           `obj As Object _``) As Boolean`

**C#**`public override bool Equals (`           `Object obj``)`

## Parameters


*obj*      An object to compare against this **MachinePool** object.

## Return Value


Returns **Boolean**, which has a value of **true** if the two OSPlatforms are equal, or a value of **false** if they are different.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






