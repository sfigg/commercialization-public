---
Description: 'DISM Operating System Package (.cab or .msu) Servicing Command-Line Options'
MS-HAID: 'p\_adk\_online.dism\_operating\_system\_package\_servicing\_command\_line\_options'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'DISM Operating System Package (.cab or .msu) Servicing Command-Line Options'
---

# DISM Operating System Package (.cab or .msu) Servicing Command-Line Options


Use DISM with Windows cabinet (.cab) or Windows Update Stand-alone Installer (.msu) files to install or remove updates, service packs, language packs, and to enable or disable Windows features. You can do this on either offline or on a running Windows installation. Features are optional components for the core operating system.

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**DISM.exe** {**/Image:**&lt;*path\_to\_image\_directory*&gt; | **/Online**} \[**dism\_global\_options**\] {**servicing\_option**} \[&lt;*servicing\_argument*&gt;\]

The following operating system package-servicing options are available for an offline image:

**DISM.exe /Image:**&lt;*path\_to\_image\_directory*&gt; \[**/Get-Packages** | **/Get-PackageInfo** | **/Add-Package** | **/Remove-Package** \] \[**/Get-Features** | **/Get-FeatureInfo** | **/Enable-Feature** | **/Disable-Feature** \] \[**/Cleanup-Image**\]

The following operating system package-servicing options are available for a running operating system:

**DISM.exe /Online** \[**/Get-Packages** | **/Get-PackageInfo** | **/Add-Package** | **/Remove-Package** \] \[**/Get-Features** | **/Get-FeatureInfo** | **/Enable-Feature** | **/Disable-Feature** \] \[**/Cleanup-Image**\]

## <span id="Operating_system_package-servicing_options"></span><span id="operating_system_package-servicing_options"></span><span id="OPERATING_SYSTEM_PACKAGE-SERVICING_OPTIONS"></span>Operating system package-servicing options


This section describes how you can use each operating system package-servicing option. These options are not case sensitive.

### <span id="_Get-Help___"></span><span id="_get-help___"></span><span id="_GET-HELP___"></span>/Get-Help /?

When used immediately after a package-servicing command-line option, information about the option and the arguments is displayed.

Additional topics might become available when an image is specified.

Examples:

**Dism /Image:C:\\test\\offline /Add-Package /?**

**Dism /Online /Get-Packages /?**

### <span id="_Get-Packages___Format__Table___List__"></span><span id="_get-packages___format__table___list__"></span><span id="_GET-PACKAGES___FORMAT__TABLE___LIST__"></span>/Get-Packages \[/Format:{Table | List}\]

Displays basic information about all packages in the image. Use the **/Format:Table** or **/Format:List** argument to display the output as a table or a list.

Examples:

**Dism /Image:C:\\test\\offline /Get-Packages**

**Dism /Image:C:\\test\\offline /Get-Packages /Format:Table**

**Dism /Online /Get-Packages**

### <span id="_Get-PackageInfo___PackageName___name_in_image_____PackagePath___path_to_cabfile__"></span><span id="_get-packageinfo___packagename___name_in_image_____packagepath___path_to_cabfile__"></span><span id="_GET-PACKAGEINFO___PACKAGENAME___NAME_IN_IMAGE_____PACKAGEPATH___PATH_TO_CABFILE__"></span>/Get-PackageInfo {/PackageName:&lt; name\_in\_image&gt; | /PackagePath:&lt; path\_to\_cabfile&gt;}

Displays detailed information about a package provided as a .cab file. Only .cab files can be specified. You cannot use this command to obtain package information for .msu files. **/PackagePath** can point to either a .cab file or a folder.

You can use the **/Get-Packages** option to find the name of the package in the image, or you can specify the path to the .cab file. The path to the .cab file should point to the original source of the package, not to where the file is installed on the offline image.

Examples:

**Dism /Image:C:\\test\\offline /Get-PackageInfo /PackagePath:C:\\packages\\package.cab**

**Dism /Image:C:\\test\\offline /Get-PackageInfo /PackageName:Microsoft.Windows.Calc.Demo~6595b6144ccf1df~x86~en~1.0.0.0**

