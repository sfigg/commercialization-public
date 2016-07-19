---
author: joshbax-msft
title: PCI Hardware Compliance Test For Systems
description: PCI Hardware Compliance Test For Systems
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b538700a-6c0b-4d71-87bd-c9f3a8459a4e
---

# PCI Hardware Compliance Test For Systems


This test verifies that Peripheral Component Interconnect (PCI) and PCI-compatible hardware device interfaces are implemented in compliance with industry specifications, hardware certification requirements, and white papers published by PCI-SIG and Microsoft. The main focus of the test is the hardware registers in the configuration space. The configuration space is used to allow hardware to expose its device type, device class, capabilities, state, status and other information to Windows®. Windows can also configure and control the device through these registers. Plug-and-play and power management use these registers extensively.

For proper operation and stability of Windows and its base functions, it is crucial that the hardware operates as expected. This test checks for errors in hardware implementations such as the following:

-   Invalid values specified in registers

-   Read-only registers that can be written to

-   Writable registers that cannot be written to

-   Registers that are supposed to clear on a write of 1 but do not

-   Registers that are supposed to retain their values through a reset but lose them

-   Devices (and in some cases, systems) that hang when certain values are written

-   Unimplemented features and/or capabilities that are required by the specs

-   Server systems include PCI Express Root, and that network and storage devices or adapters are PCI Express

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.SystemPCIController.PCIRequirements System.Fundamentals.SystemPCIController.SystemImplementingRiserCard System.Server.Base.DevicePCIExpress System.Server.Base.PCI23 System.Server.Base.PCIAER System.Server.Base.SystemPCIExpress</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

## More information


### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ArgToolArguments</p></td>
<td><p>The command line arguments for PCI HCT.</p>
<p>Default value: /L</p></td>
</tr>
<tr class="even">
<td><p>PciHctSourcePath</p></td>
<td><p>The location of the PciHct.msi file.</p></td>
</tr>
<tr class="odd">
<td><p>KmLogSourcePath</p></td>
<td><p>The location of the KmLogTransform.msi file.</p></td>
</tr>
</tbody>
</table>

 

 

 






