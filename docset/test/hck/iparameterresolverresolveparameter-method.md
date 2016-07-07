---
author: joshbax-msft
title: IParameterResolver.ResolveParameter Method
description: IParameterResolver.ResolveParameter Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 43292b13-519a-4de9-8bd5-0d14c4397214
---

# IParameterResolver.ResolveParameter Method


This method is called by the scheduler to resolve a parameter that should be resolved externally.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IParameterResolver``Dim inValue As String``Dim outValue As String``Dim returnValue As Boolean``returnValue = instance.ResolveParameter(inValue, outValue)`

## Syntax


**Visual Basic**`Function ResolveParameter ( _`           `inValue As String, _`           `ByRef outValue As String _``) As Boolean`

**C#**`bool ResolveParameter (`           `string inValue,`           `ref string outValue``)`

## Parameters


*inValue*      The resolver value to replace.

*outValue*      The new value of the parameter. If the method returns **true**, this will be the new value.

## Return Value


Returns Boolean, which has a value of **true** if the parameter SHOULD be resolved, or returns **false** if the parameter should not be resolved.

## Remarks


This method will return **true** if the identifier was found indicating that this resolver was responsible for this parameter it does not ensure that any parameter value was actually found.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






