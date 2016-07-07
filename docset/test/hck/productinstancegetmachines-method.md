---
author: joshbax-msft
title: ProductInstance.GetMachines Method
description: ProductInstance.GetMachines Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 086b9fb0-969e-4fcf-b539-61e7a4ec3c02
---

# ProductInstance.GetMachines Method


This method retrieves all of the machines in a Product Instance. Machines are associated with Product Instances via their test targets. To add or remove a machine, you must add or remove the associated test target.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim returnValue As IEnumerable(Of Machine)``returnValue = instance.GetMachines`

## Syntax


**Visual Basic**`Public Function GetMachines As IEnumerable(Of Machine)`

**C#**`public IEnumerable<Machine> GetMachines ()`

## Return Value


Returns **IEnumerable**, which is a read-only list of machines (test computers).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






