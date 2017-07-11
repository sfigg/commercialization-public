---
title: Project.CreateProductInstance Method
description: Project.CreateProductInstance Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 29429600-bb9e-462f-92b2-857edbc6ca08
---

# Project.CreateProductInstance Method


This method creates a child **ProductInstance** object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim instance As Project`

`Dim productInstanceName As String`

`Dim pool As MachinePool`

`Dim platform As OSPlatform`

`Dim returnValue As ProductInstance`

`returnValue = instance.CreateProductInstance(productInstanceName, pool, platform)`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`Public MustOverride Function CreateProductInstance ( _`

          `productInstanceName As String, _`

          `pool As MachinePool, _`

          `platform As OSPlatform _`

`) As ProductInstance `

**C#**

`public abstract ProductInstance CreateProductInstance (`

          `string productInstanceName,`

          `MachinePool pool,`

          `OSPlatform platform`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*productInstanceName*

     The name of the **ProductInstance** object.

*pool*

     The machine pool to use for this **ProductInstance**.

*platform*

     The operating system platform (operating system architecture plus the product SKU) to use for this platform instance.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


Returns a new **ProductInstance** object.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


An error occurs if *productInstanceName* is **null** or empty.

This method is not supported when the project is connected to a package.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Project.CreateProductInstance%20Method%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




