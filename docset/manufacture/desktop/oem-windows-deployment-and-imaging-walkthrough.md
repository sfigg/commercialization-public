---
author: Justinha
Description: OEM Windows Desktop Deployment and Imaging Lab
MS-HAID: 'p\_sxs\_dmfg.oem\_windows\_deployment\_and\_imaging\_walkthrough'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: OEM Windows Desktop Deployment and Imaging Lab
---

# OEM Windows Desktop Deployment and Imaging Lab


Getting ready to build and test Windows 10 for desktop editions? Here's a lab that walks through building new devices and customizing them for specific markets to meet your customers' needs.

We’ve developed new tools and strategies to help you create custom images faster. With provisioning packages, you can now capture and apply bundles of Classic Windows applications. You can avoid some of the time-consuming steps involved in generalizing and recapturing images, and mix and match your customizations as new Windows editions are released, either through automated scripts or through a familiar Windows interface.

This lab is organized around these three hardware configurations:

|                              |              |                     |                                   |
|------------------------------|--------------|---------------------|-----------------------------------|
| Hardware Configuration:      | 1            | 1B                  | 2                                 |
| Form factor                  | Small tablet | 2-in-1              | Notebook                          |
| RAM                          | 1 GB         | 2 GB                | 4 GB                              |
| Disk capacity and type       | 16 GB eMMC   | 32 GB eMMC          | 500 GB HDD                        |
| Display size                 | 8”           | 10”                 | 14”                               |
| Windows SKU                  | Core         | Pro                 | Core                              |
| Language(s)                  | EN-US        | EN-US, FR-FR, ES-ES | EN-GB, DE-DE, FR-FR, ES-ES, ZH-CN |
| Cortana                      | Yes          | Yes                 | Yes                               |
| Inbox apps (Universal)       | Yes          | Yes                 | Yes                               |
| Pen                          | No           | Yes                 | No                                |
| Office (Universal)           | Yes          | Yes                 | Yes                               |
| Classic Windows applications | No           | Yes                 | Yes                               |
| Office 2013                  | No           | Yes                 | Yes                               |
| Compact OS                   | Yes          | Yes                 | No                                |

 

For each of them, we will create customized Windows images using the following methods:

-   [Customize and install Windows using the Windows Imaging and Configuration Designer (ICD)](install-windows-automatically-from-a-usb-drive-sxs.md)

    Use Windows Imaging and Configuration Designer (ICD) to customize a Windows image, save it to a USB drive, and use it to deploy to a PC or tablet. If you're new to Windows imaging and deployment, start here.

-   [Classic-style imaging and deployment using command line tools](part-2--classic-style-deployment.md)

    Use command line tools and offline servicing to customize and deploy your Windows image. This part is for partners who have been using our deployment tools and want to get an overview on what has changed in this release and who want to set up advanced configurations like custom drive partition layouts that aren't otherwise supported in Windows ICD.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_dmfg\p_sxs_dmfg%5D:%20OEM%20Windows%20Desktop%20Deployment%20and%20Imaging%20Lab%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



