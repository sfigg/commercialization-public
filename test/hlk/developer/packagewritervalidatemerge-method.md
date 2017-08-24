---
title: PackageWriter.ValidateMerge Method
description: PackageWriter.ValidateMerge Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6b3d3e1e-3dff-49c0-9bf0-fb104a9818e3
---

# PackageWriter.ValidateMerge Method


Checks the provided project for errors that would occur while merging with the current package.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**C#**

` public IEnumerable<string> ValidateMerge (`

`Project project,`

`out StringCollection errorList,`

`out StringCollection warningList`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*project*

The specified project to merge.

*errorList*

A list that contains any error messages that were output during validation.

*warningList*

A list that contains any warning messages that were output during validation.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


Returns a collection of error messages if the merge is not supported. If the merge is supported then an empty collection is returned.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


This method does not merge the project. Use [Merge](packagewritermerge-method.md) to merge the project.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20PackageWriter.ValidateMerge%20Method%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




