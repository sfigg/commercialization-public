---
Description: 'Deploy Windows faster on the factory floor by using the Full Flash Update (FFU) image format.'
MS-HAID: 'p\_adk\_online.deploy\_windows\_using\_full\_flash\_update\_\_ffu\_'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Deploy Windows using Full Flash Update (FFU)'
---

# Deploy Windows using Full Flash Update (FFU)


Deploy Windows faster on the factory floor by using the Full Flash Update (FFU) image format.

With FFU images, you can apply a Windows image directly to a drive or an SD card, laying down the entire drive at once, including the partition information.

To create and apply images, you can use Windows Imaging and Configuration Designer (ICD). You can also use the Windows 10 version of DISM to apply FFU images, which is included in the Windows 10 version of Windows Preinstallation Environment (WinPE).

Once you've created an FFU image, it can't be modified or edited offline.

To use Compact OS with an FFU image, you must prepare the original FFU image as a compressed image.

FFU images are often too large to fit on a standard WinPE FAT32-formatted USB flash drive. To get around this, you can either use a separate storage drive or network location, or you can split the image into smaller .SFU files.

## <span id="Using___FFUs"></span><span id="using___ffus"></span><span id="USING___FFUS"></span>Using FFUs


**To create an FFU image**

1.  On your technician PC, open Windows ICD and create your project.
2.  Plug in a USB flash drive and note the drive letter (example: D:).
3.  Click **Create** &gt; **Production Media** &gt; **FFU** &gt; **Enable OS File Compression:** (**Yes** or **No**)&gt; name the file, for example, D:\\install.ffu &gt; **Build**.

**To deploy Windows directly to an SD card or removable drive**

1.  From Windows ICD, click **Deploy** &gt; (either **To USB connected device** or **To removable drive**) &gt; **Browse** &gt; browse to the FFU image &gt; **Next** &gt; Select the SD card or device &gt; **Next** &gt; **Flash**.
2.  If you're deploying to SD cards, then after the flashing process is finished, insert the SD card into your target device.

**To deploy Windows from WinPE**

1.  Boot your destination device to WinPE.
2.  Connect a storage drive or a network location and note the drive letter, for example, N.

    ``` syntax
    net use N: \\server\share
    ```

3.  Identify the drive to which you'll be applying the image, for example, \\\\.PhysicalDrive0.

    ``` syntax
    wmic diskdrive list brief
    ```

4.  Apply the image to a drive.

    ``` syntax
    DISM /Apply-Image /ImageFile:N:\flash.ffu /ApplyDrive:\\.PhysicalDrive0
    ```

**To use a single drive for both WinPE and an FFU image**

1.  Split the FFU image into smaller files:

    ``` syntax
    DISM.exe /Split-Image /ImageFile:flash.ffu /SFUFile:flash.sfu /FileSize:3500
    ```

2.  Copy the files to the WinPE USB key.
3.  Boot your destination device to WinPE.
4.  Identify the letter of the Windows PE drive, for example, E.

    ``` syntax
    diskpart
    list volume
    exit
    ```

5.  Identify the drive to which you'll be applying the image, for example, \\\\.PhysicalDrive0.

    ``` syntax
    wmic diskdrive list brief
    ```

6.  Apply the image to a drive.

    ``` syntax
    DISM.exe /Apply-Image /ImageFile:E:\flash.sfu /SFUFile:flash*.sfu
     /ApplyDrive:\\.\PhysicalDrive0
    ```

**To use a previous version of WinPE**

1.  Plug in a WinPE USB key and note the drive letter, for example, E.
2.  Add the Windows 10 version of DISM to the WinPE drive. To learn more, see [Copy DISM to Another Computer](copy-dism-to-another-computer.md).

    ``` syntax
    copy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM" E:\DISM_Win10 /s
    ```

3.  Boot the destination device using the Windows PE USB key.
4.  Identify the letter of the drive where the FFU is stored, for example, E.

    ``` syntax
    diskpart
    list volume
    exit
    ```

5.  Identify the drive to which you'll be applying the image, for example, \\\\.PhysicalDrive0.

    ``` syntax
    wmic diskdrive list brief
    ```

6.  Install the Windows 10 version of DISM.

    ``` syntax
    E:\DISM_Win10\WimMountAdkSetupAmd64.exe /Install /q
    ```

7.  Apply the image to a drive.

    ``` syntax
    E:\DISM_Win10\DISM.exe /Apply-Image /ImageFile:E:\flash.sfu /SFUFile:E:\flash*.sfu
     /ApplyDrive:\\.\PhysicalDrive0
    ```

## <span id="related_topics"></span>Related topics


[Windows Imaging and Configuration Designer](https://msdn.microsoft.com/library/windows/hardware/dn916113)

[FFU image format](p_phManuRetail.ffu_image_format)

[Deploy Windows using Full Flash Update (FFU)](deploy-windows-using-full-flash-update--ffu.md)

[WIM vs. VHD vs. FFU: comparing image file formats](wim-vs-ffu-image-file-formats.md)

[Planning a Multicast Strategy in Configuration Manager](http://go.microsoft.com/fwlink/?LinkId=286313)

[Capture and Apply Windows, System, and Recovery Partitions](capture-and-apply-windows-system-and-recovery-partitions.md)

[DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Deploy%20Windows%20using%20Full%20Flash%20Update%20%28FFU%29%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




