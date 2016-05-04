---
author: joshbax-msft
title: Project.ModifiedTime Property
description: Project.ModifiedTime Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5dbe3f87-498a-4106-b1ce-d22e46c719d7
---

# Project.ModifiedTime Property


This property retrieves the last time that the project was modified.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim value As DateTime = instance.ModifiedTime`

**C#**`Project instance;``DateTime value = instance.ModifiedTime;`

## Syntax


**Visual Basic**`Property ModifiedTime As DateTime``Public MustOverride Get``Friend MustOverride Set(ByVal value As DateTime)``End Property`

**C#**`public abstract DateTime ModifiedTime { get; internal set; }`

## Property Value


Returns **DateTime**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






