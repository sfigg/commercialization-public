---
author: joshbax-msft
title: Project.Info Property
description: Project.Info Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 052b712e-f7ff-4b1e-8e5f-7c00ede833a4
---

# Project.Info Property


This property retrieves project information.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim value As ProjectInfo``value = instance.Info`

**C#**`Project instance;``ProjectInfo value;``value = instance.Info;`

## Syntax


**Visual Basic**`Property Info As ProjectInfo``Public MustOverride Get``Friend MustOverride Set(ByVal value As ProjectInfo)``End Property`

**C#**`public abstract ProjectInfo Info { get; internal set; }`

## Property Value


Returns **ProjectInfo**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






