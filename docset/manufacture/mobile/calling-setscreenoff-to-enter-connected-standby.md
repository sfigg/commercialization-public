---
author: kpacquer
Description: Calling SetScreenOff to enter connected standby
ms.assetid: b9fddd1f-485b-4b09-9b18-93b994ebc076
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Calling SetScreenOff to enter connected standby
---

# Calling SetScreenOff to enter connected standby


Calling the **SetScreenOff** function turns the screen and backlight off, which causes the phone to enter the connected standby power state. This lower power state can be helpful for testing power usage.

**Important**  
This function is for use only in the Microsoft Manufacturing OS.

 

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


``` syntax
HRESULT SetScreenOff();
```

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


None

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


HRESULT

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


There is not an equivalent function to return the device to a full power state.

## <span id="Example"></span><span id="example"></span><span id="EXAMPLE"></span>Example


To use SetScreenOff, include the header and call without any parameters.

``` syntax
#include <ManufacturingConnectedStandbyControl.h>
SetScreenOff();
```

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


**Header:** ManufacturingConnectedStandbyControl.h

**Library:** ManufacturingConnectedStandbyControl.lib

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Calling%20SetScreenOff%20to%20enter%20connected%20standby%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



