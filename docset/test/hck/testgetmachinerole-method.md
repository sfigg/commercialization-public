---
author: joshbax-msft
title: Test.GetMachineRole Method
description: Test.GetMachineRole Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9d03eb6a-080b-4cad-8e48-a23d662cd25f
---

# Test.GetMachineRole Method


This method retrieves a logical machine set. If there is no machine set associated with this job, this will return **null**.

## Usage


**Visual Basic**`Dim instance As Test``Dim returnValue As MachineSet``returnValue = instance.GetMachineRole`

## Syntax


**Visual Basic**`Public MustOverride Function GetMachineRole As MachineSet`

**C#**`public abstract MachineSet GetMachineRole ()`

## Return Value


Returns [MachineSet Class](machineset-class.md).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






