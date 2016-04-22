---
author: Justinha
Description: Install Windows 10 using a previous version of Windows PE
ms.assetid: 8abda3c5-0689-4a61-ae3e-7fa51c7e2028
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Install Windows 10 using a previous version of Windows PE
---

# Install Windows 10 using a previous version of Windows PE


To install some features of Windows 10, such as Compact OS, you'll need the Windows 10 version of DISM.

You can include the latest version DISM in your Windows Preinstallation Environment (WinPE) image, or run it from a separate location, such as on a removable drive. If you include it with WinPE, it will add roughly 4MB to the size of your DISM image.

You'll need to install and configure the drivers needed for DISM, including the wimmount.sys and wofadk.sys drivers, each time you boot WinPE.

**To add DISM into your Windows PE image**

1.  On your technician PC, install the Windows ADK for Windows 10.
2.  Mount WinPE. For WinPE 3.x, mount the file: \\sources\\winpe.wim. For WinPE 4.x and 5.x, mount the file: \\sources\\boot.wim.

    ``` syntax
    md "C:\WinPE_amd64\mount"

    Dism /Mount-Image /ImageFile:"C:\WinPE_amd64\media\sources\boot.wim" /index:1 /MountDir:"C:\WinPE_amd64\mount"
    ```

3.  Copy the DISM folder from the Windows ADK into a new folder in the mounted WinPE image.

    ``` syntax
    md C:\WinPE_amd64\mount\DISM

    robocopy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM" C:\WinPE_amd64\mount\DISM
    ```

    **Important**   Don't overwrite the existing DISM files from the **system32** folder in the WinPE image. Instead, create a new folder on the host computer to copy the Windows ADK files into.

     

4.  Unmount WinPE.

    ``` syntax
    Dism /Unmount-Image /MountDir:"C:\WinPE_amd64\mount" /commit
    ```

5.  Create WinPE bootable media, or replace the WinPE image file on your existing removable media.

    ``` syntax
    MakeWinPEMedia /UFD C:\WinPE_amd64 F:
    ```

**Install and use DISM from WinPE**

1.  Boot your destination device to WinPE.
2.  Install and configure DISM's required drivers by using either **WimMountAdkSetupAmd64.exe /Install** or **WimMountAdkSetupX86.exe /Install**.

    ``` syntax
    X:\DISM\WimMountAdkSetupAmd64.exe /Install /q
    ```

    For the default (RAMDisk) version of WinPE, you'll need to run this command each time you boot WinPE. To learn how to run this command automatically when WinPE boots, see [Wpeinit and Startnet.cmd: Using WinPE Startup Scripts](wpeinit-and-startnetcmd-using-winpe-startup-scripts.md).

3.  Verify that the Windows 10 version of DISM is installed.

    ``` syntax
    X:\DISM\Dism.exe /?
    ```

    The output shows the build number, for example:

    ``` syntax
    Deployment Image Servicing and Management tool
    Version: 10.0.10122.0
    ```

4.  Run DISM commands from the new folder.

    ``` syntax
    X:\DISM\Dism.exe /Apply-Image /ImageFile:install.wim /Index:1 /ApplyDir:W: /Compact
    ```

## <span id="related_topics"></span>Related topics


[DISM Supported Platforms](dism-supported-platforms.md)

[WinPE: Mount and Customize](winpe-mount-and-customize.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Install%20Windows%2010%20using%20a%20previous%20version%20of%20Windows%20PE%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




