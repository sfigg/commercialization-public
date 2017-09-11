---
author: themar
Description: 'Deploy Windows faster on the factory floor by using the Full Flash Update (FFU) image format.'
ms.assetid: af2b402f-9a5c-4c6a-8852-61039e5bec2a
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Windows Full Flash Update (FFU) images'
ms.author: themar
ms.date: 09/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Full Flash Update (FFU) images

You can deploy Windows faster on the factory floor by using the Full Flash Update (FFU) image format. FFU images allow you to apply an image for a phyisical drive, including Windows and system partition information all at once directly to a different drive or an SD card.

Unlike the file-based WIM format, FFU is a sector-based file container that stores one or more disk images. Sector-based imaging mean that FFUs take less time to deploy, but have larger files sizes than WIMs. See [WIM vs. VHD vs. FFU: comparing image file formats](wim-vs-ffu-image-file-formats.md) for information about the differences between image formats.

Starting with Windows 10, Version 1709, DISM has the ability to capture, deploy, and service FFUs.

## What you need to work with FFUs in Windows

To capture, deploy, and mount FFU images with DISM, you'll need to work in a Windows 10, Version 1709 or later, or WinPE for Windows 10, Version 1709 or later environment. You can also [use the latest version of DISM in a previous version of Windows 10 or WinPE](copy-dism-to-another-computer.md).

To capture and deploy FFUs using the instructions below, you'll also need: 

- A Windows PC that is ready to have an image captured from it. We'll refer to this as the reference PC. For a walkthrough on how to create an image that's ready for deployment, see the [Windows OEM deployment lab]().
- The latest version of the ADK, from [Download the Windows ADK](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit)
- Bootable WinPE media for Windows 10, Version 1709 or later. See [WinPE: Create USB bootable drive](winpe-create-usb-bootable-drive.md) for instructions on how to create WinPE Media.
- USB or network storage, formatted as NTFS with enough space to save the FFU. 16 GB is enough space to store an FFU of a basic Windows image. You can use the same USB drive for WinPE and storage if you follow the [instructions for creating a multipartiton USB drive](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive#prepare-a-usb-drive).

## Capture an FFU

1. Boot the reference PC using bootable WinPE media.

2. Identify the drive to which you'll be capturing the image from. You can use diskpart, or [add Windows PowerShell support to WinPE](winpe-adding-powershell-support-to-windows-pe.md) and use [Get-Disk](https://technet.microsoft.com/itpro/powershell/windows/storage/get-disk) for scriptability and more complex setups such as a server with multiple disks. 

    ```
    diskpart 
    list disk
    exit
    ```

    The output will list your drives. Make a note of the disk number in the `Disk ###` column. This is the value that you'll use when capturing your image.

    ```
    DISKPART> list disk

    Disk ###  Status         Size     Free     Dyn  Gpt
    --------  -------------  -------  -------  ---  ---
    Disk 0    Online          238 GB      0 B        *
    Disk 1    Online           28 GB      0 B

    DISKPART>
    ```

3. Use DISM to capture an image of all the partitions on the physical drive. For a physical drive *X:*, the string used with `/apply-drive` will look like this: `\\.\PhysicalDrive*X*`, where *X* is the disk number that diskpart provides, such as `/ApplyDrive:\\.\PhysicalDrive0`.
    For more information about PhysicalDrive*X*, see [CreateFile function](https://msdn.microsoft.com/library/windows/desktop/aa363858.aspx). 
    
    To see command line options for capturing FFUs, run `dism /capture-ffu /?` or see [DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md).

    This command captures an FFU image of PhysicalDrive0 called WinOEM.ffu:

    ```
    DISM.exe /capture-ffu /imagefile=e:\WinOEM.ffu /capturedrive=\\.\PhysicalDrive0 /name=disk0
    ```

### Deploy Windows from WinPE using an FFU

1.  Boot your destination device to WinPE.

2.  Connect a storage drive or map the network location that has your FFU file and note the drive letter, for example, N.

3.  Identify the drive to which you'll be applying the image:

    ```
    diskpart 
    list disk
    exit
    ```
    Note the drive number in the `Disk ###` column.

4. Run diskpart to clean the reference PC’s drive.  

    ```    
    Diskpart
    list disk
    select disk 0 (where 0 is the destination hard drive)
    clean
    exit
    ```

4.  Apply the image to a drive. Here, we're applying n:\WinOEM.ffu to Disk 0.
    
    ```
    DISM /apply-ffu /ImageFile=N:\WinOEM.ffu /ApplyDrive:\\.\PhysicalDrive0
    ```

    To see the commands available with /apply-ffu, run `dism /apply-ffu /?` or see [DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md).

### Mount an FFU for servicing

You can use DISM to mount and FFU images for servicing. Like with other image fomats, you can mount and modify an FFU before commiting changes and unmounting. Mounting an FFU for servicing uses the same `/mount-image` command that you use for mounting other image types. When mounting an FFU, you'll always use `index:1` when mounting.

Unlike other mounted image formats, FFU images get mounted as virtual hard disks. Files appear in the specified mount folder, but since FFUs can contain more than one image but only have one index, DISM maps only the Windows partition from the mounted FFU to the mount folder.

To mount an FFU

1. Open a Command Prompt as administartor.

2. Mount the image using `dism /mount-image`. This example mounts D:\WinOEM.ffu to C:\ffumount:

```
dism /mount-image /imagefile:"D:\WinOEM.ffu" /mountdir:"C:\ffumount" /index:1
```

To see available command line options for `/mount-image` run `dism /mount-image /?` or see [DISM image management command line options](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#mount-image).

3. Service your image. For example, to enable the legacy components feature:

    ```
    dism /image:"C:\ffumount" /enable-feature:legacycomponents
    ```

    To see available options, run `dism /image:<path to mounted image> /?` or 

4. Unmount your FFU image and commit changes. The changes will be saved to your FFU file.

    ```
    dism /unmount-image /mountdir:"C:\ffumount" /commit
    ```

## <span id="related_topics"></span>Related topics

[Download and install the Windows ADK](https://msdn.microsoft.com/windows/hardware/commercialize/adk-install)

[Windows Imaging and Configuration Designer](https://msdn.microsoft.com/library/windows/hardware/dn916113)

[FFU image format](../mobile/ffu-image-format.md)

[WIM vs. VHD vs. FFU: comparing image file formats](wim-vs-ffu-image-file-formats.md)

[Planning a Multicast Strategy in Configuration Manager](http://go.microsoft.com/fwlink/?LinkId=286313)

[Capture and Apply Windows, System, and Recovery Partitions](capture-and-apply-windows-system-and-recovery-partitions.md)

[DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md)

[CreateFile function](https://msdn.microsoft.com/library/windows/desktop/aa363858.aspx)