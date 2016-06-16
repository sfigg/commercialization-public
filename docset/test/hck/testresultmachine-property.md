---
author: joshbax-msft
title: TestResult.Machine Property
description: TestResult.Machine Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8193d7c0-7280-4507-8386-c8336f8c3d87
---

# TestResult.Machine Property


This property represents the machine (test computer) on which this test ran.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TestResult``Dim value As Machine``value = instance.Machine`

## Syntax


**Visual Basic**`<IgnoreDataMemberAttribute> _``Public MustOverride ReadOnly Property Machine As Machine`

**C#**`[IgnoreDataMemberAttribute]``public abstract Machine Machine { get; }`

## Property Value


Returns [Machine Class](machine-class.md).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






