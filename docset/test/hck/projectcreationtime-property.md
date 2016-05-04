---
author: joshbax-msft
title: Project.CreationTime Property
description: Project.CreationTime Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4aae075b-fca1-476a-8165-934620a64cc2
---

# Project.CreationTime Property


This property retrieves the project creation time.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim value As DateTime = instance.CreationTime`

**C#**`Project instance;``DateTime value = instance.CreationTime;`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property CreationTime As DateTime`

**C#**`public abstract DateTime CreationTime { get; }`

## Property Value


Returns **DateTime**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






