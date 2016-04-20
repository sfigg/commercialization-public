---
author: Justinha
Description: Run Audit Mode in the Factory
MS-HAID: 'p\_adk\_online.run\_audit\_mode\_in\_the\_factory'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Run Audit Mode in the Factory
---

# Run Audit Mode in the Factory


In build-to-order scenarios OEMs can boot the destination PCs to audit mode to install customer-specific apps, languages, drivers, and make additional configurations.

After final assembly of the PC you complete integrity testing to ensure the PC is configured correctly.

When ready, boot the PC with Windows PE, or another operating system that allows you to install your custom Windows image to the PC. You can boot the PC by using a USB key, or you can boot the PC from the network using PXE boot and Windows Deployment Services.

We recommend you use Windows PE and DISM to boot the PC and apply your custom Windows image.

-   [Apply Images Using DISM](apply-images-using-dism.md)

-   [WinPE for Windows 10](winpe-intro.md)

-   [Windows Deployment Services Overview](http://technet.microsoft.com/library/hh831764.aspx)

After the image is applied, you boot the PC to audit mode.

-   [Audit Mode Overview](audit-mode-overview.md)

While in audit mode, you can install customer requested software, drivers specific to the PC, and additional items. While in audit mode you can also install the latest Windows updates. The following topics go into more detail about how to install drivers, language packs, and Windows updates:

-   [Device Drivers and Deployment Overview](device-drivers-and-deployment-overview.md)

-   [Language Packs (lp.cab) and Windows Deployment](language-packs--lpcab--and-windows-deployment.md)

-   [Service a Windows Image Using DISM](service-a-windows-image-using-dism.md)

Keep in mind that the more items that you install on the factory floor increases the time it takes to assemble, install, and box the PC.

After you complete your audit mode installations, you must run sysprep /oobe to ensure that the end-user goes through the out-of-box experience and accepts the license terms. You should capture the Windows installation to the recovery partition to help users rest the PC to factory default. By doing this in the factory, you can ensure that the build-to-order customizations that customers make are in the recovery image.

You will need to boot the PC to Windows PE again to capture and apply the Windows installation to the recovery partition.

The following topic describes how to create the recovery image:

-   [Deploy Push-Button Reset Features](deploy-push-button-reset-features.md)

After the recovery image is captured, you can shut down the PC, box it, and ship it.

Depending on the volume of units you are shipping, you might want to consider pulling one or more PCs off the line to ensure the systems you build meet your quality expectations.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Run%20Audit%20Mode%20in%20the%20Factory%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



