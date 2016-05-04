---
author: joshbax-msft
title: ProductInstance.SetCommonParameters Method
description: ProductInstance.SetCommonParameters Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: efcc5f6a-8bc9-4a74-bb3f-80fdea5672e9
---

# ProductInstance.SetCommonParameters Method


This method sets all of the parameters with a given name to the same value for all child jobs

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim parameterName As String``Dim parameterValue As String``instance.SetCommonParameters(parameterName, parameterValue)`

## Syntax


**Visual Basic**`Public Sub SetCommonParameters ( _`           `parameterName As String, _`           `parameterValue As String _``) `

**C#**`public void SetCommonParameters (`           `string parameterName,`           `string parameterValue``)`

## Parameters


*parameterName*      The name of the parameter to set.

*parameterValue*      The value to set the parameter to set it to.

## Remarks


An exception occurs if the *parameterName* or *parameterValue* value is **null**, not valid, or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






