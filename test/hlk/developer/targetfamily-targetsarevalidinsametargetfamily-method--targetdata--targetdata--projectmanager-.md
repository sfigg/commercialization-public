---
title: TargetFamily.TargetsAreValidInSameTargetFamily Method (TargetData, TargetData, ProjectManager)
description: TargetFamily.TargetsAreValidInSameTargetFamily Method (TargetData, TargetData, ProjectManager)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7EA97670-9E48-46B6-BFA0-175C92EDE1E6
---

# TargetFamily.TargetsAreValidInSameTargetFamily Method (TargetData, TargetData, ProjectManager)


Checks to see if the two [TargetData](targetdata-class.md) objects can be members of the same target family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**C#**

`   public static bool TargetsAreValidInSameTargetFamily (`

          `TargetData firstTarget,`

          `TargetData secondTarget,`

          `ProjectManager manager`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*firstTarget*

First instance of [TargetData](targetdata-class.md) to compare.

*secondTarget*

Second instance of [TargetData](targetdata-class.md) to compare.

*manager*

Instance of [ProjectManager](projectmanager-class.md).

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


Returns true if these two targets are similar enough to be in the same target family; otherwise it returns false.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


There are a number of checks done:

-   The Machine of the targets are in the same machine pool.

-   The Machine of the targets have the same OS Platform.

-   Both targets are the same target type.

-   Both targets have common manufacturer/VID/Ven.

-   Both targets have common driver hash (of all drivers associated with this device, including any upper and lower filters).

-   Both targets have a common INF hash.

-   Both targets have the same bus/enumerator type.

-   Both targets have the same class/subclass.

-   If DX capable, same DX major version.

-   All targets are on unique machines.

If any of the checks fail, the method returns false.

**Note**  
This specifically allows different Device ID, PID (Product Id) or "Dev" and different sub vendor or implementer Ids.

 

**Note**  
This function populates the event log with additional data if the comparison has failed.

 

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20TargetFamily.TargetsAreValidInSameTargetFamily%20Method%20%28TargetData,%20TargetData,%20ProjectManager%29%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




