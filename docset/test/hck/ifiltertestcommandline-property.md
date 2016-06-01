---
author: joshbax-msft
title: IFilter.TestCommandLine Property
description: IFilter.TestCommandLine Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 43142c2b-1f8b-4711-83b5-3da2826bd0bf
---

# IFilter.TestCommandLine Property


This property represents the command line for the test being filtered.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IFilter``Dim value As String``value = instance.TestCommandLine`

## Syntax


**Visual Basic**`ReadOnly Property TestCommandLine As String`

**C#**`string TestCommandLine  { get; }`

## Property Value


Returns **String**.

## Remarks


Used for case-insensitive matching (equals or starts with) of the test command line.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






