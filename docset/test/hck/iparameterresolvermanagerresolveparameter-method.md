---
author: joshbax-msft
title: IParameterResolverManager.ResolveParameter Method
description: IParameterResolverManager.ResolveParameter Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f197b9c0-26b3-40fc-b3cb-85db3a08facb
---

# IParameterResolverManager.ResolveParameter Method


This method resolves the parameter string.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IParameterResolverManager``Dim inputValue As String``Dim returnValue As String``returnValue = instance.ResolveParameter(inputValue)`

## Syntax


**Visual Basic**`Function ResolveParameter ( _`           `inputValue As String _``) As String`

**C#**`string ResolveParameter (`           `string inputValue``)`

## Parameters


*inputValue*      The input string to search for.

## Return Value


Returns **String**, which is the final result of the parameter resolution process.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






