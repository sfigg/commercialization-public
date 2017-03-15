---

title: Build a desktop device

author: themar

description: A roadmap of the tools and processes involved in manufacturing a Windows PC

---

# Build a desktop device

Windows provides several ways and opportunities customize Windows images. OEMs and IT pros have different requirements when building images, and will take different approaches when building images, but will be able to take advantage of the same opportunities for customization.

This is a basic overview that shows different ways to customize a Windows image, and then deploy that image to a PC.

-   IT pros can learn about deploying images in the enterprise at [Windows 10 deployment scenarios](https://technet.microsoft.com/en-us/itpro/windows/deploy/windows-10-deployment-scenarios).
-   OEMs ccan visit the [OEM Windows desktop deployment and imaging lab(https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/oem-windows-deployment-and-imaging-walkthrough)] for a complete end-to-end guide on how to build and deploy Windows PCs for customers.
-   System builders can visit [the system builder deployment of Windows 10 for desktop](https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/system-builder-deployment-of-windows-10-for-desktop-editions) to learn about manufacturing PCs.

## Windows imaging process flow

WinPE --> Apply Image --> Customize applied WIM --> Boot to Windows --> Audit Mode --> Install Windows desktop apps --> Sysprep --> Capture --> Apply Image --> Final customizations --> Audit Mode --> Sysprep/OOBE


## Windows 10 deployment procedure

This section is an overview of creating a Windows 10 image.

Steps in the Windows imaging workflow are flexible. Windows gives you the ability to mix and match customizations, and to apply many customizations or deploy just a few customizations depending on what you want to do.

This flowchart shows the deployment steps:

![Deployment process](images/deployment-process.png)

## Mount and Customize WinPE

You can modify WinPE to change power settings, add driverse, CAB files, and language packs before you start working on your Windows deployment.

See https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/winpe-mount-and-customize

## Install Windows from WinPE by using a script
You can start building your customized Windows deployment by booting into WinPE and using install.wim from your Windows deployment media.
https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/deploy-windows-with-a-script-sxs

## Add your customizations to Windows

Windows gives allows you several opportunities for customization. You may customize during all of the available phases, or you might just use a few. The later in the deployment that you add customizations, the more flexible and tailored to your PC your deployment will be. 

### Customize an applied image
If you need to make changes to Windows before you boot for the first time, you can use DISM in WinPE to inject drivers, add siloed provisioning packages, CABs, and copy files such as oobe.xml or unattend.xml  to a Windows image  you have applied to a PC.

https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/service-a-windows-image-using-dism

### Service your image

You can use DISM to service your Windows images. You can perform servicing tasks to a WIM file, a Windows image that has been applied, and also while booted into Windows.

See [Service a Windows image using DISM](https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/service-a-windows-image-using-dism) for information about how to service your Windows image.

#### Service an applied image
After you have applied an image you can make changes without booting into Windows. You can add files drivers, Windows updates, language packs, and other changes. This type of servicing gives flexibility to your deployment because it enables you to use a base WIM for multiple deployments, which reduces the number of WIMs that you have to maintain.

#### Service a WIM (offline servicing)
You can make changes to a WIM without needing to apply the image and then sysprep and recapture. Changes made to a WIM will become a part of the WIM. Modifying a base wim can add speed on the factory floor, but adds overhead because you'll have to maintain multiple images for your deployments.

#### Servicing tasks when booted into Windows
You can use DISM to make changes when you are booted into Windows. DISM comes installed with Windows and can be used from the Command prompt. Changes made online will remain after running sysprep and capturing an image.

### Audit Mode
In audit mode, you can make additional changes to the Windows installation before you send the computer to a customer or capture the image for reuse in your organization. For example, you can install drivers included in a driver package, install applications, or make other updates that require the Windows installation to be running. 
https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/audit-mode-overview


Important: The system must be set to generalize and OOBE in order to further service the image. In the following sections, an unattend file will be used to return to Audit mode on the OOBE-sealed system. There are known issues when resealing to Audit mode in this phase and it is not recommended.

### Preinstall Store apps

https://msdn.microsoft.com/en-us/windows/hardware/commercialize/customize/preinstall/preinstallable-apps-for-windows-10-desktop


### Add LPs / LIPs / FoDs / GDRs

https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/language-packs-and-windows-deployment

https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/features-on-demand-v2--capabilities

### Configure your PC for push-button reset
[Push-button reset](https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/push-button-reset-overview) is a recovery tool that repairs the OS while preserving data and important customizations. It reduces the need for custom recovery applications by providing users with more recovery options and the ability to fix their own PCs with confidence.

To configure push-button reset see [Deploy push-button reset features](deploy-push-button-reset-features.md), Please reference [Push-button reset](push-button-reset-overview.md), [Windows Recovery Environment (Windows RE)](windows-recovery-environment--windows-re--technical-reference.md), and [Hard Drives and Partitions](hard-drives-and-partitions.md) for more information.

## Capture your image
Now that you've installed Windows, customized your installation with DISM, and made changes in audit mode, and you can sysprep and capture your image.

https://msdn.microsoft.com/en-us/windows/hardware/commercialize/manufacture/desktop/capture-images-of-hard-disk-partitions-using-dism

#### Deploy the image

After you have combined your customizations and are ready to build a your Windows PC, you can install Windows and use an unattend.xml file to configure additional settings.

From WinPE - setup /unattend:unattend.xml





### Verify image customizations and recovery

After you have build and deployed your new image, boot the PC, go through the OOBE process, and create a user. When Windows loads the desktop, verify that your customizations and changes have taken effect and are properly working.


### Final shipment

OEMs must power on the PC at least once, and allow the specialize configuration pass of Windows Setup to complete, before shipping the PC to customers.

The specialize configuration pass adds hardware-specific information to the PC and is complete when Windows OOBE appears.

Please reference [OEM Policy Documentation](https://myoem.microsoft.com/oem/myoem/en/topics/Licensing/roylicres/ost2016/Pages/COMM-Win10-OPD-RTM-Now-Avail.aspx).

