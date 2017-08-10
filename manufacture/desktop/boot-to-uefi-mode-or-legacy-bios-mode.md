---
author: kpacquer
Description: Boot to UEFI Mode or legacy BIOS mode
ms.assetid: 04ad6b97-b41d-40fd-88a7-d63d4722c336
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Boot to UEFI Mode or Legacy BIOS mode
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Boot to UEFI Mode or legacy BIOS mode

Choose UEFI or legacy BIOS modes while installing Windows. After Windows is installed, you can't easily change this without reformatting the drive.

In general, [we recommend installing Windows using the newer UEFI mode](windows-and-gpt-faq.md), as it includes more security features than the legacy BIOS mode. In some situations like booting on a legacy network, you may need to boot to legacy BIOS mode.

After Windows is installed, the device boots automatically using the same mode it was installed with.

## To boot to UEFI or BIOS:

1. Open the firmware menus. You can use any of these methods: 

   *  Tablets: Boot the device, and during startup, hold a button (often **Volume down**). Search the manufacturer’s website to find which button to press. 
   *  PCs: Boot the PC. As the firmware starts to run, press the key, for example, press the Esc, F2, F9, F12, or another key. Search the manufacturer’s website to find which key to press.
   *  If Windows is already installed on the device, select **Shift+Restart > Troubleshoot > Advanced options > UEFI Firmware settings**.

2.  From the firmware menus, boot to UEFI or BIOS:

    On the boot device menu, select the command that identifies both the firmware mode and the device. For example, select **UEFI: USB Drive** or **BIOS: Network/LAN**.

    You might see separate commands for the same device. For example, you might see **UEFI USB Drive** and **BIOS USB Drive**. Each command uses the same device and media, but boots the PC in a different firmware mode.

    Some devices only support one mode (either UEFI or BIOS). Other devices will only allow you to boot to BIOS mode by manually disabling the UEFI security features. To disable the security features, go to **Security > Secure Boot** and disable the feature. 

## Detect UEFI or BIOS mode on a factory floor

Before installing Windows, check to make sure your firmware is booted to the right mode using any of these methods:

*  **Use a script to check**. Windows PE: create a script that checks which mode the device is booted in before installing. See [WinPE: Boot in UEFI or legacy BIOS mode](winpe-boot-in-uefi-or-legacy-bios-mode.md).

*  **Use preformatted drives**. Windows PE or Windows Setup: use drives that have been preformatted using the GPT file format for UEFI mode, or the MBR file format for BIOS mode. Don't include any settings to automatically format the drive. When Windows Setup runs, if the PC is booted to the wrong mode, Windows will fail to install, and you can begin troubleshooting immediately. For more info, see [Windows Setup: Installing using the MBR or GPT partition style](windows-setup-installing-using-the-mbr-or-gpt-partition-style.md).

*  **Remove the UEFI or BIOS boot files**: Windows PE or Windows Setup: remove the files that Windows PE or Windows Setup to boot in UEFI or BIOS mode. When the device is booted in the wrong mode, it will immediately fail to boot, and you can begin troubleshooting right away.

    -   **Boot only when in UEFI mode**: Remove the **bootmgr** file from the root of the Windows PE or Windows Setup media. This prevents the device from starting in BIOS mode.

    -   **Boot only when in BIOS mode**: Remove the **efi** folder from the root of the Windows PE or Windows Setup media. This prevents the device from starting in UEFI mode.

## <span id="related_topics"></span>Related topics

[WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md)

 

 






