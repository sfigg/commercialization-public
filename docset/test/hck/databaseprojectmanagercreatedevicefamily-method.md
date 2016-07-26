---
author: joshbax-msft
title: DatabaseProjectManager.CreateDeviceFamily Method
description: DatabaseProjectManager.CreateDeviceFamily Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0c0da993-2c19-49eb-ba29-0d802bd4b74b
---

# DatabaseProjectManager.CreateDeviceFamily Method


This method creates a new device family with the given name.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim name As String``Dim familyIds As IEnumerable(Of String)``Dim returnValue As DeviceFamily``returnValue = instance.CreateDeviceFamily(name, familyIds)`

## Syntax


**Visual Basic**`Public Overrides Function CreateDeviceFamily ( _`           `name As String, _`           `familyIds As IEnumerable(Of String) _``) As DeviceFamily`

**C#**`public override DeviceFamily CreateDeviceFamily (`           `string name,`           `IEnumerable<string> familyIds``)`

## Parameters


*name*      The name to create the device family with.

*familyIds*      The ID values to use when creating the new device family.

## Return Value


Returns [DeviceFamily Class](devicefamily-class.md).

## Remarks


An exception occurs when the *familyIds* parameter is **null**, empty, or invalid.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






