---
author: joshbax-msft
title: Machine.RemoveProperty Method
description: Machine.RemoveProperty Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ee5d886e-3bc5-4b47-a360-8d30f571ff65
---

# Machine.RemoveProperty Method


This method removes a property (dimension) by name from this machine.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim nameOfPropertyToRemove As String``instance.RemoveProperty(nameOfPropertyToRemove)`

## Syntax


**Visual Basic**`Public MustOverride Sub RemoveProperty ( _`           `nameOfPropertyToRemove As String _``) `

**C#**`public abstract void RemoveProperty (`           `string nameOfPropertyToRemove``)`

## Parameters


*nameOfPropertyToRemove*      The name of the property to remove.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## Remarks


This is not supported when the project is connected to a package.

 

 






