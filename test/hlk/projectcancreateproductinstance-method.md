---
title: Project.CanCreateProductInstance Method
description: Project.CanCreateProductInstance Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a45ff342-246b-4392-a653-fe6fbe83fdd3
---

# Project.CanCreateProductInstance Method


This method validates that a child product instance object can be created but does not add the product instance. This function does not create a **ProductInstance**. You must call the CreateProductInstance method to create a **ProductInstance**.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim instance As Project`

`Dim productInstanceName As String`

`Dim pool As MachinePool`

`Dim platform As OSPlatform`

`Dim returnValue As Boolean`

`returnValue = instance.CanCreateProductInstance(productInstanceName, pool, platform)`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`Public MustOverride Function CanCreateProductInstance ( _`

          `productInstanceName As String, _`

          `pool As MachinePool, _`

          `platform As OSPlatform _`

`) As Boolean`

**C#**

`public abstract bool CanCreateProductInstance (`

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

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


An error occurs if *productInstanceName* or *pool* is **null**, or if *productInstanceName* is empty.

This method does not create a ProductInstance. You must call CreateProductInstance to create the Product Instance.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Project.CanCreateProductInstance%20Method%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




