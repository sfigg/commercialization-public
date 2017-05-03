---
title: Device encryption in Windows 10 for OEMs
description: OEMs can configure hardware and devices to support device encryption.
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: B088769D-6DB1-4057-8C8D-4BFC8FD8BCD3
---
# Device encryption in Windows 10
With the right hardware configurations, Windows 10 automatically encrypts a device, helping to keep customer data safe.  OEMs can implement a more secure device with the right hardware.
Windows 10 Home edition automatically encrypts a device if the right hardware is available and configured correctly: 

- The device must contain a TPM (Trusted Platform Module) with PCR7 support
- UEFI Secure Boot is enabled
- Platform Secure Boot is enabled. This requirement is met by one of the following:
    - The device supports InstantGo (Always On-Always Connected, AOAC), which meets the [requirements for platform secure boot](https://msdn.microsoft.com/windows/hardware/commercialize/design/compatibility/systems#systemfundamentalsfirmwarecsuefisecurebootconnectedstandby). Note that InstantGo was previously called “connected standby” or “modern standby.”)
    Or
    - Platform secure boot is enabled as reported through the [Hardware Security Testing Interface](https://msdn.microsoft.com/library/windows/hardware/mt712332(v=vs.85).aspx) (HSTI). This option is available starting with Windows 10, version 1703.
- Direct memory access (DMA) protections is enabled. This requirement is met by one of the following:
    - The device supports InstantGo, which meets the [requirements for UEFI secure boot](https://msdn.microsoft.com/windows/hardware/commercialize/design/compatibility/systems#systemfundamentalsfirmwarecsuefisecurebootconnectedstandby). This include item #8, protection from unauthorized DMA.
    Or
    - Protection from internal and external DMA is enabled as reported through the [Hardware Security Testing Interface](https://msdn.microsoft.com/library/windows/hardware/mt712332(v=vs.85).aspx) (HSTI). This option is available starting with Windows 10, version 1703.

OEMs can choose to disable device encryption and instead implement their own encryption technology on a device. To disable device encryption, use an unattend file with the PreventDeviceEncryption setting configured. See [PreventDeviceEncryption](https://msdn.microsoft.com/windows/hardware/commercialize/customize/desktop/unattend/microsoft-windows-securestartup-filterdriver-preventdeviceencryption). 

Device encryption is enabled only after users sign in with a **Microsoft Account** or an **Azure Active Directory** account. Device encryption is not enabled with local accounts.

## Device hardware requirements
The following list shows the tests that a device must pass before Windows 10 can enable device encryption. OEMs who want to create hardware that supports this capability must verify that their device passes these tests. If any test in this sequence fails, no further tests can will pass.

1. **TPM**: Device must include a TPM with PCR 7 support.  See System.Fundamentals.TPM20.TPM20.
2. **Secure boot**: UEFI Secure Boot is enabled. See System.Fundamentals.Firmware.UEFISecureBoot.
3. **InstantGo (AOAC)** requirements or **HSTI** validation. This requirement is met by one of the following:
    - InstantGo (AOAC) requirements are implemented. These include requirements for UEFI secure boot and protection from unauthorized DMA.
    - Starting with Windows 10, version, 1703, this requirement can be met through HSTI test:
        1.	Platform Secure Boot self-test (or additional self-tests as configured in the registry) must be reported by HSTI as implemented and passed.
        2.	Excluding Thunderbolt, HSTI must report no un-allowed DMA busses.
        3.	If Thunderbolt is present, HSTI must report that Thunderbolt is configured securely (security level must be SL1 – “User Authorization” or higher).

### Verify the device supports encryption
Starting with Windows 10, version 1703, use the following steps to determine if the system supports automatic device encryption.
1.	Click **Start**, and type **System information**
2.	Right-click **System Information** app and click **Open as Administrator**. Allow the app to make changes to your device by clicking **Yes**. Some devices might require elevated permissions to view the encryption settings.
3.	In **System Summary**, see **Device Encryption Support**.  The value will state if the device is encrypted, or if not, reasons why it is disabled. 