### <span id="_Add-Package__PackagePath___path_to_cabfile____IgnoreCheck_____PreventPending_"></span><span id="_add-package__packagepath___path_to_cabfile____ignorecheck_____preventpending_"></span><span id="_ADD-PACKAGE__PACKAGEPATH___PATH_TO_CABFILE____IGNORECHECK_____PREVENTPENDING_"></span>/Add-Package /PackagePath:&lt; path\_to\_cabfile&gt; \[/IgnoreCheck\] \[ /PreventPending\]

Installs a specified .cab or .msu package in the image. Multiple packages can be added on one command line. The applicability of each package will be checked. If the package is cannot be applied to the specified image, you will receive an error message. Use the **/IgnoreCheck** argument if you want the command to process without checking the applicability of each package.

Use the **/PreventPending** option to skip the installation of the package if the package or Windows image has pending online actions. (Introduced in Windows 8/Windows PE 4.0).

**/PackagePath** can point to:

-   A single .cab or .msu file.

-   A folder that contains a single expanded .cab file.

-   A folder that contains a single .msu file.

-   A folder that contains multiple .cab or .msu files.

**Note**  
If **/PackagePath** points to a folder that contains a .cab or .msu files at its root, any subfolders will also be recursively checked for .cab and .msu files.

 

Examples:

**Dism /Image:C:\\test\\offline /LogPath:AddPackage.log /Add-Package /PackagePath:C:\\packages\\package.msu**

**Dism /Image:C:\\test\\offline /Add-Package /PackagePath:C:\\packages\\package1.cab /PackagePath:C:\\packages\\package2.cab /IgnoreCheck**

**Dism /Image:C:\\test\\offline /Add-Package /PackagePath:C:\\test\\packages\\package.cab /PreventPending**

### <span id="_Remove-Package___PackageName___name_in_image_____PackagePath___path_to_cabfile__"></span><span id="_remove-package___packagename___name_in_image_____packagepath___path_to_cabfile__"></span><span id="_REMOVE-PACKAGE___PACKAGENAME___NAME_IN_IMAGE_____PACKAGEPATH___PATH_TO_CABFILE__"></span>/Remove-Package {/PackageName:&lt; name\_in\_image&gt; | /PackagePath:&lt; path\_to\_cabfile&gt;}

Removes a specified .cab file package from the image. Only .cab files can be specified. You cannot use this command to remove .msu files.

**Note**  
Using this command to remove a package from an offline image will not reduce the image size.

 

You can use the **/PackagePath** option to point to the original source of the package, specify the path to the CAB file, or you can specify the package by name as it is listed in the image. Use the **/Get-Packages** option to find the name of the package in the image.

Examples:

**Dism /Image:C:\\test\\offline /LogPath:C:\\test\\RemovePackage.log /Remove-Package /PackageName:Microsoft.Windows.Calc.Demo~6595b6144ccf1df~x86~en~1.0.0.0**

**Dism /Image:C:\\test\\offline /LogPath:C:\\test\\RemovePackage.log /Remove-Package /PackageName:Microsoft.Windows.Calc.Demo~6595b6144ccf1df~x86~en~1.0.0.0 /PackageName:Microsoft-Windows-MediaPlayer-Package~31bf3856ad364e35~x86~~6.1.6801.0**

**Dism /Image:C:\\test\\offline /LogPath:C:\\test\\RemovePackage.log /Remove-Package /PackagePath:C:\\packages\\package1.cab /PackagePath:C:\\packages\\package2.cab**

### <span id="_Get-Features___PackageName___name_in_image_____PackagePath___path_to_cabfile_____Format__Table___List__"></span><span id="_get-features___packagename___name_in_image_____packagepath___path_to_cabfile_____format__table___list__"></span><span id="_GET-FEATURES___PACKAGENAME___NAME_IN_IMAGE_____PACKAGEPATH___PATH_TO_CABFILE_____FORMAT__TABLE___LIST__"></span>/Get-Features {/PackageName:&lt; name\_in\_image&gt; | /PackagePath:&lt; path\_to\_cabfile&gt;} \[/Format:{Table | List}\]

