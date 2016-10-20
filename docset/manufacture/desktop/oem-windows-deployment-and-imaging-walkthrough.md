---
author: KPacquer
Description: OEM Windows Desktop Deployment and Imaging Lab
ms.assetid: 04dace4d-9df9-4ead-b23d-f168832c9c04
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: OEM Windows Desktop Deployment and Imaging Lab
---

# OEM Windows Desktop Deployment and Imaging Lab

Getting ready to build and test Windows 10 desktop PCs? This lab provides strategies for creating base images and updating them with command-line tools. The commands can be scripted, helping you quickly customize new images for specific markets to meet your customers' needs.

New in this lab: 

* With siloed provisioning packages, you can now capture and apply Windows desktop applications during deployment, one at a time. This avoids some of the time-consuming steps involved in generalizing and recapturing images.

Let's get started!

**Preparation**

*  [Planning: Customizing reference images for different audiences](planning-create-different-product-designs-for-different-market-segments-sxs.md)

**Deploy images**

*  [Get the tools needed to customize Windows](get-the-tools-needed-to-customize-windows-sxs.md)
*  [Get the sample scripts](windows-deployment-sample-scripts-sxs.md)
*  [Lab 1a: Install Windows PE](install-windows-pe-sxs.md)
*  [Lab 1b: Deploy Windows using a script](deploy-windows-with-a-script-sxs.md)

**Customize the Window image**

In these labs, you'll modify the Windows image (install.wim). While you can perform most of these tasks in any order, a few have dependencies:
*    **Add updates before languages.** These include hotfixes, general distribution releases, or service packs. If you add an update later, you'll need to re-add the language.
*    **Add languages before apps**. This includes universal Windows apps and desktop applications. If you add a language later, you'll need to re-add the apps.

To make the changes, you'll mount the image contents into a temporary folder, and use tools like DISM to make the changes. Unmount the images and redeploy.
   ![image: Mounting an image, making changes, and unmounting the image](images/dep-win8-sxs-createmodelspecificfiles.jpg)

*  [Lab 1c: Add device drivers (.inf-style)](add-device-drivers.md) (includes basics on mounting images)
*  [Lab 1d: Add updates and upgrade the edition](servicing-the-image-with-windows-updates-sxs.md)
*  [Lab 1e: Add languages](add-drivers-langs-universal-apps-sxs.md)
*  [Lab 1f: Add universal Windows apps, start tiles, and taskbar pins](add-universal-apps.md)
*  [Lab 1g: Change settings, enter product keys, and run scripts with an answer file (unattend.xml)](update-windows-settings-and-scripts-create-your-own-answer-file-sxs.md)
*  [Lab 1h: Make changes from Windows (audit mode)](prepare-a-snapshot-of-the-pc-generalize-and-capture-windows-images-blue-sxs.md)

**Customize the recovery image**

*  [Lab 1i: Update the recovery image](update-the-recovery-image.md)

**Deploy final images**

*  [Lab 1j: Add desktop applications and .exe-style drivers with siloed provisioning packages (SPPs)](add-desktop-apps-wth-spps-sxs.md)

