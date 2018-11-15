---
author: kpacquer
Description: Prepare recovery tools for your Windows images
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Prepare recovery tools for your Windows images
ms.author: kenpacq
ms.date: 11/16/2018
ms.topic: article

---

# Prepare recovery tools for your Windows images

When you’re creating Windows 10 and Windows Server images, update the recovery tools.

## [Windows Recovery Environment (Windows RE)](windows-recovery-environment--windows-re--technical-reference.md)
Both Windows 10 and Windows Server include a separate, small OS in a separate disk partition that your device can boot to when you need to recover your main OS. 

**What do I need to update?**
* If you add **boot-critical drivers** or **languages** to your Windows image, [add those same drivers and languages (when available) to Windows RE](customize-windows-re.md).

**More options:**

* [Deploy Windows RE](deploy-windows-re.md): includes best practices, such as hiding the recovery drive letters.
* [Add a dedicated hardware button to boot immediately to WinRE](add-a-hardware-recovery-button-to-start-windows-re.md)
* [Add a custom tool to the Windows RE boot options menu](add-a-custom-tool-to-the-windows-re-boot-options-menu.md)


## [Push-button reset](push-button-reset-overview.md)
Windows 10 helps users refresh their device, keeping data intact, or restored to factory settings for a new user. 

**What do I need to update?**

* **Windows desktop apps**, **drivers**, and **settings** are automatically refreshed when installed as siloed provisioning packages (SPPs). If you install them using another method (for example, in audit mode or from a script), capture them into an SPP so they can be refreshed.
* **Out of Box Experience customizations**, the **Start Menu**, and **Unattend.xml settings**: 
  - In Windows 10, version 1809, you can save a copy of these into [Auto-apply folders](deploy-pbr-features-using-auto-apply.md).
  - In earlier versions, use extensibility scripts instead to restore these files.
* **Drive partitions**: If your device uses a non-standard drive partition layout (for example, a separate data or tools partition), [update the on-board Bare Metal Reset configuration files so that users can create their own recovery media](bare-metal-resetrecovery-enable-your-users-to-create-media-and-to-recover-hard-drive-space.md). 

Universal Windows apps and Universal Windows drivers included in your images are automatically restored. 


To learn more, see [Recovery strategy for common customizations](recovery-strategy-for-common-customizations.md)

**More options:**

* Use [Compact OS, single-sourcing, and image optimization](compact-os.md) to save space on the disk.

* [Bare metal reset/recovery: create recovery media while deploying new devices](create-media-to-run-push-button-reset-features-s14.md), ship recovery USB keys either with your devices, or separately as a support option, so users can restore the device even when the entire hard drive is replaced.

* [Add a custom script using extensibility points](add-a-script-to-push-button-reset-features.md) to install apps or preserve data during a recovery.

**Reference**
* [Deploy push-button reset features](deploy-push-button-reset-features.md): includes best practices, including 
* [How push-button reset features work](how-push-button-reset-features-work.md)
* [Push-button reset frequently-asked questions (FAQ)](pbr-faq.md)
