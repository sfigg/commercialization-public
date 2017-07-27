---
title: Hardware-based protection considerations for OEMs
description: Provides guidance on what an OEM should do to enable Hardware-based protections
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

#Hardware-based protection considerations for OEMs
Each section (one per feature) contains the following information.
1. Describe each feature and what it does. Link to more information if available. 
2. What are the OEM opportunities for each feature?
3. What are the OEM requirements for each feature?
4. Note that this is not IT Pro or consumer content, link to such if available. 

You as the OEM have an unique opportunity to ensure that customers buying Windows 10 devices can securly set up their devices. Here's an explanation of hardware considerations for you to configure. 
**Note:** If you are an IT Professional and want to deploy these features, learn more in the [Device Security](https://docs.microsoft.com/en-us/windows/device-security/) content. 

##Device Guard
TBD: do we want to keep this naming? It's one of the keyword
Device Guard is not a feature; rather it is a set of features designed to work together to prevent and eliminate untrusted code from running on a Windows 10 system. Starting in Windows 10, version 1709, Device Guard consists of two parts, one focusing on hardware--called Windows Defender Exploit Guard, the other focusing on software--called Windows Defender Application Control. 

###Windows Defender Exploit Guard
Windows Defender Exploit Guard provides the hardware configuration portion of Device Guard.
* Platform & UEFI Secure Boot
* HVCI
* EMET
* CFG

###Windows Defender Application Control
Windows Defender Application Control provides the software configuration portion of Device Guard.
* Configurable Code Integrity (CCI)
* VSM Protected Code Integrity


##Device integrity protection
Includes TPM measurements, UEFI Secure Boot, Trusted Boot, Measured Boot, ELAM

 Windows 10 has platform integrity and data protection features that rely on the underlying hardware to strengthen the system's security:

-   Secure boot

    Helps ensure the user is running verified, authorized code to prevent malware infection or malicious modifications.

-   Measured boot

    Securely measures all components that load during boot so the health of a system can be determined and attested to.

The underlying hardware and firmware must support a secure boot path, TPM capabilities, and cryptographic offload from the pre-operating system and run-time Windows components. To deliver a robust system performance, a set of defined cryptographic functions must be implemented. To do so, use an acceleration engine or dedicated security processor available within the SoC or core logic chipset or processor.

###Secure boot


The firmware requirements for implementing secure boot are:

-   The platform exposes an interface that adheres to the profile of UEFI v2.3.1 Section 27.
-   The platform must come provisioned with the correct keys in the UEFI Signature database (db) to allow Windows to boot. It must also support secure authenticated updates to the db and dbx per the spec.
-   Storage of secure variables must be isolated from the running operating system such that they cannot be modified without detection.
-   All firmware components are signed using at least RSA-2048 with SHA-256.
-   When power is turned on, the system starts executing code in the firmware and uses public key cryptography as per algorithm policy to verify the signatures of all images in the boot sequence, up to and including the Windows Boot Manager.
-   The system must protect against rollback of firmware to older versions.
-   The platform provides the EFI\_HASH\_PROTOCOL (per UEFI v2.3.1) for offloading cryptographic hash operations and the EFI\_RNG\_PROTOCOL (Microsoft defined) for accessing platform entropy.

###Measured boot


Measured boot requires the following firmware requirements:

-   The platform must provide a TCG-compliant TPM implementation available to the pre-operating system and runtime operating system.
-   During the boot sequence, the boot firmware and software measures all firmware and all software components being loaded into the TPM.
-   For platform attestation, the SoC vendor must provision an Endorsement Key certificate. The certificate profile is provided separately.
-   Support for platform attestation.

    -   Ability to protect register values from within Windows, and sign the values with a platform key.
-   Support for isolated storage.

    -   Access to isolated non-volatile, sealed storage for storing long term secrets.
    -   Loading and storing key data within sealed storage.

For TPM requirements, see [Minimum hardware requirements](../minimum/minimum-hardware-requirements-overview.md). For detailed TPM information, see [Trusted Platform Module](http://go.microsoft.com/fwlink/?LinkId=624832) topic on TechNet.



####Preboot memory protection

Before Windows finishes booting and taking control of the system and its buses and ports, the firmware is the go-between for port and bridge controller availability on the platform. However, during the boot process for encrypted operating system volumes, BitLocker handles encryption keys in memory to decrypt the volume containing the Windows loader and the rest of the Windows operating system - these keys must be protected.

The boot firmware must protect physical memory from all DMA-capable external ports prior to boot, during boot or resume from S3 if supported, and until such time as the operating system powers up DMA ports through related bridge controllers. When the device enters a low-power state, the DMA port device context must be saved and restored upon returning to an active state.

If the firmware has the option to enable and disable this protection, the shipping configuration must be with protection enabled, and turning protection off must be protected. For example, platform authentication through the BIOS password.

**Note**  This requirement precludes the use of attached storage as boot media if it can only be accessed through an external DMA-capable port, such as ExpressCard, CardBus, IEEE 1394, or Thunderbolt interface if supported.
 
#See also
[Windows 10 Device Guard and Credential Guard Demystified](https://blogs.technet.microsoft.com/ash/2016/03/02/windows-10-device-guard-and-credential-guard-demystified)
