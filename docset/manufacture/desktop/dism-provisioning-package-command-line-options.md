---
author: Justinha
Description: 'Use DISM to work with Provisioning Packages (.ppkg) files. For example, you can add settings and Classic Windows applications to Windows 10, or reduce the size of your Windows installation.'
MS-HAID: 'p\_adk\_online.dism\_provisioning\_package\_command-line\_options'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'DISM Provisioning Package (.ppkg) Command-Line Options'
---

# <span id="p_adk_online.dism_provisioning_package_command-line_options"></span>DISM Provisioning Package (.ppkg) Command-Line Options


Use DISM to work with Provisioning Packages (.ppkg) files. For example, you can add settings and Classic Windows applications to Windows 10, or reduce the size of your Windows installation.

## <span id="_Add-ProvisioningPackage"></span><span id="_add-provisioningpackage"></span><span id="_ADD-PROVISIONINGPACKAGE"></span>**/Add-ProvisioningPackage**


Syntax: DISM.exe **/Add-ProvisioningPackage/PackagePath:**&lt;*package\_path*&gt; \[**/CatalogPath:**&lt;*path*&gt;\]

Adds applicable payload of provisioning package to the specified image.

Example:

``` syntax
DISM.exe /Image=C:\ /Add-ProvisioningPackage /PackagePath:C:\oem.ppkg
```

## <span id="_Get-ProvisioningPackageInfo"></span><span id="_get-provisioningpackageinfo"></span><span id="_GET-PROVISIONINGPACKAGEINFO"></span>**/Get-ProvisioningPackageInfo**


Syntax: DISM.exe **/Get-ProvisioningPackageInfo/PackagePath:**&lt;*package\_path*&gt;

Get the information of provisioning package.

Example:

``` syntax
DISM.exe /Image=C:\ /Get-ProvisioningPackageInfo /PackagePath:C:\oem.ppkg
```

## <span id="_Apply-CustomDataImage"></span><span id="_apply-customdataimage"></span><span id="_APPLY-CUSTOMDATAIMAGE"></span>**/Apply-CustomDataImage**


Syntax: **/Apply-CustomDataImage/CustomDataImage:**&lt;*path\_to\_image\_file*&gt; **/ImagePath:**&lt;*target\_drive*&gt; **/SingleInstance**

Dehydrates files contained in the custom data image to save space. For client editions, this package is used by the push-button recovery tools.

**/CustomDataImage** specifies where the provisioning package is stored.

**/ImagePath** specifies the drive that contains the Windows image. DISM scans this drive for any non-system files on this drive and incorporates them into the provisioning package.

**/SingleInstance**: After DISM captures the non-system files to a compressed provisioning package, DISM adds pointers on the drive to the new compressed provisioning package, and removes the original files. As a result, the files are still visible to the system, but take up less space on the drive.

Examples:

``` syntax
DISM.exe /Apply-CustomDataImage /CustomDataImage:C:\oem.ppkg /ImagePath:C:\ /SingleInstance
```

Applies to: Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) only.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20DISM%20Provisioning%20Package%20%28.ppkg%29%20Command-Line%20Options%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



