---
author: joshbax-msft
title: ProjectManager.DeleteDeviceFamily Method
description: ProjectManager.DeleteDeviceFamily Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 97a92f4e-574a-4d4b-8a20-826ff9eb9cc5
---

# ProjectManager.DeleteDeviceFamily Method


This method deletes a device family by name.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectManager``Dim name As String``instance.DeleteDeviceFamily(name)`

## Syntax


**Visual Basic**`Public MustOverride Sub DeleteDeviceFamily ( _`           `name As String _``) `

**C#**`public abstract void DeleteDeviceFamily (`           `string name``)`

## Parameters


*name*      The name of the device family to delete..

## Remarks


An error occurs if the device family cannot be located or is in use.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






