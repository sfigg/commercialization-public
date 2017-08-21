---
title: Secure boot, Trusted boot, and Measured boot
description: Provides guidance on what an OEM should do to enable Securely booting a device
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 08/30/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Secure boot, Trusted boot, and Measured boot
Secure boot is a security standard developed by members of the PC industry to help make sure that your PC boots using only software that is trusted by the PC manufacturer. When the PC starts, the firmware checks the signature of each piece of boot software, including firmware drivers (Option ROMs), EFI applications, and the operating system. If the signatures are good, the PC boots, and the firmware gives control to the operating system.

You as the OEM use instructions from the firmware manufacturer to create Secure boot keys and to store them in the PC firmware. When you add UEFI drivers (also known as Option ROMs), you'll also need to make sure these are signed and included in the Secure Boot database. When you add UEFI drivers (also known as Option ROMs), you'll also need to make sure these are signed and included in the Secure Boot database. For info, see the _UEFI Validation Option ROM Validation Guidance

## Secure boot hardware requirements
The firmware requirements for Secure boot are listed here.
- UEFI 2.3.1 Errata C or higher.
- The platform exposes an interface that adheres to the profile of UEFI v2.3.1 Section 27.
- The platform must come provisioned with the correct keys in the UEFI Signature database (db) to allow Windows to boot. It must also support secure authenticated updates to the db and dbx per the spec.
Storage of secure variables must be isolated from the running operating system such that they cannot be modified without detection.
- All firmware components are signed using at least RSA-2048 with SHA-256.
When power is turned on, the system starts executing code in the firmware and uses public key cryptography as per algorithm policy to verify the signatures of all images in the boot sequence, up to and including the Windows Boot Manager.
- The system must protect against rollback of firmware to older versions.
The platform provides the EFI_HASH_PROTOCOL (per UEFI v2.3.1) for offloading cryptographic hash operations and the EFI_RNG_PROTOCOL (Microsoft defined) for accessing platform entropy.

## Trusted boot
Trusted boot takes over where Secure boot leaves off. The bootloader verifies the digital signature of the Windows 10 kernel before loading it. The Windows 10 kernel, in turn, verifies every other component of the Windows startup process, including the boot drivers, startup files, and ELAM. If a file has been modified, the bootloader detects the problem and refuses to load the corrupted component. Often, Windows 10 can automatically repair the corrupted component, restoring the integrity of Windows and allowing the PC to start normally.


## Early Launch Anti-Malware (ELAM)
Because Secure Boot has protected the bootloader and Trusted Boot has protected the Windows kernel, the next opportunity for malware to start is by infecting a non-Microsoft boot driver. Traditional anti-malware apps don’t start until after the boot drivers have been loaded, giving a rootkit disguised as a driver the opportunity to work. Early Launch Anti-Malware (ELAM) can load a Microsoft or non-Microsoft anti-malware driver before all non-Microsoft boot drivers and applications, thus continuing the chain of trust established by Secure Boot and Trusted Boot. Because the operating system hasn’t started yet, and because Windows needs to boot as quickly as possible, ELAM has a simple task: examine every boot driver and determine whether it is on the list of trusted drivers. If it’s not trusted, Windows won’t load it.

## Measured boot
If a PC in your organization does become infected with a rootkit, you need to know about it. Enterprise anti-malware apps can report malware infections to the IT department, but that doesn’t work with rootkits that hide their presence. In other words, you can’t trust the client to tell you whether it’s healthy. 

As a result, PCs infected with rootkits appear to be healthy, even with anti-malware running. Infected PCs continue to connect to the enterprise network, giving the rootkit access to vast amounts of confidential data and potentially allowing the rootkit to spread across the internal network.
Working with the TPM and non-Microsoft software, Measured Boot in Windows 10 allows a trusted server on the network to verify the integrity of the Windows startup process. 

Measured Boot uses the following process:
1. The PC’s UEFI firmware stores in the TPM a hash of the firmware, bootloader, boot drivers, and everything that will be loaded before the anti-malware app.
2. At the end of the startup process, Windows starts the non-Microsoft remote attestation client. The trusted attestation server sends the client a unique key.
3. The TPM uses the unique key to digitally sign the log recorded by the UEFI.
4. The client sends the log to the server, possibly with other security information.
5. Depending on the implementation and configuration, the server can now determine whether the client is healthy and grant the client access to either a limited quarantine network or to the full network.


## Signature Databases and Keys
Before the PC is deployed, the OEM stores the Secure Boot databases onto the PC. This includes the signature database (db), revoked signatures database (dbx), and Key Enrollment Key database (KEK) onto the PC. These databases are stored on the firmware nonvolatile RAM (NV-RAM) at manufacturing time.

The signature database (db) and the revoked signatures database (dbx) list the signers or image hashes of UEFI applications, operating system loaders (such as the Microsoft Operating System Loader, or Boot Manager), and UEFI drivers that can be loaded on the individual PC, and the revoked images for items that are no longer trusted and may not be loaded.

The Key Enrollment Key database (KEK) is a separate database of signing keys that can be used to update the signature database and revoked signatures database. Microsoft requires a specified key to be included in the KEK database so that in the future Microsoft can add new operating systems to the signature database or add known bad images to the revoked signatures database.

After these databases have been added, and after final firmware validation and testing, the OEM locks the firmware from editing, except for updates that are signed with the correct key or updates by a physically present user who is using firmware menus, and then generates a platform key (PK). The PK can be used to sign updates to the KEK or to turn off Secure Boot.

You should contact your firmware manufacturer for tools and assistance in creating these databases. 

## Boot sequence
1. After the PC is turned on, the signature databases are each checked against the platform key.
2. If the firmware is not trusted, the UEFI firmware must initiate OEM-specific recovery to restore trusted firmware.
3. If there is a problem with Windows Boot Manager, the firmware will attempt to boot a backup copy of Windows Boot Manager. If this also fails, the firmware must initiate OEM-specific remediation.
4. After Windows Boot Manager has started running, if there is a problem with the drivers or NTOS kernel, Windows Recovery Environment (Windows RE) is loaded so that these drivers or the kernel image can be recovered.
5. Windows loads antimalware software.
6. Windows loads other kernel drivers and initializes the user mode processes.


## Related Topics

- [Secure the Windows 10 boot process](https://docs.microsoft.com/en-us/windows/threat-protection/secure-the-windows-10-boot-process)