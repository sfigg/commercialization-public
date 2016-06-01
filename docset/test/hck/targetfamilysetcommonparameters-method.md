---
author: joshbax-msft
title: TargetFamily.SetCommonParameters Method
description: TargetFamily.SetCommonParameters Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 81df7ee6-3c75-4714-b810-87425f8e742b
---

# TargetFamily.SetCommonParameters Method


This method sets all of the parameters with a given name to the same value for all child jobs.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TargetFamily``Dim parameterName As String``Dim  parameterValue As String``instance.SetCommonParameters(parameterName, parameterValue)`

## Syntax


**Visual Basic**`Public Sub SetCommonParameters ( _`           `parameterName As String, _`           `parameterValue As String, _``) `

**C#**`public void SetCommonParameters (`           `string parameterName,`           `string parameterValue,``)`

## Parameters


*parameterName*      The name (string) of the parameter to set.

*parameterValue*      The value to set the parameter to.

## Remarks


Setting a parameter value to empty is supported.

Setting a value to null is not supported.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






