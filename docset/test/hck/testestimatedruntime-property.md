---
author: joshbax-msft
title: Test.EstimatedRuntime Property
description: Test.EstimatedRuntime Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 728cadf0-7717-496e-9d54-cf7e66c99f37
---

# Test.EstimatedRuntime Property


This property represents the time (in seconds) estimated to complete the certification test.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Test``Dim value As TimeSpan``value = instance.EstimatedRuntime`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property EstimatedRuntime As TimeSpan`

**C#**`public abstract TimeSpan EstimatedRuntime { get; }`

## Property Value


Returns **TimeSpan**.

## Remarks


This is an estimate. Due to client variations, actual time might vary.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






