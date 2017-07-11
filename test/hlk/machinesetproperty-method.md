---
title: Machine.SetProperty Method
description: Machine.SetProperty Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 67e42a9f-f167-46ee-8db0-e9c9e7dcc183
---

# Machine.SetProperty Method


This method creates a new, or updates an existing property value for a machine.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim instance As Machine`

`Dim nameOfPropertyToSet As String`

`Dim valueOfPropertyToSet As String`

`Dim returnValue As String`

`returnValue = instance.SetProperty(nameOfPropertyToSet, valueOfPropertyToSet)`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`Public MustOverride Function SetProperty ( _`

          `nameOfPropertyToSet As String, _`

          `valueOfPropertyToSet As String _`

`) As String`

**C#**

`public abstract string SetProperty (`

          `string nameOfPropertyToSet,`

          `string valueOfPropertyToSet`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*nameOfPropertyToSet*

     The name of the property to create or set.

*valueOfPropertyToSet*

     The value to set the property to.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


Returns **String**, which is the value of the property that has been set.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


An exception occurs if:

-   The source utility “UI” is not found.*status* is not valid.

-   The *nameOfPropertyToSet* parameter or the *valueOfPropertyToSet* parameter is **null**.

-   The *nameOfPropertyToSet* parameter or the *valueOfPropertyToSet* parameter is empty.

    This is not supported when the project is connected to a package.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Machine.SetProperty%20Method%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




