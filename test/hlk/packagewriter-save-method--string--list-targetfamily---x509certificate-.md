---
title: PackageWriter.Save Method (string, List TargetFamily , X509Certificate)
description: PackageWriter.Save Method (string, List TargetFamily , X509Certificate)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: DD25FD9F-0FE6-4327-8C72-A89D4C0D3294
---

# PackageWriter.Save Method (string, List{TargetFamily}, X509Certificate)


Creates and signs an HCK package only containing data in the given target familes.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**C#**

`public void Save (`

          `string packageFile,`

          `List<TargetFamily> targetFamilyList,`

          `X509Certificate certificate`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*packageFile*

Name of file to where the package will be saved.

*targetFamilyList*

List of target families to save.

*certificate*

The certificate to use for signing.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


This function can be used for Submission Packages and Update Packages.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20PackageWriter.Save%20Method%20%28string,%20List%7BTargetFamily%7D,%20X509Certificate%29%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




