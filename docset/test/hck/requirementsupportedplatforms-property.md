---
author: joshbax-msft
title: Requirement.SupportedPlatforms Property
description: Requirement.SupportedPlatforms Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 40b9d903-f35d-401d-93dc-d734c57f3137
---

# Requirement.SupportedPlatforms Property


This property represents all of the Platforms that this requirement supports.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Requirement``Dim value As ReadOnlyCollection(Of OSPlatform)``value = instance.SupportedPlatforms`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property SupportedPlatforms As ReadOnlyCollection(Of OSPlatform)`

**C#**`public abstract ReadOnlyCollection<OSPlatform> SupportedPlatforms { get; }`

## Property Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






