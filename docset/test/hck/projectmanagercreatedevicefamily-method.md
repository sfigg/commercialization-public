---
author: joshbax-msft
title: ProjectManager.CreateDeviceFamily Method
description: ProjectManager.CreateDeviceFamily Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: df24b4ef-fd7a-43fc-8a4d-5188d302a1bc
---

# ProjectManager.CreateDeviceFamily Method


This method creates a new device family with the given name.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim name As String``Dim familyIds As IEnumerable(Of String)``Dim returnValue As DeviceFamily``returnValue = instance.CreateDeviceFamily(name, familyIds)`

## Syntax


**Visual Basic**`Public MustOverride Function CreateDeviceFamily ( _`           `name As String, _`           `familyIds As IEnumerable(Of String) _`           `platform As OSPlatform _``) As DeviceFamily`

**C#**`public abstract DeviceFamily CreateDeviceFamily (`           `string name,`           `IEnumerable<string> familyIds``)`

## Parameters


*name*      The name to create the device family with.

*familyIds*      The Ids to use when creating the device family.

## Return Value


Returns a [DeviceFamily Class](devicefamily-class.md)

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






