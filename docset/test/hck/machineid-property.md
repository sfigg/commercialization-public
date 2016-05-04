---
author: joshbax-msft
title: Machine.Id Property
description: Machine.Id Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 54cf3f9e-c491-4026-a8ae-d6f6c3fb9a12
---

# Machine.Id Property


Represents the unique ID value of a machine.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim value As String``value = instance.Id`

## Syntax


**Visual Basic**`<IgnoreDataMemberAttribute> _``Public MustOverride ReadOnly Property Id As String`

**C#**`[IgnoreDataMemberAttribute]``public abstract string Id { get; }`

## Property Value


Returns **String**.

## Remarks


The ID value is different for a machine when connected to a database and the same machine when connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






