---
title: Device Guard hardware requirements
description: Provides guidance on what an OEM should do to enable Device Guard
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Defender Device Guard hardware requirements
Starting with Windows 10, version 1709, Device Guard is split into two features known as Windows Defender Exploit Guard and Windows Defender Application Control. These features are a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications that are defined in an enterprise's code integrity policies. If the app isn’t trusted it can’t run, period. 

With hardware that meets basic requirements, it also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code. 

If you are an OEM building secure systems, you must provide the hardware to enable these features.

**Note**  If you are an enterprise IT administrator looking to deploy Device Guard, see [Requirements and deployment planning guidelines for Device Guard](http://go.microsoft.com/fwlink/?LinkId=822877).

## Windows Defender Exploit Guard
Look into the following: MOR, ASLR, HIPS/EMET

Windows Defender Exploit Guard includes hypervisor-protected code integrity (HVCI), which is a kernel process mitigation that leverages virtualization based security to isolate the process that performs integrity validation and authorization for kernel-mode code. 

Exploit Guard requires the following hardware. 
| Hardware requirement | Details |
|----------------------|---------|
| VBS enablement of NX protection for UEFI runtime services | VBS will enable No-Execute (NX) protection on UEFI runtime service code and data memory regions. UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable.<br>UEFI runtime services must meet these requirements:<ul><li>Implement the UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table.</li><li>PE sections need to be page-aligned in memory (not required in non-volatile storage).<li>The Memory Attributes Table needs to correctly mark code and data as RO/NX for configuration by the OS: <ul><li>All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both.</li><li>No entries may be left with neither of the above attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writeable and non-executable.</li></ul></li></ul>**Note:** this only applies to UEFI runtime service memory, and not UEFI boot service memory.<p>**Note:** this protection is applied by VBS on OS page tables.</ul><p>Please also note the following:<br>• Do not use sections that are both writable and executable<br>• Do not attempt to directly modify executable system memory<br>• Do not use dynamic code</li></ul> | 
| Firmware Update through Windows Update | Firmware must support field updates through Windows Update and UEFI encapsulation update. TBD: Is this entry superceded by the next? Or do we need both?|
| Secure firmware update process | UEFI firmware must support secure firmware update following Hardware Compatibility Specification for Systems for Windows 10 under [System.Fundamentals.Firmware.UEFISecureBoot](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareuefisecureboot). |
| Hardware Rooted Trust Platform Secure Boot| Boot Integrity (Platform Secure Boot) must be supported. See the Windows Hardware Compatibility Program requirements under [System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby](https://msdn.microsoft.com/library/windows/hardware/dn932807(v=vs.85).aspx#system_fundamentals_firmware_cs_uefisecureboot_connectedstandby)<br> The Hardware Security Test Interface (HSTI) must be implemented. See [Hardware Security Testability Specification](https://msdn.microsoft.com/en-us/library/windows/hardware/mt712332(v=vs.85).aspx).|
| Windows edition | Windows 10 Enterprise, Education, IoT Enterprise, or Windows Server 2016. | 
| 64-bit CPU | Virtualization-based security (VBS) features require the Windows hypervisor, which is only supported on 64-bit processors |
| Virtualization extensions - Intel VT-x, AMD-V, and extended page tables | VBS is the foundation of Device Guard, and VBS works only if the processor supports virtualization with second level address translation support. This is required to support virtualization based security. |
| VT-D or AMD Vi IOMMU (Input/output memory management unit) | In Windows 10, an IOMMU can be used to enhance system resiliency against memory attacks. For more information, see [ACPI system description tables](https://msdn.microsoft.com/windows/hardware/drivers/bringup/acpi-system-description-tables). | Prevents advanced memory attacks | 
| Trusted Platform Module (TPM) version 2.0 | | Provides protection for VBS encryption keys that are stored in the firmware. |
| Hyper-V Code Integrity (HVCI) | HVCI is a feature of Windows Defender Exploit Guard that ensures only drivers, executables, and DLLs that comply with the Windows Defender Application Control Code Integrity policy are allowed to run. |
| HVCI-compatible drivers | VCI compatible drivers ensure that virtualization-based security can maintain the appropriate memory permissions. <p>Must meet all [HVCI Compatible](http://go.microsoft.com/fwlink/p/?LinkId=627463) Driver requirements as described in Hardware Compatibility Specification for Systems for Windows 10 under [Filter.Driver.DeviceGuard.DriverCompatibility](https://msdn.microsoft.com/en-us/library/windows/hardware/mt589732.aspx#filterdriverdeviceguarddrivercompatibility). |
| Virtualization-based security (VBS) | In order for VBS to function, you as the OEM must provide CPU Virtualization extensions (called "Intel VT-x" or "AMD-V") and second-level address translation (SLAT). When the enterprise administrators enable the features associated with CPU virtualization extensions and SLAT, the Code Integrity service can run alongside the kernel in a Windows hypervisor-protected container. In addition, hardware that includes input/output memory management units (IOMMUs) provides even stronger protections. 

| Securing Boot Configuration and Management | Required BIOS capability to allow adding of ISV, OEM, or Enterprise Certificate in Secure Boot DB at manufacturing time. Microsoft UEFI CA must be removed from Secure Boot DB. Support for 3rd-party UEFI modules is permitted but should leverage ISV-provided certificates or OEM certificate for the specific UEFI software.|

| UEFI 2.3.1.c or higher firmware along with Secure Boot | UEFI Secure Boot ensures that the device boots with only authorized code in the pre-OS environment. For more information, see the Hardware Compatibility Specification for Systems for Windows 10 under [System.Fundamentals.Firmware.UEFISecureBoot](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareuefisecureboot). |
| Firmware support for SMM protection | The Windows SMM Security Mitigations Table (WSMT) specification contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features.<br><br>• For more information, see the [Windows SMM Security Mitigations Table (WMST) specification](https://msdn.microsoft.com/en-us/library/windows/hardware/dn614617.aspx). |


# Windows Defender Application control
Starting with Windows 10, version 1709, the code integretity part of Device Guard has been split out into a separate feature known as Application control. 
With appropriate hardware, application control can use virtualization-based security (VBS) in Windows 10 to isolate the Code Integrity service from the Microsoft Windows kernel itself. In this case, the Code Integrity service runs alongside the kernel in a Windows hypervisor-protected container.
  
 WDAC is used to control what code can run on the system in either kernel or user mode. When HVCI is enabled, WDAC benefits from the increased kernel memory protections since the kernel mode CI checks occur in virtualization based security and user mode code integrity runs as part of the kernel itself and is thus protected against kernel memory exploits.


## Related topics


