---
author: Justinha
Description: Reduce the Size of the Component Store in an Offline Windows Image
ms.assetid: 2cdff215-30b9-4360-9e2c-cc2c3d695608
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Reduce the Size of the Component Store in an Offline Windows Image
---

# Reduce the Size of the Component Store in an Offline Windows Image


You can use the Deployment Image Servicing and Management (DISM) tool to mount a Windows image from a WIM, VHD, or VHDX file and modify it.

## <span id="Analyze_and_clean_up_the_Component_Store__WinSxS_folder__in_an_offline_Windows_image"></span><span id="analyze_and_clean_up_the_component_store__winsxs_folder__in_an_offline_windows_image"></span><span id="ANALYZE_AND_CLEAN_UP_THE_COMPONENT_STORE__WINSXS_FOLDER__IN_AN_OFFLINE_WINDOWS_IMAGE"></span>Analyze and clean up the Component Store (WinSxS folder) in an offline Windows image


To complete the walkthrough, you need the following:

-   A computer running Windows 10, Windows 8.1, Windows 8, Windows 7, Windows Server 2016 Technical Preview, Windows Server 2012 R2, Windows Server 2012, or Windows Server 2008 R2 with the Windows 8.1 version of the Windows ADK tools installed on it.

-   A .wim, .vhd, or .vhdx file of a Windows 10 or Windows Server 2016 Technical Preview image.

**Analyze the size of the Component Store in an offline Windows image**

1.  Copy a .wim file, a .vhd, or a .vhdx that contains a Windows image, to the local drive. For example, C:\\test\\images.

2.  Click **Start**, and type **deployment**. Right-click **Deployment and Imaging Tools Environment** and then select **Run as administrator**.

3.  Create a folder for your mounted image. For example, C:\\test\\offline.

4.  Run the **DISM /Get-ImageInfo** command to retrieve the name or index number for the image that you want to update. For example:

    ``` syntax
    Dism /Get-ImageInfo /ImageFile:C:\test\images\MyImage.wim
    ```

5.  Mount the Windows image. For example:

    ``` syntax
    Dism /Mount-Image /ImageFile:C:\test\images\MyImage.wim /Index:1 /MountDir:C:\test\offline
    ```

    Since WIM files can contain one or more images, you must specify an index or name value. To mount an image from a VHD, you must specify `/Index:1`.

6.  Analyze the size of the component store. For example:

    ``` syntax
    Dism /Image:C:\test\offline /Cleanup-Image /AnalyzeComponentStore
    ```

    To understand the different values provided in the display, see [Determine the Actual Size of the WinSxS Folder](determine-the-actual-size-of-the-winsxs-folder.md).

7.  If the component store cleanup was recommended in the displayed report, then you can start cleanup of the image. For example:

    ``` syntax
    Dism /Image:C:\test\offline /Cleanup-Image /StartComponentCleanup
    ```

8.  You can reduce the size of the component store further by adding the /ResetBase parameter. For example:

    ``` syntax
    Dism /Image:C:\test\offline /Cleanup-Image /StartComponentCleanup /ResetBase
    ```

9.  Commit the changes and unmounts the image in order to save the changes that you’ve made. For example:

    ``` syntax
    Dism /Unmount-Image /MountDir:C:\test\offline /Commit
    ```

## <span id="related_topics"></span>Related topics


[Manage the Component Store](manage-the-component-store.md)

[Clean Up the WinSxS Folder](clean-up-the-winsxs-folder.md)

[Determine the Actual Size of the WinSxS Folder](determine-the-actual-size-of-the-winsxs-folder.md)

[Where Did My Space Go? (blog post)](http://blogs.technet.com/b/askcore/archive/2013/03/01/where-did-my-space-go.aspx)

[NTFS Metafiles blog post](http://blogs.technet.com/b/askcore/archive/2009/12/30/ntfs-metafiles.aspx)

[How to create and manipulate NTFS junction points](http://support.microsoft.com/kb/205524)

[DISM Operating System Package Servicing Command-Line Options](dism-operating-system-package-servicing-command-line-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Reduce%20the%20Size%20of%20the%20Component%20Store%20in%20an%20Offline%20Windows%20Image%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




