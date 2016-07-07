---
author: joshbax-msft
title: Test.Id Property
description: Test.Id Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b325b319-5072-49e2-8623-ad29ba6cfd1b
---

# Test.Id Property


This property represents the ID value for the certification test. The test ID value is a unique identifier that distinguishesthis certification test among other tests and is consistent across all installations.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Test``Dim value As String``value = instance.Id`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property Id As String`

**C#**`public abstract string Id { get; }`

## Property Value


Returns **String**.

## Remarks


A test Id is a unique identifier that is consistent across all installations.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






