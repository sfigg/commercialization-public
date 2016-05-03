---
author: joshbax-msft
title: Project.SetProperty Method
description: Project.SetProperty Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b219bd07-ae60-46b2-ac0c-bcf1a7dd3764
---

# Project.SetProperty Method


This method updates or creates a new property value.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim nameOfProperty As String``Dim propertyValue As String``Dim returnValue As String``returnValue = instance.SetProperty(nameOfProperty, propertyValue)`

## Syntax


**Visual Basic**`Public MustOverride Function SetProperty ( _`           `nameOfProperty As String, _`           `propertyValue As String _``) As String `

**C#**`public abstract string SetProperty (`           `string nameOfProperty,`           `string propertyValue``)`

## Parameters


*nameOfProperty*      The name of the property to update or create.

*propertyValue*      The machine pool to use for this **ProductInstance**.

## Return Value


Returns **String**, which is the string value of the new value of the property that was set.

## Remarks


An error occurs if *nameOfProperty* is **null** or empty, or if *propertyValue* is **null**.

This method is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Project.SetProperty%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




