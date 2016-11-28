---
title: What's new in Design
description: This topic provides information about what's new in Windows 10, version 1607 minimum hardware requirements, form factors, device experiences, and hardware components across all Windows 10 devices.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: F882BFCB-996D-4A75-B858-D68201DB0C14
---

# What's new in Design


This topic provides information about what's new in Windows 10, version 1607 minimum hardware requirements, form factors, device experiences, and hardware components across all Windows 10 devices.

## Minimum hardware requirements


The following tables describes the changes for minimum hardware requirements in Windows 10, version 1607. The changes are organized by component area, the Windows edition that's impacted by the change, and the type of change.

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
<th>Component area</th>
<th>Windows edition impacted</th>
<th>Location of change</th>
<th>Windows 10, version 1607 update</th>
<th>Change type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Active pen</td>
<td>Desktop and Mobile</td>
<td>Table 3: Minimum hardware requirements summary</td>
<td>Digital pen changed to active pen</td>
<td>Clarification</td>
</tr>
<tr class="even">
<td>Active pen</td>
<td>Desktop and Mobile</td>
<td>Table 15: Touch, precision touch pad, and active pen requirements for Windows 10</td>
<td>Clarified pen digitizer to be active</td>
<td>Clarification</td>
</tr>
<tr class="odd">
<td>Active Pen</td>
<td>Desktop and Mobile</td>
<td>Section 6.1 Touch, touch pad, and active pen</td>
<td>Changed MSDN link to active pen reporting requirements</td>
<td>Editorial</td>
</tr>
<tr class="even">
<td>Camera</td>
<td>Desktop and Mobile</td>
<td>Section 6.2.1.1 Camera specification</td>
<td>Clarified Autofocus is highly recommended for rear-facing cameras, but remains optional</td>
<td>Clarification</td>
</tr>
<tr class="odd">
<td>Camera</td>
<td>Desktop and Mobile</td>
<td>Table 16: Camera still-capture functional specifications</td>
<td>Pixel aspect ratio changed from 1.0 to 1:1 square pixels</td>
<td>Requirement adjustment</td>
</tr>
<tr class="even">
<td>Camera</td>
<td>Desktop and Mobile</td>
<td>Table 18: Camera flash</td>
<td>Changed Auto mode from being recommended to required</td>
<td>Requirement adjustment</td>
</tr>
<tr class="odd">
<td>Display</td>
<td>Mobile</td>
<td>Table 3: Minimum hardware requirements summary</td>
<td>Screen size changed from less than 8-inches to less than 9-inches</td>
<td>Requirement adjustment</td>
</tr>
<tr class="even">
<td>Display</td>
<td>Desktop</td>
<td>Table 3: Minimum hardware requirements summary</td>
<td>Screen size changed from 8-inches or greater required to 7-inches or greater required for tablets, 2-in-1s, laptops, and All-in-one</td>
<td>Requirement adjustment</td>
</tr>
<tr class="odd">
<td>Memory</td>
<td>Mobile</td>
<td>Table 3: Minimum hardware requirements summary</td>
<td>RAM for Windows Mobile changed from 512MB to 1GB</td>
<td>Requirement adjustment</td>
</tr>
<tr class="even">
<td>Memory</td>
<td>Mobile</td>
<td>Table 7: RAM requirements for devices that run Windows 10 Mobile</td>
<td>Baseline RAM for Windows Mobile updated from 512MB to 1GB</td>
<td>Requirement adjustment</td>
</tr>
<tr class="odd">
<td>Memory</td>
<td>Mobile</td>
<td>Table 7: RAM requirements for devices that run Windows 10 Mobile</td>
<td>RAM carve-out by SoC vendor changed from &lt;=90MB to &lt;=115MB</td>
<td>Requirement adjustment</td>
</tr>
<tr class="even">
<td>Networking</td>
<td>Server</td>
<td>Section 4.6 Networking</td>
<td>Clarified a Logo Certified network adapter must be included in systems running Windows Server 2016</td>
<td>Clarification</td>
</tr>
<tr class="odd">
<td>Processor</td>
<td>Mobile</td>
<td>Table 4: SoCs with integrated modems supported in devices that run Windows 10 Mobile</td>
<td>Added MSM8996</td>
<td>New hardware support</td>
</tr>
<tr class="even">
<td>Processor</td>
<td>Mobile</td>
<td>Table 6: SoCs supported in Windows Phone that can be updated to Windows 10 Mobile</td>
<td>Added MSM8994, MSM8992, MSM8952, MSM8909, MSM8208</td>
<td>New hardware support</td>
</tr>
<tr class="odd">
<td>Processor</td>
<td>IoT</td>
<td>5.1 Processor</td>
<td><p>Clarified x64 processor and instruction set is supported</p>
<p>Clarified support for CMPXCHG16b, LAHF/SAHF, and PrefetchW for 64-bit OS installations</p>
<p>Clarified ARM SoCs must be compatible with ARMv7 Instruction Set</p>
<p>Added table of supported SoCs:</p>
<ul>
<li><p>Qualcomm APQ8016, APQ8052, APQ8009</p></li>
<li><p>Intel Bay Trail M/D/I</p></li>
<li><p>Broadcom BCM2836</p></li>
</ul></td>
<td>Clarification</td>
</tr>
<tr class="even">
<td>Processor</td>
<td>IoT</td>
<td>5.1 Processor</td>
<td><p>Added the following processors to the list of supported Intel SoCs:</p>
<ul>
<li>Atom E3900 series</li>
<li>Celeron N3350</li>
<li>Pentium N4200 platform</li>
</ul></td>
<td>New hardware support</td>
</tr>
<tr class="odd">
<td>Resolution</td>
<td>Server</td>
<td>Section 4.5.1 Resolution and bit depth</td>
<td>Minimum resolution for Server with Desktop Experience clarified to 1024x768 and Nano Server option clarified to VGA</td>
<td>Clarification</td>
</tr>
<tr class="even">
<td>Security</td>
<td>Desktop</td>
<td>Section 3.7: Trusted Platform Module</td>
<td><p>Changed TPM to be implemented and enabled on all new devices models, lines or series by July 28, 2016</p>
<p>Added clarification all must be in compliance with TPM 2.0 ISO/IEC 11889 standard</p>
<p>Added clarification TPM configurations must comply with local laws and regulations</p>
<p>Added Firmware-based components that implement TPM capabilities must implement version 2.0 of the TPM specification</p>
<p>Added Hardware-based components that implement TPM capabilities must implement version 2.0 of the TPM specification</p>
<p>Removed SHA 1 measurements</p>
<p>Added TechNet article for TPM 1.2 and 2.0 version comparisons</p></td>
<td>Requirement adjustment</td>
</tr>
<tr class="odd">
<td>Security</td>
<td>IoT</td>
<td>Section 5.4 Trusted Platform Module</td>
<td><p>Changed TPM to be implemented and enabled on all new Windows 10 Mobile Enterprise editions based on IoT Mobile licensing for all new devices and platforms by July 28, 2016 and added clarification all devices must be in compliance with TPM 2.0 ISO/IEC 11889 standard</p>
<p>Clarified that Windows 10 IoT Core (IoT Core) requirements for TPM 2.0 are optional.</p></td>
<td>Requirement adjustment</td>
</tr>
<tr class="even">
<td>Storage</td>
<td>Server</td>
<td>Section 4.2.2 Storage Controller</td>
<td>Clarified a Logo Certified storage adapter must be included in systems running Windows Server 2016</td>
<td>Clarification</td>
</tr>
</tbody>
</table>

 

## Form factors


There are no changes to the supported form factors in Windows 10, version 1607.

## Device experiences


The changes will be described in a future documentation release.

## Hardware component guidelines


The following tables describes the changes for hardware component guidelines in Windows 10, version 1607.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Feature</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Bluetooth</p></td>
<td><p>Added the following Bluetooth profiles:</p>
<ul>
<li><p>Pre-pair Bluetooth devices during manufacturing, which allows for a seamless out-of-box experience that allows Bluetooth devices to just work.</p></li>
<li><p>Background Bluetooth process consent was added to maintain a user's privacy while developers find new ways to use Bluetooth.</p></li>
</ul>
<p>Added the following APIs/Profiles:</p>
<ul>
<li><p>Non-paired support for connections over RFCOMM, which allows apps to communicate with Windows over RFCOMM without having to pair the device.</p></li>
<li><p>Map apps can now use Cortana's voice for navigation.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

Other changes will be described in a future documentation release.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20What's%20new%20in%20Design%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




