---
author: joshbax-msft
title: Machine.EstimatedRuntime Property
description: Machine.EstimatedRuntime Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 377207c7-ee63-43ac-9408-3d49d46d773f
---

# Machine.EstimatedRuntime Property


This property represents the estimated runtime remaining for all tests which will be run against this machine (test computer).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim value As TimeSpan``value = instance.EstimatedRuntime`

## Syntax


**Visual Basic**`<IgnoreDataMemberAttribute> _``Public MustOverride ReadOnly Property EstimatedRuntime As TimeSpan`

**C#**`[IgnoreDataMemberAttribute]``public abstract TimeSpan EstimatedRuntime { get; }`

## Property Value


Returns **TimeSpan**.

## Remarks


This is not supported when the Project Manager is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






