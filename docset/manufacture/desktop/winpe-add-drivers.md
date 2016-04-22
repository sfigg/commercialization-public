---
author: Justinha
Description: 'WinPE: Add drivers'
ms.assetid: 9eecfba3-2a0d-4c38-8cec-6d5e839ae8d4
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'WinPE: Add drivers'
---

# WinPE: Add drivers


Add drivers to Windows PE, such as graphics drivers or network drivers.

Device drivers typically include a folder that contains multiple files. These folders include a file that has the `.inf` file name extension. This file manages the other files in the device driver package. Many boot-critical drivers can be used in both the Windows image and in Windows PE.

You can also update device drivers while you're running Windows PE. For more information, see [Drvload Command-Line Options](drvload-command-line-options.md).

**Get the Windows Assessment and Deployment Kit with Windows PE tools**

-   Install the [Windows Assessment and Deployment Kit (Windows ADK) Technical Reference](http://go.microsoft.com/fwlink/p/?LinkId=526803), including the Windows PE feature.

**Create a set of either 32-bit or 64-bit Windows PE files**

1.  Click **Start**, and type **deployment**. Right-click **Deployment and Imaging Tools Environment** and then select **Run as administrator**.

2.  In the **Deployment Tools and Imaging Environment**, copy the Windows PE files for the PCs you want to boot.

    -   The 64-bit version can boot 64-bit UEFI and 64-bit BIOS PCs.

        ``` syntax
        copype amd64 C:\WinPE_amd64
        ```

    -   The 32-bit version can boot 32-bit UEFI, 32-bit BIOS, and 64-bit BIOS PCs.

        ``` syntax
        copype x86 C:\WinPE_x86
        ```

**Mount the Windows PE boot image**

-   Mount the Windows PE image.

    ``` syntax
    Dism /Mount-Image /ImageFile:"C:\WinPE_amd64\media\sources\boot.wim" /index:1 /MountDir:"C:\WinPE_amd64\mount"
    ```

## <span id="Add_customizations"></span><span id="add_customizations"></span><span id="ADD_CUSTOMIZATIONS"></span>Add customizations


**Add device drivers (.inf files)**

1.  Add the device driver to the Windows PE image.

    ``` syntax
    Dism /Add-Driver /Image:"C:\WinPE_amd64\mount" /Driver:"C:\SampleDriver\driver.inf"
    ```

    **Note**  
    Although you can add multiple drivers to an image by using one command, it is often easier to troubleshoot problems by adding each driver package individually.

     

2.  Verify that the driver packages are part of the image:

    ``` syntax
    Dism /Get-Drivers /Image:"C:\WinPE_amd64\mount"
    ```

    Review the resulting list of drivers and verify that the list contains the driver package that you added.

**Video drivers: Change the display resolution**

-   For most graphics drivers, WinPE picks the maximum native resolution automatically.

    To manually adjust the size, use an answer file and include settings for Microsoft-Windows-Setup/[Display](https://msdn.microsoft.com/library/windows/hardware/dn915285). To learn more, see [Wpeinit and Startnet.cmd: Using WinPE Startup Scripts](wpeinit-and-startnetcmd-using-winpe-startup-scripts.md).

**Unmount the Windows PE image and create media**

1.  Unmount the Windows PE image.

    ``` syntax
    Dism /Unmount-Image /MountDir:"C:\WinPE_amd64\mount" /commit
    ```

2.  Create bootable media, such as a USB flash drive.

    ``` syntax
    MakeWinPEMedia /UFD C:\WinPE_amd64 F:
    ```

3.  Boot the media. Windows PE starts automatically. After the Windows PE window appears, the wpeinit command runs automatically. This may take a few minutes. Verify your customizations.

**Troubleshooting**

1.  Windows PE won’t boot? See the troubleshooting tips at the end of the topic: [Install Windows PE](http://go.microsoft.com/fwlink/?LinkId=526830).

2.  For tips on connecting to a network, see [WinPE Network Drivers: Initializing and adding drivers](winpe-network-drivers-initializing-and-adding-drivers.md).

## <span id="related_topics"></span>Related topics


[WinPE for Windows 10](winpe-intro.md)

[Install Windows PE](http://go.microsoft.com/fwlink/?LinkId=526830)

[WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md)

[WinPE: Create a Boot CD, DVD, ISO, or VHD](winpe-create-a-boot-cd-dvd-iso-or-vhd.md)

[WinPE: Install on a Hard Drive (Flat Boot or Non-RAM)](winpe-install-on-a-hard-drive--flat-boot-or-non-ram.md)

[WinPE: Boot in UEFI or legacy BIOS mode](winpe-boot-in-uefi-or-legacy-bios-mode.md)

[WinPE: Add packages (Optional Components Reference)](winpe-add-packages--optional-components-reference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20WinPE:%20Add%20drivers%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




