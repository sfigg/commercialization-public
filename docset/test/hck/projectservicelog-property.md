---
author: joshbax-msft
title: Project.ServiceLog Property
description: Project.ServiceLog Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9f0074c5-e23c-412e-9c7a-8068731f533a
---

# Project.ServiceLog Property


This property retrieves the service log that is associated with this project.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim value As TestLog = instance.ServiceLog`

**C#**`Project instance;``TestLog value = instance.ServiceLog;`

## Syntax


**Visual Basic**`Property ServiceLog As TestLog``Public Overridable Get``End Property`

**C#**`public virtual TestLog ServiceLog { get; }`

## Property Value


Returns **TestLog**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






