---
title: MachinePool.DeleteMachine Method
description: MachinePool.DeleteMachine Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6cfe9017-0b12-49a7-a4c3-0a892ef5f7d3
---

# MachinePool.DeleteMachine Method


This method delete the named machine for this machine pool. The machine to be deleted must be a child machine of this pool.

**Warning**  
Using the **MachinePool.DeleteMachine** method is NOT recommended because it may leave the deleted machine in an unusable state.

 

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim instance As MachinePool`

`Dim nameOfMachineToDelete As String`

`instance.DeleteMachine(nameOfMachineToDelete)`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`Public MustOverride Sub DeleteMachine ( _`

          `nameOfMachineToDelete As String _`

`) `

**C#**

`public abstract void DeleteMachine (`

          `string nameOfMachineToDelete`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*nameOfMachineToDelete*

     The name of the machine to delete from this machine pool.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


This will delete any test results that are associated with this machine.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20MachinePool.DeleteMachine%20Method%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




