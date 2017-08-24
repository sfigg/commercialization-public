---
title: TargetFamily.CreateTarget Method (IEnumerable TargetData , bool)
description: TargetFamily.CreateTarget Method (IEnumerable TargetData , bool)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 610CA992-F8C6-43CC-850B-14BE56EA08C9
---

# TargetFamily.CreateTarget Method (IEnumerable{TargetData}, bool)


**Warning**  This method is being deprecated. Please use [CreateTarget(IEnumerable&lt;TargetData&gt;)](targetfamilycreatetarget-method--ienumerable-.md) instead.

 

Creates multiple targets from a collection of [TargetData](targetdata-class.md), and adds it to the target family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**C#**

`public virtual void CreateTarget (`

          `IEnumerable<TargetData> targets, `

          ` bool createWithoutAddingTests`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*targets*

Collection of [TargetData](targetdata-class.md) objects.

*createWithoutAddingTests*

A flag to create the Target without adding any Tests.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


This is not an atomic operation - if an exception is thrown while adding the targets, it is possible that only a subset of the targets was added. Typically the targets that were added before the exception. The targets are added in the order provided in the collection.

This is not supported when the project is connected to a package.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20TargetFamily.CreateTarget%20Method%20%28IEnumerable%7BTargetData%7D,%20bool%29%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




