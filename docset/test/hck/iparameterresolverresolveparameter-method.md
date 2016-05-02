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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20IParameterResolver.ResolveParameter%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




