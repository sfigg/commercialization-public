---
title: Target.IsTargetReady Property
description: Target.IsTargetReady Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 87f81227-5132-4b27-a793-af56c649a1f7
---

# Target.IsTargetReady Property


This property represents the value indicating whether the test target is currently ready to run tests (specifically, the test computer is in the “ready” state).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim instance As Target`

`Dim value As Boolean`

`value = instance.IsTargetReady`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`<IgnoreDataMemberAttribute> _`

`Public MustOverride ReadOnly Property IsTargetReady As Boolean`

**C#**

`[IgnoreDataMemberAttribute]`

`public abstract bool IsTargetReady { get; }`

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


Returns **Boolean**.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


Readiness is determined by the following checks.

-   The machine associated with the target is in ready state.

-   The machine associated with the target has a recent heartbeat (registered with the controller).

-   The machine associated with the target is in the correct machine pool (pool specified with the product instance).

If the returned value is false, Tests for this target cannot be scheduled.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Target.IsTargetReady%20Property%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




