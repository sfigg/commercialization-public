---
author: joshbax-msft
title: DatabaseProjectManager.DeleteDeviceFamily Method
description: DatabaseProjectManager.DeleteDeviceFamily Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a700fb59-afff-4025-837e-89cf41c1dcfc
---

# DatabaseProjectManager.DeleteDeviceFamily Method


This method deletes a named Device Family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim name As String``instance.DeleteDeviceFamily(name)`

## Syntax


**Visual Basic**`Public Overrides Sub DeleteDeviceFamily ( _`           `name As String, _``) `

**C#**`public override  void DeleteDeviceFamily (`           `string name``)`

## Parameters


*name*      The name of the device family to delete.

## Remarks


An exception occurs when the *name* parameter is **null**, empty, or the device family cannot be removed.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






