---
author: joshbax-msft
title: Driver.Locales Property
description: Driver.Locales Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e1656924-a6ec-40f6-a16f-cf65ead29161
---

# Driver.Locales Property


This property represents the locales that this driver package supports.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Driver``Dim value As ReadOnlyCollection(Of String)``value = instance.Locales`

## Syntax


**Visual Basic**`Public Overridable Property Locales As ReadOnlyCollection(Of String)`

**C#**`public virtual ReadOnlyCollection<string> Locales { get; }`

## Property Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






