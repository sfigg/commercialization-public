---
author: joshbax-msft
title: Machine.GetFullPropertyByName Method
description: Machine.GetFullPropertyByName Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e614cca9-a710-4e92-8600-0bcc0ad24ece
---

# Machine.GetFullPropertyByName Method


This method retrieves the value of a particular dimension value.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim propertyName As String``Dim returnValue As MachineProperty``returnValue = instance.GetFullPropertyByName(propertyName)`

## Syntax


**Visual Basic**`Public MustOverride Function GetFullPropertyByName ( _`           `propertyName As String _``) As MachineProperty`

**C#**`public abstract MachineProperty GetFullPropertyByName (`           `string propertyName``)`

## Parameters


*propertyName*      The name of the property to get.

## Return Value


Returns **MachineProperty**, which is the particular Machine property (dimensions).

## Remarks


An exception is thrown when:

-   The *propertyName* parameter is null.

-   The *propertyName* parameter is empty.

-   The *propertyName* cannot be found.

    Machine Properties are also referred to as Dimensions.

    This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