Displays basic information about all features (operating system components that include optional Windows foundation features) in a package. You can use the **/Get-Features** option to find the name of the package in the image, or you can specify the path to the original source of the package. If you do not specify a package name or path, all features in the image will be listed. **/PackagePath** can point to either a .cab file or a folder.

Feature names are case sensitive if you are servicing a Windows image other than Windows 8.

Use the **/Format:Table** or **/Format:List** argument to display the output as a table or a list.

Examples:

**Dism /Image:C:\\test\\offline /Get-Features**

**Dism /Image:C:\\test\\offline /Get-Features /Format:List**

**Dism /Image:C:\\test\\offline /Get-Features /PackageName:Microsoft.Windows.Calc.Demo~6595b6144ccf1df~x86~en~1.0.0.0**

**Dism /Image:C:\\test\\offline /Get-Features /PackagePath:C:\\packages\\package1.cab**

### <span id="_Get-FeatureInfo__FeatureName__name_in_image____PackageName___name_in_image_____PackagePath___path_to_cabfile___"></span><span id="_get-featureinfo__featurename__name_in_image____packagename___name_in_image_____packagepath___path_to_cabfile___"></span><span id="_GET-FEATUREINFO__FEATURENAME__NAME_IN_IMAGE____PACKAGENAME___NAME_IN_IMAGE_____PACKAGEPATH___PATH_TO_CABFILE___"></span>/Get-FeatureInfo /FeatureName:&lt;name\_in\_image&gt;\[{/PackageName:&lt; name\_in\_image&gt; | /PackagePath:&lt; path\_to\_cabfile&gt;}\]

Displays detailed information about a feature. You must use **/FeatureName**. Feature names are case sensitive if you are servicing a Windows image other than Windows 10 or Windows 8.x. You can use the **/Get-Features** option to find the name of the feature in the image.

**/PackageName** and **/PackagePath** are optional and can be used to find a specific feature in a package.

Examples:

**Dism /Image:C:\\test\\offline /Get-FeatureInfo /FeatureName:Hearts**

**Dism /Image:C:\\test\\offline /Get-FeatureInfo /FeatureName:Hearts /PackagePath:C:\\packages\\package.cab**

### <span id="_Enable-Feature__FeatureName___name_in_image___PackageName___name_in_image_____Source___source_____LimitAccess___All_"></span><span id="_enable-feature__featurename___name_in_image___packagename___name_in_image_____source___source_____limitaccess___all_"></span><span id="_ENABLE-FEATURE__FEATURENAME___NAME_IN_IMAGE___PACKAGENAME___NAME_IN_IMAGE_____SOURCE___SOURCE_____LIMITACCESS___ALL_"></span>/Enable-Feature /FeatureName:&lt; name\_in\_image&gt;\[/PackageName:&lt; name\_in\_image&gt;\] \[/Source: &lt;source&gt;\] \[/LimitAccess\]\[**/All**\]

Enables or updates the specified feature in the image. You must use the **/FeatureName** option. Feature names are case sensitive if you are servicing a Windows image other than Windows 8. Use the **/Get-Features** option to find the name of the feature in the image.

You can specify the **/FeatureName** option multiple times in one command line for features that share the same parent package.

You do not have to specify the package name using the **/PackageName** option if the package is a Windows Foundation Package. Otherwise, use **/PackageName** to specify the parent package of the feature.

You can restore and enable a feature that has previously been removed from the image. Use the **/Source** argument to specify the location of the files that are required to restore the feature. The source of the files can by the Windows folder in a mounted image, for example c:\\test\\mount\\Windows. You can also use a Windows side-by-side folder as the source of the files, for example z:\\sources\\SxS.

If you specify multiple **/Source** arguments, the files are gathered from the first location where they are found and the rest of the locations are ignored. If you do not specify a **/Source** for a feature that has been removed, the default location in the registry is used or, for online images, Windows Update (WU) is used.

Use **/LimitAccess** to prevent DISM from contacting WU for online images.

