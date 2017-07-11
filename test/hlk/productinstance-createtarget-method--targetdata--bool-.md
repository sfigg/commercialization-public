---
title: ProductInstance.CreateTarget Method (TargetData, bool)
description: ProductInstance.CreateTarget Method (TargetData, bool)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 41743261-9901-48D3-AD46-69AFDC702523
---

# ProductInstance.CreateTarget Method (TargetData, bool)


**Warning**  This functionality is being deprecated.

 

This method creates a target from [TargetData](targetdata-class.md), and adds it to this product instance.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**C#**

`public Target CreateTarget (`

          `TargetData data,`

          `bool createWithoutAddingTests`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*data*

The [TargetData](targetdata-class.md) to use to create the target.

*createWithoutAddingTests*

Specifies if the Target should be created without adding Tests.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


The new [Target](target-class.md) object that was created.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


Any target has to be a child of a [TargetFamily](targetfamily-class.md). Any hardware IDs found in the target data will be used to find a TargetFamily. If no TargetFamily is found that contains one of the hardware IDs, a new TargetFamily is created. In the case that a [TargetException](targetexception-class.md) is thrown due to the refresh failing, verify the database connection is valid and that the target device has not been removed and is still present on the system if connected to a database project; if the hardware/driver is present and available, additionally waiting for a few minutes for the data to become available and/or rebooting the client system, then retrying this call may resolve the issue.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20ProductInstance.CreateTarget%20Method%20%28TargetData,%20bool%29%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




