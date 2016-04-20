---
author: Justinha
Description: Repair a Windows Image
MS-HAID: 'p\_adk\_online.repair\_a\_windows\_image'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Repair a Windows Image
---

# Repair a Windows Image


Repair a Windows image using DISM. You can repair offline Windows image in a WIM or VHD file, or an online Windows image. An online Windows image will also attempt to repair itself if it becomes unserviceable. The repair source for this operation is the same source that is used for Features on Demand and is determined by Group Policy settings. For more information, see [Configure a Windows Repair Source](configure-a-windows-repair-source.md). When you use the DISM tool to repair an online or offline image, you can use the */Source* argument with the */RestoreHealth* argument to specify additional repair source locations to use to search for the required files.

For a quick check of an online image, you may be able to use the command: `sfc /scannow` to scan and repair files.

For a more extensive check that can repair issues with the store, use `DISM /Cleanup-Image`.

**To check if an image is repairable**

1.  Scan the image to check for corruption. This operation will take several minutes. For example, at a command prompt, type the following command:

    ``` syntax
    Dism /Online /Cleanup-Image /ScanHealth
    ```

2.  Check the image to see whether any corruption has been detected. For example, at a command prompt, type:

    ``` syntax
    Dism /Online /Cleanup-Image /CheckHealth
    ```

When you use the */CheckHealth* sfc argument, the DISM tool will report whether the image is healthy, repairable, or non-repairable. If the image is non-repairable, you should discard the image and start again. If the image is repairable, you can use the */RestoreHealth* argument to repair the image.

**To repair an image**

-   Use the */RestoreHealth* argument to repair the image. For example, to repair an offline image using a mounted image as a repair source, at a command prompt, type the following command:

    ``` syntax
    Dism /Image:C:\offline /Cleanup-Image /RestoreHealth /Source:c:\test\mount\windows
    ```

    Or to repair an online image using some of your own sources instead of Windows Update, type:

    ``` syntax
    Dism /Online /Cleanup-Image /RestoreHealth /Source:c:\test\mount\windows /LimitAccess
    ```

    If you do not specify a */Source* for the repair files, the default location for Features on Demand is used. For more information, see [Configure a Windows Repair Source](configure-a-windows-repair-source.md). If you specify more than one */Source*, the files are copied from the first location where they are found and the rest of the locations are ignored. You can use */LimitAccess* to prevent the DISM tool from using Windows Update as a repair source or as a backup repair source for online images.

## <span id="Repairing_images_during_servicing"></span><span id="repairing_images_during_servicing"></span><span id="REPAIRING_IMAGES_DURING_SERVICING"></span>Repairing images during servicing


In some cases, an image can be corrupted while modifying it with DISM. Use */Cleanup-MountPoints* to repair it. This command will not unmount images that are already mounted, nor will it delete images that can be recovered using the /Remount-Image command.

``` syntax
Dism /Cleanup-Mountpoints
```

## <span id="related_topics"></span>Related topics


[Use the System File Checker tool to repair missing or corrupted system files](http://go.microsoft.com/fwlink/p/?LinkId=717888)

[DISM Operating System Package Servicing Command-Line Options](dism-operating-system-package-servicing-command-line-options.md)

[Configure a Windows Repair Source](configure-a-windows-repair-source.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Repair%20a%20Windows%20Image%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




