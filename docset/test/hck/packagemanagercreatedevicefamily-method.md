---
author: joshbax-msft
title: PackageManager.CreateDeviceFamily Method
description: PackageManager.CreateDeviceFamily Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b90202c2-d24e-497c-a7a3-8892a36493a1
---

# PackageManager.CreateDeviceFamily Method


This method creates a new device family with the given name.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim name As String``Dim familyIds As IEnumerable(Of String)``Dim returnValue As DeviceFamily``returnValue = instance.CreateDeviceFamily(name, familyIds)`

## Syntax


**Visual Basic**`Public Overrides Function CreateDeviceFamily ( _`           `name As String, _`           `familyIds As IEnumerable(Of String) _``) As DeviceFamily`

**C#**`public override DeviceFamily CreateDeviceFamily (`           `string name,`           `IEnumerable<string> familyIds``)`

## Parameters


*name*      The name to create the device family with.

*familyIds*      The list of ID values to use for the device family.

## Return Value


Returns a [DeviceFamily Class](devicefamily-class.md).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






