---
author: joshbax-msft
title: DatabaseProjectManager.GetDeviceFamilies Method
description: DatabaseProjectManager.GetDeviceFamilies Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fc156585-a27a-4553-a6a4-2ebb8d2e0f6e
---

# DatabaseProjectManager.GetDeviceFamilies Method


This method retrieves a list of available DeviceFamilies.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim returnValue As ReadOnlyCollection(Of DeviceFamily)``returnValue = instance.GetDeviceFamilies`

## Syntax


**Visual Basic**`Public Overrides Function GetDeviceFamilies As ReadOnlyCollection(Of DeviceFamily)`

**C#**`public override ReadOnlyCollection<DeviceFamily> GetDeviceFamilies ()`

## Return Value


Returns **ReadOnlyCollection**, which is a read-only list of DeviceFamily names.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






