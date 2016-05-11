---
title: Camera hardware topology overview
description: Provides an overview of camera hardware topology.
MS-HAID:
- 'cstandby.camera\_hardware\_topology\_overview'
- 'p\_weg\_hardware.camera\_hardware\_topology\_overview'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1a6d50cc-d61d-421f-a6c5-dbe64c499c1e
---

# Camera hardware topology overview


In terms of Windows driver support, the camera subsystem contains off-System on a Chip (SoC) components such as the camera sensor, an optional auto-focus unit, and flash—and possibly other associated hardware. The camera hardware also includes the on-SoC image processing units.

The on-SoC image processing hardware must be power-managed by the power engine plug-in (PEP) supplied by the SoC vendor. The image processing hardware should be enumerated as a single device in ACPI and managed by a Windows Driver Framework (WDF) driver. Enable system management of the image processing device idle time-out so that the PEP can control any clock and power rail sharing topology that is unique to the SoC. Any on-SoC image processing hardware must be powered off whenever the camera device is turned off.

Some SoC designs have a shared function block that does both camera capture and other image and graphics processing. In a platform that uses such a SoC, the PEP supplied by the SoC vendor must reference-count the use of this shared block and power it off when all clients are idle.

In some platforms, the on-SoC image processing hardware might be shared between two or more camera devices. In this case, the image processing hardware is multiplexed between the camera devices. The components of each camera device should be described independently in the ACPI namespace and should be enumerated as separate device objects to the Windows Plug and Play manager.

Platforms that have two (or more) embedded cameras are required by Windows to be able to use (that is, stream content from) both (or all) cameras at the same time with any combination of the modes and resolutions that are supported by the individual cameras. SoC vendors who cannot meet this requirement must work with Microsoft directly for guidance on implementing their drivers and system firmware.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Camera%20hardware%20topology%20overview%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




