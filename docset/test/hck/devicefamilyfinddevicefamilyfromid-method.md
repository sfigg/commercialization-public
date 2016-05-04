---
author: joshbax-msft
title: DeviceFamily.FindDeviceFamilyFromId Method
description: DeviceFamily.FindDeviceFamilyFromId Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6c85cc95-8b7b-4a4c-ab60-1a95c3864212
---

# DeviceFamily.FindDeviceFamilyFromId Method


This method retrieves a device family for the given hardware ID.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim idToFind As String``Dim manager As ProjectManager``Dim returnValue As DeviceFamily``returnValue = DeviceFamily.FindDeviceFamilyFromId(idToFind, manager)`

## Syntax


**Visual Basic**`Public Shared Function FindDeviceFamilyFromId ( _`           `idToFind As String, _`           `manager As ProjectManager _``) As DeviceFamily`

**C#**`public static DeviceFamily FindDeviceFamilyFromId (`           `string idToFind,`           `ProjectManager manager``)`

## Parameters


*idToFind*      The hardware ID to use to compare against.

*manager*      The logoManager object against which to perform the search.

## Return Value


Returns **DeviceFamily**.

## Remarks


An exception occurs when the *idToFind* parameter or the *manager* parameter is **null** or the *idToFind* parameter is blank.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






