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

 

 






