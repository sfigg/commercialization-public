---
author: joshbax-msft
title: MachineRole.Equals Method (Object)
description: MachineRole.Equals Method (Object)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e3ec71b2-d375-4c7f-99ec-82c2dfb870a1
---

# MachineRole.Equals Method (Object)


This method compares two **MachineRole** instances.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineRole``Dim obj As Object``Dim returnValue As Boolean``returnValue = instance.Equals(obj)`

## Syntax


**Visual Basic**`Public Overrides Function Equals ( _`           `obj As Object _``) As Boolean`

**C#**`public override bool Equals (`           `Object obj``)`

## Parameters


*obj*      An object to compare against this **MachineRole** object.

## Return Value


Returns **Boolean**, which has a value of **true** if the two objects are equal, or a value of **false** if they are different.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






