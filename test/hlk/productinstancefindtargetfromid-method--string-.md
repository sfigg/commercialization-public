---
title: ProductInstance.FindTargetFromId Method (String)
description: ProductInstance.FindTargetFromId Method (String)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cfbe6ddd-05a7-43ca-8219-5f4c9738356b
---

# ProductInstance.FindTargetFromId Method (String)


This method returns an appropriate target type based on information associated with &lt;paramref name="targetId"/&gt;.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim instance As ProductInstance`

`Dim targetId As String`

`Dim returnValue As ReadOnlyCollection(Of TargetData)`

`returnValue = instance.FindTargetFromId(targetId)`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`Public Function FindTargetFromId ( _`

          `targetId As String _`

`) As ReadOnlyCollection(Of TargetData)`

**C#**

`public ReadOnlyCollection<TargetData> FindTargetFromId (`

          `string targetId`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*targetId*

     The ID value that identifies the test target. This can be found in the SysParse data.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


Returns **ReadOnlyCollection**. If &lt;paramref name="targetId"/&gt; is not found on the machine (test computer) associated with the product instance, **null** is returned. Otherwise, an instance of the test target is returned.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


An exception occurs if *targetId* is null or empty.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20ProductInstance.FindTargetFromId%20Method%20%28String%29%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




