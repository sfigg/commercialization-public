---
author: joshbax-msft
title: TestLog.ReadLog Method
description: TestLog.ReadLog Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 41c65689-5e6e-456e-90f4-6772cb4b0946
---

# TestLog.ReadLog Method


This method reads a log file from disk to a given IO stream

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TestLog``Dim returnValue As Stream``returnValue = instance.ReadLog`

## Syntax


**Visual Basic**`Public MustOverride Function ReadLog As Stream`

**C#**`public abstract Stream ReadLog ()`

## Return Value


Returns **Stream**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






