---
title: PackageManager.ExtractSupplementalFiles Method
description: PackageManager.ExtractSupplementalFiles Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4636fb5f-912f-4e56-9d0f-ef9ba3757c24
---

# PackageManager.ExtractSupplementalFiles Method


This method extracts all the "supplemental files" linked with a submission package.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim instance As PackageManager`

`Dim path As String`

`instance.ExtractSupplementalFiles(path)`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`Public Sub ExtractSupplementalFiles ( _`

          `path As String _`

`) `

**C#**

`public void ExtractSupplementalFiles (`

          `string path`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*path*

     The path under which the supplemental files are to be extracted.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


An exception is thrown if *path* is **null** or empty.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20PackageManager.ExtractSupplementalFiles%20Method%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




