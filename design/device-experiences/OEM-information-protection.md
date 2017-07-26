---
title: Information protection considerations for OEMs
description: Provides guidance on what an OEM should do to enable information protection
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Information protection considerations for OEMs
1. Describe each feature and what it does. Link to more information if available. 
2. What OEM opportunities are there for each feature?
3. Note that this is not IT Pro or consumer content, link to such if available. 

**Note:** If you are an IT Professional and want to deploy these features, learn more in the [Device Security](https://docs.microsoft.com/en-us/windows/device-security/) content. 

##Windows Information Protection

##Device encryption
TBD: I have a note that device encryption only works on Home. Is that still or newly true?

Encrypted Hard Drive uses the rapid encryption that is provided by BitLocker Drive Encryption to enhance data security and management. By offloading the cryptographic operations to hardware, Encrypted Hard Drives increase BitLocker performance and reduce CPU usage and power consumption. Because Encrypted Hard Drives encrypt data quickly, enterprise devices can expand deployment with minimal impact on productivity.
OEMs contribute by implementing and testing the right hardware. 

Device encryption is enabled when:
1. The device contains a TPM 2.0 (Trusted Platform Module) with PCR7 support
2. UEFI Secure Boot is enabled
3. Platform Secure Boot is enabled
4. Direct memory access (DMA) protection is enabled 

**Note**: Windows 10 device encryption is enabled only after a user signs in with a Microsoft Account or an Azure Active Directory account. Device encryption is not enabled with local accounts.

* **TPM**: Device must include a TPM with PCR 7 support. See System.Fundamentals.TPM20.TPM20.
    * **Secure boot**: UEFI Secure Boot is enabled. See System.Fundamentals.Firmware.UEFISecureBoot.
    * **InstantGo (AOAC)** requirements or **HSTI 1.1a** validation. This requirement is met by one of the following:
        * InstantGo (AOAC) requirements are implemented. These include requirements for UEFI secure boot and protection from unauthorized DMA.
        * **Starting with Windows 10 version, 1703**, this requirement can be met through HSTI test:
            * Platform Secure Boot self-test (or additional self-tests as configured in the registry) must be reported by HSTI as implemented and passed.
            * Excluding Thunderbolt, HSTI must report no non-allowed DMA busses.
            * If Thunderbolt is present, HSTI must report that Thunderbolt is configured securely (security level must be SL1 – “User Authorization” or higher).

###Disable device encryption        
OEMs can choose to disable device encryption and instead implement their own encryption technology on a device. To disable device encryption, use one of the following to options:

1. Use an Unattend file and set [PreventDeviceEncryption](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-securestartup-filterdriver-preventdeviceencryption) to **True**. To learn more about using an Unattend file, see [Use an answer file with Sysprep](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/use-answer-files-with-sysprep).
-OR-
2. Update this registry key directly: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\BitLocker Value: PreventDeviceEncryption equal to True (1).

###DMA bus/device error
This error means that the system detected at least one DMA capable bus or device that may expose a DMA threat. To determine which bus/device triggered this error, run the Microsoft.UefiSecureBootLogo.CS.HardwareSecurity.Tests.ProbeForInsecureDirectMemoryAccessBusses HLK test. If the listed bus has only has internal facing access and with no ports exposed on the exterior of the device, then the OEM should consult with the IHV to ensure the bus is correctly identified before adding it to the "allowed" list. 

To add the bus to the allow list, dd string (REG_SZ) name/value pairs for the flagged DMA capable bus that is determined to be safe. For example, for a bus identified as “Contoso Root Port” with Vendor ID “0000” and Device ID “FFFF”, you'd add the following:

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DmaSecurity\AllowedBuses] 
"Contoso Root Port"="PCI\VEN_0000&DEV_FFFF"


For additional recommendations, see [Bitlocker topic on TechNet](http://go.microsoft.com/fwlink/?LinkId=624828).

##Remote business data removal

##Encrypted Individual Files and Folders (EFS)

##See also

[Control the health of Windows 10-based devices](https://docs.microsoft.com/en-us/windows/device-security/protect-high-value-assets-by-controlling-the-health-of-windows-10-based-devices)


 

 







