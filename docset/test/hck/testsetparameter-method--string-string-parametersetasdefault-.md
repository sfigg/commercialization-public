---
author: joshbax-msft
title: Test.SetParameter Method (String, String, ParameterSetAsDefault)
description: Test.SetParameter Method (String, String, ParameterSetAsDefault)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a61122f9-81f3-49c4-a711-4a7f7e6995e0
---

# Test.SetParameter Method (String, String, ParameterSetAsDefault)


This method updates a job parameter. This will set the parameter for all applicable targets for this job

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Test``Dim parameterName As String``Dim parameterValue As String``Dim setAsDefault As ParameterSetAsDefault``Dim returnValue As String``returnValue = instance.SetParameter(parameterName, parameterValue, setAsDefault)`

## Syntax


**Visual Basic**`Public MustOverride Function SetParameter ( _`           `parameterName As String, _`           `parameterValue As String, _`          `setAsDefault As ParameterSetAsDefault _``) As String`

**C#**`public abstract string SetParameter (`           `string parameterName,`           `string parameterValue,`          `ParameterSetAsDefault setAsDefault``) `

## Parameters


*parameterName*           The name of the test parameter to set.

*parameterValue*           The new value to set the test parameter to.

*setAsDefault*           This value indicates that the test parameter is set as the default for all future job runs.

## Return Value


Returns **String**, which is the updated value for the parameter.

## Remarks


All targets where this property can be set are updated.

This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






