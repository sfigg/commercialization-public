---
author: Justinha
Description: 'WinPE: Create a Boot CD, DVD, ISO, or VHD'
MS-HAID: 'p\_adk\_online.winpe\_create\_a\_boot\_cd\_dvd\_iso\_or\_vhd'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'WinPE: Create a Boot CD, DVD, ISO, or VHD'
---

# WinPE: Create a Boot CD, DVD, ISO, or VHD


Create a Windows PE (WinPE) bootable DVD, CD, ISO file, or virtual hard drive (VHD).

The default installation runs from memory (also known as a RAM disk), which allows you to remove the USB drive while Windows PE is running.

**Install the Windows ADK**

-   Install the following features from the [Windows Assessment and Deployment Kit (ADK)](http://go.microsoft.com/fwlink/p/?LinkID=526803):

    -   **Deployment Tools**: includes the **Deployment and Imaging Tools Environment**.

    -   **Windows Preinstallation Environment** : includes the files used to install Windows PE.

**Install Windows PE to a DVD, a CD, or an ISO file**

1.  Click **Start**, and type **deployment**. Right-click **Deployment and Imaging Tools Environment** and then select **Run as administrator**.

2.  Create a working copy of the Windows PE files. Specify either x86 or amd64:

    ``` syntax
    copype amd64 C:\WinPE_amd64
    ```

3.  Create an ISO file containing the Windows PE files:

    ``` syntax
    MakeWinPEMedia /ISO C:\WinPE_amd64 C:\WinPE_amd64\WinPE_amd64.iso
    ```

4.  To burn a DVD or CD: In Windows Explorer, right-click the ISO file, and select **Burn disc image** &gt; **Burn**, and follow the prompts.

## <span id="Using_Hyper-V"></span><span id="using_hyper-v"></span><span id="USING_HYPER-V"></span>Using Hyper-V


When running Windows PE in Hyper-V, consider using an ISO file format instead of a VHD, to enable quick setup of the virtual PC. For more information, see the previous section.

**To install Windows PE to a VHD**

1.  Create a virtual hard drive (.vhd or .vhdx):

    ``` syntax
    diskpart
    create vdisk file="C:\WinPE.vhdx" maximum=1000
    attach vdisk
    create partition primary
    assign letter=V
    format fs=ntfs quick
    exit
    ```

2.  Prepare the drive by using MakeWinPEMedia:

    ``` syntax
    MakeWinPEMedia /UFD C:\WinPE_amd64 V:
    ```

3.  Detach the drive:

    ``` syntax
    diskpart
    select vdisk file="C:\WinPE.vhdx"
    detach vdisk
    exit
    ```

**Troubleshooting**

1.  If Windows PE doesn't appear, try the following workarounds, rebooting the PC each time:

    -   To boot a PC that supports UEFI mode: In the firmware boot menus, try manually selecting the boot files: \\EFI\\BOOT\\BOOTX64.EFI.

    -   If your PC requires storage or video drivers to boot, try adding those same drivers to the Windows PE image. For more information, see [WinPE: Mount and Customize](winpe-mount-and-customize.md).

2.  If the PC doesn't connect to network locations, see [WinPE Network Drivers: Initializing and adding drivers](winpe-network-drivers-initializing-and-adding-drivers.md).

## <span id="related_topics"></span>Related topics


[WinPE for Windows 10](winpe-intro.md)

[WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md)

[WinPE: Install on a Hard Drive (Flat Boot or Non-RAM)](winpe-install-on-a-hard-drive--flat-boot-or-non-ram.md)

[WinPE: Mount and Customize](winpe-mount-and-customize.md)

[WinPE: Boot in UEFI or legacy BIOS mode](winpe-boot-in-uefi-or-legacy-bios-mode.md)

[Windows Setup Supported Platforms and Cross-Platform Deployments](windows-setup-supported-platforms-and-cross-platform-deployments.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20WinPE:%20Create%20a%20Boot%20CD,%20DVD,%20ISO,%20or%20VHD%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




