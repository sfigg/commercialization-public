---
author: joshbax-msft
title: PCI Hardware Compliance Test For a Single Device (PCIHCT)
description: PCI Hardware Compliance Test For a Single Device (PCIHCT)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e0931d96-7350-47fb-a652-cccf5d493f7d
---

# PCI Hardware Compliance Test For a Single Device (PCIHCT)


This test verifies that PCI and PCI-compatible hardware device interfaces comply with published specifications by the PCI-SIG and Microsoft.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.PciConnected.64BitPrefetchableBar Device.Connectivity.PciConnected.ConfigurationSpaceCorrectlyPopulated Device.Connectivity.PciConnected.ExpressCardImplementsSerialNumber Device.Connectivity.PciConnected.InterruptDisableBit Device.Connectivity.PciConnected.MsiOrMsixSupport Device.Connectivity.PciConnected.PciAndPcixDevicesArePciCompliant Device.Connectivity.PciConnected.PCIExpress Device.Connectivity.PciConnected.SubsystemIdsRequired Device.DevFund.Server.PCI.PCIAER</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [PCI Device.Connectivity Testing Prerequisites](pci-deviceconnectivity-testing-prerequisites.md).

**Note**  
This test is applicable to PCI/PCI-X or PCI-Express devices. Categories that you set for this job must match the categories for the PCI Deploy Bus Gatherer job.

 

For Windows Vista or later operating systems, the PCI Hardware Compliance Test For a Single Device test is automatically selected in Windows HCK Studio for a system or for a device certification submission for which the selected device is a PCI, PCI-X, or a PCI Express device.

This test focuses on the software interface of a device (also known as the configuration space). The configuration space contains hardware registers that the software can access. This access enables hardware to expose its device type, device class, capabilities, state, status, and other information to the operating system. The operating system can also configure and control the device through the configuration space registers. Plug and Play (PnP) and power management use these extensively.

For correct operation and stability of the operating system and its base functions, the hardware must operate as expected.

This test checks for errors in hardware implementations of the configuration space, such as the following:

-   Invalid values are specified in registers.

-   Read-only registers can be written to.

-   Writable registers cannot be written to.

-   Registers that are supposed to clear on a write of 1 do not.

-   Registers that are supposed to retain their values through a reset lose them.

-   Writing certain values causes the device, and in some cases the system, to stop responding.

-   Not all features or capabilities are implemented as required by the specifications.

For more information, see the following specifications available from the [PCI SIG website](http://go.microsoft.com/fwlink/?LinkId=229931):

-   PCI Express Base Specification 1.0a

-   PCI Power Management 1.1

-   PCI-to-PCI Bridge Specification 1.2

-   PCI Local Bus Specification 2.3

-   PCI Express to PCI/PCI-X Bridge Specification 1.0

-   PCI-X Protocol Addendum to the PCI Local Bus Specification Revision 2.0a

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20PCI%20Hardware%20Compliance%20Test%20For%20a%20Single%20Device%20%28PCIHCT%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




