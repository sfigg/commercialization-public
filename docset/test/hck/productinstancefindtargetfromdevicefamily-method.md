---
author: joshbax-msft
title: ProductInstance.FindTargetFromDeviceFamily Method
description: ProductInstance.FindTargetFromDeviceFamily Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9a9d575a-4f11-4525-b4ed-35642a539042
---

# ProductInstance.FindTargetFromDeviceFamily Method


This method finds a list of target data that matches the specified family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim family As DeviceFamily``Dim returnValue As ReadOnlyCollection(Of TargetData)``returnValue = instance.FindTargetFromDeviceFamily(family)`

## Syntax


**Visual Basic**`Public Function FindTargetFromDeviceFamily ( _`           `family As DeviceFamily _``) As ReadOnlyCollection(Of TargetData)`

**C#**`public ReadOnlyCollection<TargetData> FindTargetFromDeviceFamily (`           `DeviceFamily family``)`

## Parameters


*family*      The family to use to find device matches.

## Return Value


Returns **ReadOnlyCollection**, which is a list of target data objects.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






