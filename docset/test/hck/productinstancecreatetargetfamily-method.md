---
author: joshbax-msft
title: ProductInstance.CreateTargetFamily Method
description: ProductInstance.CreateTargetFamily Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6efffb40-aa11-439b-9502-0bd4fffe1eb7
---

# ProductInstance.CreateTargetFamily Method


This method creates and adds a target family to the existing product instance, using the supplied **DeviceFamily**.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim deviceFamily As DeviceFamily``Dim returnValue As TargetFamily``returnValue = instance.CreateTargetFamily(deviceFamily)`

## Syntax


**Visual Basic**`Public MustOverride Function CreateTargetFamily ( _`           `deviceFamily As DeviceFamily _``) As TargetFamily`

**C#**`public abstract TargetFamily CreateTargetFamily (`           `DeviceFamily deviceFamily``)`

## Parameters


*deviceFamily*      The device family to use to create the **TargetFamily**.

## Return Value


Returns **TargetFamily**, which is an initialized **TargetFamily** object.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






