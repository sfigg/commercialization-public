---
author: joshbax-msft
title: MachineSet.Validate Method
description: MachineSet.Validate Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a26b83aa-64aa-4cee-9aeb-b7ed44d065be
---

# MachineSet.Validate Method


This method checks to see if the **MachineRole** instances have been filled out correctly for a **MachineSet** object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineSet``Dim returnValue As Boolean``returnValue = instance.Validate`

## Syntax


**Visual Basic**`Public Function Validate As Boolean`

**C#**`public bool Validate ()`

## Return Value


**true** if the **MachineRole** instances are complete and correct; otherwise, **false**.

## Remarks


This function can throw an exception if validation fails.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






