---
author: joshbax-msft
title: ProjectManager.GetDeviceFamilies Method
description: ProjectManager.GetDeviceFamilies Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e809baf5-8f82-45e8-ae79-f364604f4056
---

# ProjectManager.GetDeviceFamilies Method


This method retrieves the list of available DeviceFamilies.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim returnValue As ReadOnlyCollection(Of DeviceFamily)``returnValue = instance.GetDeviceFamilies`

## Syntax


**Visual Basic**`Public MustOverride Function GetDeviceFamilies As ReadOnlyCollection(Of DeviceFamily)`

**C#**`public abstract ReadOnlyCollection<DeviceFamily> GetDeviceFamilies ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






