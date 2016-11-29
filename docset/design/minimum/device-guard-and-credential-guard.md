---
title: PC OEM requirements for Device Guard and Credential Guard
description: OEMs can use this document to determine the Device Guard (DG) and Credential Guard (CG) deployment requirements (as specified in the Windows Hardware Compatibility Requirements (WHCR) for these Windows 10 OS versions Windows 10, version 1507; Windows 10, version 1511; Windows 10, version 1607; and Windows Server 2016.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 824210CA-B45C-49D9-854B-4DC40D620106
---

# PC OEM requirements for Device Guard and Credential Guard


OEMs can use this document to determine the Device Guard (DG) and Credential Guard (CG) deployment requirements (as specified in the Windows Hardware Compatibility Requirements (WHCR) for these Windows 10 OS versions: Windows 10, version 1507; Windows 10, version 1511; Windows 10, version 1607; and Windows Server 2016.

OEMs must meet the following DG/CG requirements for each OS version:

-   Windows 10, version 1507 and Windows 10, version 1511 - There are no differences in the firmware/hardware requirements between these two versions.

-   Windows 10, version 1607 - There are requirements in addition to the requirements for the previous versions.

-   2017 additional qualification requirements - Lists all the future additional qualification requirements starting with Windows 10. This list is not final and subject to change.

**Note**  If you are an enterprise IT administrator looking to deploy Device Guard or Credential Guard, see [Requirements and deployment planning guidelines for Device Guard](http://go.microsoft.com/fwlink/?LinkId=822877) and [Requirements and deployment planning guidelines for Credential Guard](https://technet.microsoft.com/itpro/windows/keep-secure/credential-guard#hardware-and-software-requirements) on TechNet.

 

## Hardware readiness


Devices fall into three readiness categories which are associated with Device Guard and Credential Guard readiness independently:

-   **Capable** - Devices support the required hardware features, but the configuration state of the device is such that a physically present, privileged user must change them to the required state before the device is in the Credential Guard and Device Guard Ready state. An example is a computer that supports virtualization extensions but does not have virtualization extensions enabled in the BIOS. As a result, those extensions will need to be enabled before any of the virtualization-based security features may be enabled.

-   **Ready** - Devices are immediately capable of enabling all Credential Guard and Device Guard features through central administration tasks, such as Group Policy or device management. Credential Guard and Device Guard Ready machines that are imaged with a Customer Custom Desktop image can be provided to a customer with fully enabled. Required configurations and settings for configuring Credential Guard and Device Guard in fully enabled mode is detailed out in later sections.

-   **Not supported** - Devices that do not support the required hardware features and configurations in the following tables are not capable of supporting Device Guard and Credential Guard.

## PC OEM requirements for Windows 10, version 1507 and Windows 10, version 1511


<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Requirement</th>
<th>Details</th>
<th>Security benefit</th>
<th>Required for Credential Guard</th>
<th>Required for Device Guard</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Hardware: 64-bit CPU</p></td>
<td><p>Virtualization Based Security (VBS) features require the Windows hypervisor, which is only supported on 64-bit processors</p></td>
<td><p>N/A</p></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="even">
<td><p>Hardware: Virtualization extensions - Intel VT-x, AMD-V, and extended page tables</p></td>
<td><p>VBS is the foundation of Device Guard, and VBS works only if the processor supports virtualization with second level address translation support. This is required to support virtualization based security.</p></td>
<td><p>VBS provides isolation of secure kernel from normal OS. Vulnerabilities and Day 0s in normal OS cannot be exploited because of this isolation.</p></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="odd">
<td><p>Hardware: VT-D or AMD Vi IOMMU (Input/output memory management unit)</p></td>
<td><p>In Windows 10, an IOMMU can be used to enhance system resiliency against memory attacks. For more information, see [ACPI description tables](https://msdn.microsoft.com/windows/hardware/drivers/bringup/acpi-system-description-tables).</p></td>
<td><p>Prevents advanced memory attacks</p></td>
<td>X</td>
<td></td>
</tr>
<tr class="even">
<td><p>Hardware: Trusted Platform Module (TPM) version</p></td>
<td><p>TPMs, either discrete or firmware, will suffice.</p></td>
<td><ul>
<li><p>TPM 1.2 and 2.0 provides protection for VBS encryption keys that are stored in the firmware.</p></li>
<li><p>Secrets stored in CG are protected against attacks involving physically present user with BIOS and Hardware access.</p></li>
</ul></td>
<td>X</td>
<td></td>
</tr>
<tr class="odd">
<td><p>Firmware: UEFI 2.3.1.c or higher firmware along with Secure Boot</p></td>
<td><p>UEFI Secure Boot ensures that the device boots with only authorized code in pre-OS environment. For more information, see Hardware Compatibility Specification for Systems for Windows 10 under [System.Fundamentals.Firmware.UEFISecureBoot](https://msdn.microsoft.com/library/windows/hardware/dn932805.aspx#system-fundamentals-firmware-uefisecureboot).</p></td>
<td><p>Prevents boot kits and root kits from installing and persisting across reboots.</p></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="even">
<td><p>Firmware: Secure firmware update process</p></td>
<td><p>Like UEFI software, UEFI firmware can have security vulnerabilities. It is essential to have the capability to patch such vulnerabilities when found immediately through firmware updates.</p>
<p>UEFI firmware must support secure firmware update following Hardware Compatibility Specification for Systems for Windows 10 under [System.Fundamentals.Firmware.UEFISecureBoot](https://msdn.microsoft.com/library/windows/hardware/dn932805.aspx#system-fundamentals-firmware-uefisecureboot).</p></td>
<td><ul>
<li><p>Provides capability to patch security vulnerabilities.</p></li>
<li><p>Prevents root kits from getting installed.</p></li>
</ul></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="odd">
<td><p>Firmware: Securing boot configuration and management</p></td>
<td><p>Required BIOS capabilities:</p>
<ul>
<li><p>BIOS password or stronger authentication supported to ensure that only authenticated Platform BIOS administrator can change BIOS settings.</p></li>
<li><p>Protected BIOS option to configure list of permitted boot devices and boot device order which overrides BOOTORDER modification made by OS, for example, boot only from internal hard drive.</p></li>
</ul>
<p>Required configurations:</p>
<ul>
<li><p>BIOS options related to security and boot options must be secured to prevent other operating systems from starting and to prevent changes to the BIOS settings.</p></li>
<li><p>BIOS authentication must be set, for example, BIOS password must be set.</p></li>
</ul></td>
<td><ul>
<li><p>BIOS password is required to protect against a physically present user with BIOS access.</p></li>
<li><p>Boot order when locked provides protection against admin user booting into WinRE or any other OS from a bootable media.</p></li>
</ul></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="even">
<td><p>Firmware: Secure MOR implementation</p></td>
<td><p>A secure MOR bit prevents certain memory attacks so this is necessary for Credential Guard. This will further enhance security of Credential Guard. For more information, see [Secure MOR implementation](https://msdn.microsoft.com/windows/hardware/drivers/bringup/device-guard-requirements).</p></td>
<td><p>Prevents advanced memory attacks</p></td>
<td>X</td>
<td></td>
</tr>
<tr class="odd">
<td><p>Software: Windows edition</p></td>
<td><p>Windows 10 Enterprise, Windows 10 Education, Windows Server 2016, Windows 10 Mobile Enterprise</p></td>
<td><ul>
<li><p>These editions provide VBS that is the base for DG.</p></li>
<li><p>These editions also provide manageability that makes it easier to configure DG.</p></li>
</ul></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="even">
<td><p>Software: HVCI compatible drivers</p></td>
<td><p>HVCI compatible drivers ensure that virtualization-based security can maintain the appropriate memory permissions.</p>
<p>Must meet all [HVCI Compatible](http://go.microsoft.com/fwlink/p/?LinkId=627463) Driver requirements as described in Hardware Compatibility Specification for Systems for Windows 10 under [Filter.Driver.DeviceGuard.DriverCompatibility](https://msdn.microsoft.com/library/windows/hardware/mt589732).</p></td>
<td><ul>
<li><p>Increase resistance to bypassing vulnerable kernel drivers.</p></li>
<li><p>Code can only run in kernel mode when it is verified (code integrity) in VBS.</p></li>
<li><p>Ensures malware cannot run in kernel.</p></li>
</ul></td>
<td></td>
<td>X</td>
</tr>
</tbody>
</table>

 

## PC OEM requirements for Windows 10, version 1607 and Windows Server 2016


<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Requirement</th>
<th>Details</th>
<th>Security benefit</th>
<th>Required for Credential Guard</th>
<th>Required for Device Guard</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Firmware: Hardware rooted trust platform secure boot</p></td>
<td><p>Boot integrity (or platform secure boot) must be supported following the requirement in Hardware Compatibility Specification for Systems for Windows 10 under:</p>
<ul>
<li><p>[System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby](https://msdn.microsoft.com/library/windows/hardware/dn932807#system-fundamentals-firmware-cs-uefisecureboot-connectedstandby)</p></li>
<li><p>Hardware security test interface - The platform is required to implement a hardware interface and share documentation and tools as specified in [Hardware Security Testability Specification](https://msdn.microsoft.com/library/windows/hardware/mt712332.aspx).</p></li>
</ul></td>
<td><ul>
<li><p>Boot integrity from power-on provides the protections against physically present attackers.</p></li>
<li><p>Defense in depth for malware attacks.</p></li>
<li><p>HSTI provides security assurance for a correctly secured silicon and platform.</p></li>
</ul></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="even">
<td><p>Firmware: Firmware updated through Windows Update</p></td>
<td><p>Firmware must support field updates through Windows Update and UEFI encapsulation update.</p></td>
<td><ul>
<li><p>Windows Update offers fast, secure, and reliable delivery mechanism for firmware updates.</p></li>
<li><p>Enterprises have all opted to get Windows Updates, and as a result, all firmware updates can be delivered at a faster cadence.</p></li>
</ul></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="odd">
<td><p>Firmware: DB configuration</p></td>
<td><p>Required BIOS capabilities:</p>
<ul>
<li><p>OEM supports capability to add ISV, OEM, or enterprise certificate in secure boot DB at manufacturing time.</p></li>
</ul>
<p>Required configurations:</p>
<ul>
<li><p>Microsoft UEFI CA must be removed from secure boot DB. Support for third-party UEFI modules is permitted but should leverage ISV-provided certificates or OEM certificate for the specific UEFI software.</p></li>
</ul></td>
<td><ul>
<li><p>Enterprises can allow proprietary EFI drivers/applications to run.</p></li>
<li><p>Removing Microsoft UEFI CA from secure boot DB provides full control to enterprises to configure only approved apps in the pre-OS to run.</p></li>
</ul></td>
<td>X</td>
<td>X</td>
</tr>
</tbody>
</table>

 

## <a href="" id="2017-additional-qualification-requirements-for-device-guard-and-credential-guard--starting-with-the-next-major-release-of--windows-10-"></a>2017 Additional Qualification Requirements for Device Guard and Credential Guard (starting with the next major release of Windows 10)


<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Requirement</th>
<th>Details</th>
<th>Security benefit</th>
<th>Required for Credential Guard</th>
<th>Required for Device Guard</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Firmware: UEFI NX protections</p></td>
<td><ul>
<li><p>All UEFI memory that is marked executable must be read only. Memory marked writable must not be executable.</p></li>
<li><p>UEFI runtime services must meet these requirements:</p>
<ul>
<li><p>Implement the UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. The entire UEFI runtime must be described by this table.</p></li>
<li><p>All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both.</p></li>
<li><p>No entries may be left with neither of the above attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writeable and non-executable.</p></li>
</ul></li>
</ul></td>
<td><ul>
<li><p>Vulnerabilities in UEFI runtime, if any (such as in functions like update capsule and set variables), will be blocked from compromising VBS</p></li>
<li><p>Reduces the attack surface to VBS from system firmware</p></li>
</ul></td>
<td>X</td>
<td>X</td>
</tr>
<tr class="even">
<td><p>Firmware: Firmware support for SMM protection</p></td>
<td><p>The Windows SMM Security Mitigations Table (WSMT) specification contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features.</p>
<p>For more information, see the [Windows SMM Security Mitigations Table (WMST) specification](http://go.microsoft.com/fwlink/p/?LinkId=786943).</p></td>
<td><ul>
<li><p>Vulnerabilities in UEFI runtime, if any (such as in functions like update capsule and set variables), will be blocked from compromising VBS</p></li>
<li><p>Reduces the attack surface to VBS from system firmware</p></li>
<li><p>Blocks additional security attacks against SMM</p></li>
</ul></td>
<td>X</td>
<td>X</td>
</tr>
</tbody>
</table>

 

 

 






