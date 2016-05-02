---
author: joshbax-msft
title: DatabaseProjectManager.CreateProject Method
description: DatabaseProjectManager.CreateProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d6581c61-273b-4e8e-9a2a-bb4787401c11
---

# DatabaseProjectManager.CreateProject Method


This method creates a new **Project** object and adds it to the project collection.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim projectName As String``Dim returnValue As Project``returnValue = instance.CreateProject(projectName)`

## Syntax


**Visual Basic**`Public Overrides Function CreateProject ( _`           `projectName As String, _``) As Project`

**C#**`public override Project CreateProject (`           `string projectName,``)`

## Parameters


*projectName*      The name to be associated with the project. The name is case-insensitive.

## Return Value


Returns [Project Class](project-class.md).

## Remarks


An exception occurs when the *projectName* parameter is **null**, empty, or there is a failure while creating the **Project** object.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DatabaseProjectManager.CreateProject%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