Use **/All** to enable all parent features of the specified feature.

The **/Source**, **/LimitAccess**, and **/All** arguments can be used with Windows 10, Windows 8.x, and Windows PE images above 4.0.

Examples:

**Dism /Online /Enable-Feature /FeatureName:Hearts /All**

**Dism /Online /Enable-Feature /FeatureName:Calc /Source:c:\\test\\mount\\Windows /LimitAccess**

**Dism /Image:C:\\test\\offline /Enable-Feature /FeatureName:Calc /PackageName:Microsoft.Windows.Calc.Demo~6595b6144ccf1df~x86~en~1.0.0.0**

### <span id="_Disable-Feature__FeatureName___name_in_image____PackageName___name_in_image_____Remove_"></span><span id="_disable-feature__featurename___name_in_image____packagename___name_in_image_____remove_"></span><span id="_DISABLE-FEATURE__FEATURENAME___NAME_IN_IMAGE____PACKAGENAME___NAME_IN_IMAGE_____REMOVE_"></span>/Disable-Feature /FeatureName:&lt; name\_in\_image&gt; \[/PackageName:&lt; name\_in\_image&gt;\] \[/Remove\]

Disables the specified feature in the image. You must use the **/FeatureName** option. Feature names are case sensitive if you are servicing a Windows image other than Windows 8. Use the **/Get-Features** option to find the name of the feature in the image.

You can specify **/FeatureName** multiple times in one command line for features in the same parent package.

You do not have to specify the package name using the **/PackageName** option if it the package is a Windows Foundation Package. Otherwise, use **/PackageName** to specify the parent package of the feature.

Use **/Remove** to remove a feature without removing the feature's manifest from the image. This option can only be used can be used with Windows 10, Windows 8.x, and Windows PE images above 4.0. The feature will be listed as "Removed" when you use **/Get-FeatureInfo** to display feature details and can be restored and enabled using **/Enable-Feature** with the **/Source** option.

Examples:

**Dism /Online /Disable-Feature /FeatureName:Hearts**

**Dism /Image:C:\\test\\offline /Disable-Feature /FeatureName:Calc /PackageName:Microsoft.Windows.Calc.Demo~6595b6144ccf1df~x86~en~1.0.0.0**

### <span id="_Cleanup-Image___RevertPendingActions____SPSuperseded___HideSP_____StartComponentCleanup___ResetBase_____AnalyzeComponentStore____CheckHealth____ScanHealth____RestoreHealth___Source___filepath_____LimitAccess__"></span><span id="_cleanup-image___revertpendingactions____spsuperseded___hidesp_____startcomponentcleanup___resetbase_____analyzecomponentstore____checkhealth____scanhealth____restorehealth___source___filepath_____limitaccess__"></span><span id="_CLEANUP-IMAGE___REVERTPENDINGACTIONS____SPSUPERSEDED___HIDESP_____STARTCOMPONENTCLEANUP___RESETBASE_____ANALYZECOMPONENTSTORE____CHECKHEALTH____SCANHEALTH____RESTOREHEALTH___SOURCE___FILEPATH_____LIMITACCESS__"></span>/Cleanup-Image {/RevertPendingActions | /SPSuperseded \[/HideSP\] | /StartComponentCleanup \[/ResetBase\] | /AnalyzeComponentStore | /CheckHealth | /ScanHealth | /RestoreHealth \[/Source: &lt;filepath&gt;\] \[/LimitAccess\]}

Performs cleanup or recovery operations on the image.

If you experience a boot failure, you can use the **/RevertPendingActions** option to try to recover the system. The operation reverts all pending actions from the previous servicing operations because these actions might be the cause of the boot failure. The **/RevertPendingActions** option is not supported on a running operating system or a Windows PE or Windows Recovery Environment (Windows RE) image.

**Important**   You should use the **/RevertPendingActions** option only in a system-recovery scenario on a Windows image that did not boot.

 

Use **/SPSuperseded** to remove any backup files created during the installation of a service pack. Use **/HideSP** to prevent the service pack from being listed in the **Installed Updates** Control Panel.

