---
author: joshbax-msft
title: PackageManager.GetProject Method
description: PackageManager.GetProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 74dcaa2c-1495-41a4-bfdc-b98cf6aa7a9b
---

# PackageManager.GetProject Method


This method retrieves a Submission from the package that matches projectName.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim projectName As String``Dim returnValue As Project``returnValue = instance.GetProject(projectName)`

## Syntax


**Visual Basic**`Public Overrides Function GetProject ( _`           `projectName As String _``) As Project`

**C#**`public override Project GetProject (`           `string projectName``) `

## Parameters


*projectName*      The name to uniquely identify the submission.

## Return Value


Returns [Project Class](project-class.md).

## Remarks


An exception occurs if projectName is **null** or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20PackageManager.GetProject%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




