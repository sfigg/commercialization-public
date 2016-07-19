---
author: joshbax-msft
title: DeviceFamily.GetDeviceFamilyFromId Method
description: DeviceFamily.GetDeviceFamilyFromId Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 604e1248-29db-441b-8512-ed5e8d088c23
---

# DeviceFamily.GetDeviceFamilyFromId Method


This method gets a device family for the given hardware ID.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim idToFind As String``Dim manager As ProjectManager``Dim returnValue As DeviceFamily``returnValue = DeviceFamily.GetDeviceFamilyFromId(idToFind, manager)`

## Syntax


**Visual Basic**`Public Shared Function FindDeviceFamilyFromId ( _`           `idToFind As String, _`           `manager As ProjectManager _``) As DeviceFamily`

**C#**`public static DeviceFamily FindDeviceFamilyFromId (`           `string idToFind,`           `ProjectManager manager``)`

## Parameters


*idToFind*      The hardware ID to use to compare against.

*manager*      The logoManager object against which to perform the search.

## Return Value


Returns **DeviceFamily**, which is the **DeviceFamily** object, or **null** if no **DeviceFamily** object is associated with the *idToFind* parameter.

## Remarks


This function throws an exception if the correct device family could not be found. This can occur under the following conditions:

-   The *idToFind* parameter or the manager parameter is **null**

-   The *idToFind* parameter is blank.

-   The *idToFind* parameter is not associated with a **DeviceFamily** object.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






