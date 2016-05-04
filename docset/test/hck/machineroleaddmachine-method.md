---
author: joshbax-msft
title: MachineRole.AddMachine Method
description: MachineRole.AddMachine Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dde21fe2-57e1-485a-baea-bde12ebb0d85
---

# MachineRole.AddMachine Method


This method adds a machine (test computer) to this role.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineRole``Dim machineToAdd As Machine``instance.AddMachine(machineToAdd)`

## Syntax


**Visual Basic**`Public Sub AddMachine ( _`           `machineToAdd As Machine _``) `

**C#**`public void AddMachine (`           `Machine machineToAdd``)`

## Parameters


*machineToAdd*      The machine (test computer) to add to this role.

## Remarks


An exception is thrown when the machine is not valid for this role, but only if the parameter *throwOnError* is true. The following are the cases where the machine would not be appropriate:

-   Machine is from a different Machine Pool.

-   Machine has already been added.

-   Maximum number of Machines for the role has been reached.

-   The Machine has a dimension value that is out of the expected range.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






