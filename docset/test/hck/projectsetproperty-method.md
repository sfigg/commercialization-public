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

 

 






