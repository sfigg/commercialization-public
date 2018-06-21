---
title: OEM guidance for native OS security for Thunderbolt™ 3
description: In the Windows 10 version 1803, Microsoft introduced a native OS solution for protecting PCs against drive-by DMA attacks via Thunderbolt™ 3 enabled ports.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# OEM guidance for Windows 10 security for Thunderbolt™ 3

Some bus types (including PCI, Thunderbolt™ 3, ExpressCard, 1394, and so on) support Direct Memory Access (DMA). DMA-enabled buses can directly read and write to arbitrary physical memory addresses (that is, all of RAM).  While this facilitates performance, it introduces security concerns as it can provide maliciously-constructed or compromised devices with the ability to read system secrets or modify system code & data.  So-called “DMA attacks” were popularized in 2004 but faded in recent times as DMA-capable external ports disappeared from laptops with the rise of USB. With the increasing popularity of Thunderbolt™ 3 hosts and peripherals, industry experts are exploring new possible physical DMA attack vectors via these ports.

Beginning in 2013, Intel added incremental capabilities to Thunderbolt technology to reduce DMA exposure. When the host is properly configured with these capabilities, an end user would have to first approve the Thunderbolt peripheral when initially attached to the port, approved as either “Connect Only Once” or “Connect Always”. Although this methodology mitigates most Physical DMA attacks from un-authorized Thunderbolt devices, if a Thunderbolt device with a PCIe slot is approved as “Connect Always”, a physical “DMA attack” might still be possible given the correct hardware and physical access to a previously approved Thunderbolt device with PCIe expandability (e.g. PCIe slot, ExpressCard). Although the “Connect Only Once” does provide additional mitigation from such attacks, it places an unwelcome burden on the end user who would be required to approve the device every time it’s connected.

In the Windows 10 version 1803, Microsoft introduced a native OS solution for protecting PCs against drive-by DMA attacks via Thunderbolt™ 3 enabled ports. “Drive-by” DMA attacks are attacks that can be performed in less the 10 minutes, with off-the-shelf equipment costing less than $1,000, that do not require disassembly of the PC chassis. Without protection, a drive-by DMA attacker could dump or overwrite the entire memory of the system, inject malware, or even short-circuit the login algorithm to gain full access to the PC being attacked.

