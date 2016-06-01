---
author: joshbax-msft
title: PackageManager.GetDeviceFamilies Method
description: PackageManager.GetDeviceFamilies Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 68e0420b-2c2f-4d1f-9e0e-d30e1fc49be1
---

# PackageManager.GetDeviceFamilies Method


This method retrieves a list of all of the device families used in this submission package.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim returnValue As ReadOnlyCollection(Of DeviceFamily)``returnValue = instance.GetDeviceFamilies`

## Syntax


**Visual Basic**`Public Overrides Function GetDeviceFamilies As ReadOnlyCollection(Of DeviceFamily)`

**C#**`public override ReadOnlyCollection<DeviceFamily> GetDeviceFamilies ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