**Important**   The service pack cannot be uninstalled after the **/SPSuperseded** operation is completed.

 

Use **/StartComponentCleanup** to clean up the superseded components and reduce the size of the component store. Use **/ResetBase** to reset the base of superseded components, which can further reduce the component store size.

**Warning**   Installed Windows updates can’t be uninstalled after running **/StartComponentCleanup** with the **/ResetBase** option.

 

Use **/AnalyzeComponentStore** to create a report of the component store. For more information about the report and how to use the information provided in the report, see [Determine the Actual Size of the WinSxS Folder](determine-the-actual-size-of-the-winsxs-folder.md).

Use **/CheckHealth** to check whether the image has been flagged as corrupted by a failed process and whether the corruption can be repaired.

Use **/ScanHealth** to scan the image for component store corruption. This operation will take several minutes.

Use **/RestoreHealth** to scan the image for component store corruption, and then perform repair operations automatically. This operation will take several minutes.

Use **/Source** with **/RestoreHealth** to specify the location of known good versions of files that can be used for the repair, such as a path to the Windows directory of a mounted image.

If you specify multiple **/Source** arguments, the files are gathered from the first location where they are found and the rest of the locations are ignored. If you do not specify a **/Source** for a feature that has been removed, the default location in the registry is used or Windows Update (WU) is used for online images.

Use **/LimitAccess** to prevent DISM from contacting WU for repair of online images.

**/AnalyzeComponentStore** and **/ResetBase** can be used with Windows 10, Windows 8.1, and Windows PE images above 5.0.

**Tip**  
To determine when the **/ResetBase** option was last run, check the **LastResetBase\_UTC** registry entry under this registry path:

HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Component Based Servicing

 

**/StartComponentCleanup** can be used with Windows 10, Windows 8.x, and Windows PE images above 4.0.

**/CheckHealth**, **/ScanHealth**, **/RestoreHealth**, **/Source**, and **/LimitAccess** can be used with Windows 10, Windows 8.x, and Windows PE images above 4.0.

**/HideSP** and **/SPSuperseded** can’t be used when servicing a version of Windows that is earlier than Windows 7 Service Pack 1 (SP1) image.

Examples:

**Dism /Image:C:\\test\\offline /Cleanup-Image /RevertPendingActions**

**Dism /Image:C:\\test\\offline /Cleanup-Image /SPSuperseded /HideSP**

**Dism /Online /Cleanup-Image /ScanHealth**

**Dism /Online /Cleanup-Image /RestoreHealth /Source:c:\\test\\mount\\windows /LimitAccess**

To learn more, see [Repair a Windows Image](repair-a-windows-image.md).

## <span id="Limitations"></span><span id="limitations"></span><span id="LIMITATIONS"></span>Limitations


-   When you are installing a package in an offline image, the package state is “install pending” because of pending online actions. In other words, the package will be installed when the image is booted and the online actions are processed. If subsequent actions are requested, they cannot be processed until the previous pending online action is completed. You can use the **/PreventPending** option when you add a package with **/AddPackage** to skip the installation of a package when there are pending online actions.
-   Some packages require other packages to be installed first. You should not assume that dependencies will be satisfied. If there are dependency requirements, you should use an answer file to install the necessary packages. By passing an answer file to DISM, multiple packages can be installed in the correct order. This is the preferred method for installing multiple packages. For more information, see [Add or Remove Packages Offline Using DISM](add-or-remove-packages-offline-using-dism.md).
-   Packages are installed in the order that they are listed in the command line.
-   When using DISM to list the optional components in a Windows PE image, the optional components will always be listed as pending even when the servicing operation was successful. This is by design and requires no additional action from you.

## <span id="related_topics"></span>Related topics


[What is DISM?](what-is-dism.md)

[DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md)

[Deployment Image Servicing and Management (DISM) Command-Line Options](deployment_image_servicing_and_management__dism__command_line_options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20DISM%20Operating%20System%20Package%20%28.cab%20or%20.msu%29%20Servicing%20Command-Line%20Options%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




