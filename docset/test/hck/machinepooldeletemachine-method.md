---
author: joshbax-msft
title: MachinePool.DeleteMachine Method
description: MachinePool.DeleteMachine Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3c00db81-af5a-44c1-90ab-2eb95372e8ba
---

# MachinePool.DeleteMachine Method


This method delete the named machine for this machine pool. The machine to be deleted must be a child machine of this pool.

**Warning**  
Using the **MachinePool.DeleteMachine** method is NOT recommended because it may leave the deleted machine in an unusable state.

 

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachinePool``Dim nameOfMachineToDelete As String``instance.DeleteMachine(nameOfMachineToDelete)`

## Syntax


**Visual Basic**`Public MustOverride Sub DeleteMachine ( _`           `nameOfMachineToDelete As String _``) `

**C#**`public abstract void DeleteMachine (`           `string nameOfMachineToDelete``)`

## Parameters


*nameOfMachineToDelete*      The name of the machine to delete from this machine pool.

## Remarks


This will delete any test results that are associated with this machine.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






