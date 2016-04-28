---
author: joshbax-msft
title: Test.SetParameter Method (Target, String, String, ParameterSetAsDefault)
description: Test.SetParameter Method (Target, String, String, ParameterSetAsDefault)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cd11b29d-3e8e-4b9d-a0b9-d41f142fcbcf
---

# Test.SetParameter Method (Target, String, String, ParameterSetAsDefault)


This method updates a job parameter.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Test``Dim target As Target``Dim parameterName As String``Dim parameterValue As String``Dim setAsDefault As ParameterSetAsDefault``Dim returnValue As String``returnValue = instance.SetParameter(target, parameterName, parameterValue, setAsDefault)`

## Syntax


**Visual Basic**`Public MustOverride Function SetParameter ( _`           `target As Target, _`           `parameterName As String, _`           `parameterValue As String, _`          `setAsDefault As ParameterSetAsDefault _``) As String`

**C#**`public abstract string SetParameter (`           `Target target,`           `string parameterName,`           `string parameterValue,`          `ParameterSetAsDefault setAsDefault``) `

## Parameters


*target*           The test target (test computer) to use to set this parameter.

*parameterName*           The name of the test parameter to set.

*parameterValue*           The new value to set the test parameter to.

*setAsDefault*           This value indicates that the test parameter is set as the default for all future job runs.

## Return Value


Returns **String**, which is the updated value for the parameter.

## Remarks


This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Test.SetParameter%20Method%20%28Target,%20String,%20String,%20ParameterSetAsDefault%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




