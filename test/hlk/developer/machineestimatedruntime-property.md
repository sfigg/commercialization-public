---
title: Machine.EstimatedRuntime Property
description: Machine.EstimatedRuntime Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 46a26bff-ed42-4cfa-b013-6198add40b33
---

# Machine.EstimatedRuntime Property


This property represents the estimated runtime remaining for all tests which will be run against this machine (test computer).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim instance As Machine`

`Dim value As TimeSpan`

`value = instance.EstimatedRuntime`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`<IgnoreDataMemberAttribute> _`

`Public MustOverride ReadOnly Property EstimatedRuntime As TimeSpan`

**C#**

`[IgnoreDataMemberAttribute]`

`public abstract TimeSpan EstimatedRuntime { get; }`

## <span id="Property_Value"></span><span id="property_value"></span><span id="PROPERTY_VALUE"></span>Property Value


Returns **TimeSpan**.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


This is not supported when the Project Manager is connected to a package.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Machine.EstimatedRuntime%20Property%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