This native OS security solution is only available for new systems beginning with Windows 10 version 1803, as it requires changes in the system firmware/BIOS, described in [Platform and BIOS Requirements](#platform-and-bios-requirements).


## Threat model

The threat model for DMA attacks currently focuses on readily-available, externally accessible ports on systems that are not physically secured. The attacker is expected to have a malicious device – it could spoof any hardware ID, generate arbitrary bus cycles, ignores its own control registers (e.g. PCI BusMasterEnable, 1394 PhysicalRequestFilters, etc.). 

Internal ports that require opening the case, revealing other hardware such as RAM, flash, or storage media, are not in scope. Access to these components by a persistent, motivated attacker with physical access exposes a sophisticated attack surface whose protection is not addressed here.  Future OS releases may expand the scope of DMA protection.

## Thunderbolt™ 3 OS security overview

The Windows 10 security for Thunderbolt™ 3 hosts and PCs relies on the system IOMMU to prevent drive-by DMA attacks. Using the system IOMMU helps the OS:

1.	Block all newly attached Thunderbolt™ 3 devices from starting and performing DMA, until an authorized user is logged in and the screen is unlocked.
2.	Sandbox memory allocated to DMA remapping (DMAr) compatible device drivers, thus allowing the OS to enumerate and start DMAr compatible devices regardless of the lock screen state (that is, plug and use immediately), which significantly improves user experience and improves the overall system security.  

This feature is only available for Intel x64 platforms in Windows 10, version 1803. 

## User experience

The native OS security solution for Thunderbolt™ 3 hosts/PCs will reduce the user required interaction to enumerate newly connected Thunderbolt™ 3 devices, thus bringing the overall experience one step closer to the USB experience. This OS native support will replace the existing Intel Thunderbolt™ 3 Security mechanism, which requires users to approve newly attached devices via UI popups, starting with Windows 10 version 1803. 

## Platform and BIOS requirements

The Platform/BIOS MUST do the following to allow the OS secure against drive-by attacks via Thunderbolt™ 3 ports:

1. By default, System firmware must enable OS control of PCI Express & DMA Protection for Thunderbolt™ 3 technology:
   - Enable Native PCI Express Support for Thunderbolt™ 3 technology (See the appropriate Thunderbolt BIOS Implementation Guide for the targeted platform or contact your Intel representative). 
   - Enable Intel Virtualization technology for Direct I/O (VT-d).
   - Set Intel legacy Thunderbolt™ 3 Security Level to SL0 (No Security Mode).
2. System firmware must protect against pre-boot DMA attacks by either:
   - Clearing Bus Master Enable (BME) bit for all PCI root ports above Thunderbolt™ 3 hierarchies from system power on through ExitBootServices().
   - Implementing DMA isolation of all Thunderbolt™ 3 IO buffers pre-ExitBootServices() (See the appropriate Thunderbolt BIOS Implementation Guide for the targeted platform).
3. At ExitBootServices(), clear the BME bit for all PCIe root ports above a Thunderbolt™ 3 hierarchy, if already enabled due to implementing DMA isolation.
4. At ExitBootServices(), restore IOMMU to power ON state (See the appropriate Thunderbolt BIOS Implementation Guide for the targeted platform).
5. No device may perform DMA outside of RMRR regions after ExitBootServices() until the devices’ respective OS drivers are loaded and started by PnP, and Set DMA_CTRL_PLATFORM_OPT_IN_FLAG in DMAR table flags field (Intel Virtualization Technology for Direct I/O Spec, Rev 2.5 Section 8.1).
6. DMAR tables must not include ACPI Namespace Device Descriptors (ANDD) structures.
7. Implement _DSD for Thunderbolt™ 3 PCIe root ports (see [Appendix A](#appendix-a)).
8. Make TPM measurements as described in [Appendix B](#appendix-b-tpm-measurements).

## Driver requirements

For PCI Thunderbolt™ 3 devices that are required to function before user sign in or screen unlock, the device driver MUST be DMAr compatible and MUST opt in to DMAr.

> [!NOTE]
> DMA remapping is not supported for Graphics devices and drivers in Windows 10, version 1803.

To be DMAr compatible and to opt-into DMAr, the device driver MUST:

1. Only perform DMA using the Microsoft standard DMA interfaces:
   - [WDF Drivers](https://docs.microsoft.com/windows-hardware/drivers/ddi/content/wdfdmaenabler/)
   - [NDIS Drivers](https://docs.microsoft.com/windows-hardware/drivers/ddi/content/_netvista/) 
   - [WDM Drivers (excluding Graphics)](https://docs.microsoft.com/windows-hardware/drivers/ddi/content/index)
2. Opt in to DMAr using the following INF directive:   
   ```code
   [MyServiceInstall_AddReg] 
   HKR,Parameters,DmaRemappingCompatible,0x00010001,1  
   ;1 = opt-in, 2 = opt-in only for external devices
   ```
3. Enable driver verifier with all standard settings when testing the driver
   - Under driver verifier (for testing purposes), the INF directive #2, opt-in for external devices, is promoted to INF directive #1, opt-in.
4. Fully test driver functionality on an Intel x64 system, with VT-d enabled, using the latest Windows 10 version 1803 build.

## Frequently asked questions

### Would my driver require major refactoring to opt-into DMAr?

No, all drivers that are currently using the WDM, WDF or NDIS DMA APIs (listed in [Driver Requirements](#driver-requirements)), for DMA would require minimal to no changes at all. The main change for these drivers would be to add an INF directive that would allow the OS sandbox the memory allocated for these drivers.

### What is the expected behavior of DMAr incompatible devices?

DMAr incompatible devices will be blocked from starting if the device was plugged in before an authorized user logs in, or while the screen is locked. Once the system is unlocked, the device driver will be started by the OS, and the device will continue to function normally until the system is rebooted, or the device is unplugged. The devices will continue to function normally if the user locks the screen or logs out of the system.

### Do in-market systems support the native OS security for Thunderbolt™ 3?

In market systems, released with Windows 10 version 1709 or earlier will not support native OS security for Thunderbolt™ 3 after upgrading to Windows 10 version 1803 because this feature requires the BIOS/platform firmware changes and guarantees, as described in [Platform and BIOS requirements](#platform-and-bios-requirements).

### Would I be able to boot from Thunderbolt™ 3 devices with the native OS security?

Yes, booting for Thunderbolt™ 3 devices is supported (for example, for PXE Boot), if item DMA isolation in [Platform and BIOS requirements](#platform-and-bios-requirements) is implemented. Installing Windows 10 on the external media and using that as the system drive is not supported.

### What is the expected behavior of my system, if the BIOS does not set the DMA_CTRL_PLATFORM_OPT_IN_FLAG in DMAR table flags field?

The OS will not block any device from enumerating, starting and performing DMA. All devices attached to the system will be automatically enumerated and started regardless of their drivers’ DMAr compatibility and lock screen state. This will leave the system exposed to driver-by DMA attacks.

### Is it required for system firmware to protect against pre-boot DMA attacks?
Absolutely. If the system firmware/BIOS does not protect against pre-boot DMA attacks, then an attacker can simply reboot the system and inject malicious code or disable all IOMMU-based security features during boot up.

## Appendix A (_DSD BIOS implementation)

```code
Method(_DSD, 0)
{
       Return (Package () {
              ToUUID("6211E2C0-58A3-4AF3-90E1-927A4E0C55A4"),	
              Package () {
                     Package (2) {"HotPlugSupportInD3", 1},
                     }, //Advertise that hierarchy below root port supports D3Cold
 	
           ToUUID("EFCC06CC-73AC-4BC3-BFF0-76143807C389"),
           Package () {	
           Package (2) {"ExternalFacingPort", 1}, // Property 1: This is a Thunderbolt3 port
           Package (2) {"UID", 0}, // Property 2: UID of the TBT RP on platform, range is: 0, 1, …, NumOfTBTRP – 1
           } //Advertise that the port is an externally exposed port (e.g. Thunderbolt3)
        })
```

Implementation notes:
- For systems with a single Thunderbolt™ 3 PCIe Root Port, “UID” should be set to 0.
- For systems with multiple Thunderbolt™ 3 PCIe Root Ports, duplicate the _DSD method for each Root Port and increment the “UID” by 1, starting from 0.

## Appendix B TPM measurements

If the firmware/BIOS has an option to enable and disable DMA protections via a VT-d switch in BIOS options, then the shipping configuration must be with VT-d protection enabled. 
On every boot where VT-d/DMA protection is disabled, or will be disabled, or configured to a lower security state, and a platform has a TPM enabled, then the platform SHALL extend an EV_EFI_ACTION event into PCR[7] before enabling external DMA. 
The event string SHALL be “DMA Protection Disabled”. 
The platform firmware MUST log this measurement in the event log using the string “DMA Protection Disabled” for the Event Data.
   
 