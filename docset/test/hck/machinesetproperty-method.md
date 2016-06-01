---
author: joshbax-msft
title: Machine.SetProperty Method
description: Machine.SetProperty Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0f13a44e-fc75-4a5a-becd-55822886d6f5
---

# Machine.SetProperty Method


This method creates a new, or updates an existing property value for a machine.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim nameOfPropertyToSet As String``Dim valueOfPropertyToSet As String``Dim returnValue As String``returnValue = instance.SetProperty(nameOfPropertyToSet, valueOfPropertyToSet)`

## Syntax


**Visual Basic**`Public MustOverride Function SetProperty ( _`           `nameOfPropertyToSet As String, _`           `valueOfPropertyToSet As String _``) As String`

**C#**`public abstract string SetProperty (`           `string nameOfPropertyToSet,`           `string valueOfPropertyToSet``)`

## Parameters


*nameOfPropertyToSet*      The name of the property to create or set.

*valueOfPropertyToSet*      The value to set the property to.

## Return Value


Returns **String**, which is the value of the property that has been set.

## Remarks


An exception occurs if:

-   The source utility “UI” is not found.*status* is not valid.

-   The *nameOfPropertyToSet* parameter or the *valueOfPropertyToSet* parameter is **null**.

-   The *nameOfPropertyToSet* parameter or the *valueOfPropertyToSet* parameter is empty.

    This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






