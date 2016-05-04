---
author: joshbax-msft
title: PackageManager.DeleteDeviceFamily Method
description: PackageManager.DeleteDeviceFamily Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0d05861a-cd70-4b40-ad70-728dba591e84
---

# PackageManager.DeleteDeviceFamily Method


This method deletes a device family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim name As String``instance.DeleteDeviceFamily(name)`

## Syntax


**Visual Basic**`Public Overrides Sub DeleteDeviceFamily ( _`           `name As String _``) `

**C#**`public override void DeleteDeviceFamily (`           `string name``)`

## Parameters


*name*      The name of the device family to delete.

## Remarks


A NotSupported exception is always thrown when this functionality is not supported by a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






