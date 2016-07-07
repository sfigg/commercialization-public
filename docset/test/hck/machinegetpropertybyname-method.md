---
author: joshbax-msft
title: Machine.GetPropertyByName Method
description: Machine.GetPropertyByName Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 16ed4de1-4178-4703-bf5c-6fe7c5e1bb88
---

# Machine.GetPropertyByName Method


This method retrieves a particular dimension value.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim propertyName As String``Dim returnValue As String``returnValue = instance.GetPropertyByName(propertyName)`

## Syntax


**Visual Basic**`Public MustOverride Function GetPropertyByName ( _`           `propertyName As String _``) As String`

**C#**`public abstract string GetPropertyByName (`           `string propertyName``)`

## Parameters


*propertyName*      The name of the property to get.

## Return Value


Returns **String**, which is the particular Machine property (dimension) for this machine.

## Remarks


Machine Properties are also referred to as Dimensions.

This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






