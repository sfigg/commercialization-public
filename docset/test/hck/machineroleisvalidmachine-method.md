---
author: joshbax-msft
title: MachineRole.IsValidMachine Method
description: MachineRole.IsValidMachine Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6005bf0e-961f-4a52-85e2-f5e31f33eafa
---

# MachineRole.IsValidMachine Method


**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineRole``Dim machineToAdd As Machine``Dim throwOnError As Boolean``Dim returnValue As Boolean``returnValue = instance.IsValidMachine(machineToAdd, throwOnError)`

## Syntax


**Visual Basic**`Public Function IsValidMachine ( _`           `machineToAdd As Machine, _`           `throwOnError As Boolean _``) As Boolean`

**C#**`public bool IsValidMachine (`           `Machine machineToAdd,`           `bool throwOnError``) `

## Parameters


*machineToAdd*           The machine (test computer) to test against.

*throwOnError*           A flag determining if this function should throw exceptions.

## Return Value


**true** if the machine (test computer) is appropriate for this machine role; otherwise, **false**.

## Remarks


An exception is thrown when the *machineToAdd* parameter represents a test computer that is not valid for this role, but only if the *throwOnError* flag is set to **true**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






