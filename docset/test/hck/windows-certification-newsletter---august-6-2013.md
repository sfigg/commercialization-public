---
author: joshbax-msft
title: Windows Certification Newsletter - August 6, 2013
description: Windows Certification Newsletter - August 6, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a26a640e-c625-465b-94c2-e7460d32bbf4
---

# Windows Certification Newsletter - August 6, 2013


This newsletter provides up-to-date news about the Windows Certification (formerly Logo) Program and often provides info you can't get anywhere else. Did you get this from a friend? [Subscribe now](http://go.microsoft.com/fwlink/p/?linkID=313282) so you don't miss any important updates or changes.

## In this issue


[HCK QFE 06 now available](#hck6)

[Fast-track Windows 8.1 certification](#fast86)

## <a href="" id="hck6"></a>HCK QFE 06 now available


For information about QFE updates, see [Windows Hardware Certification Kit QFE Updates](windows-hardware-certification-kit-qfe-updates.md).

To get the latest QFEs for the Windows HCK, run [HCKSetup.exe](http://msdn.microsoft.com/windows/hardware/bg127147). The Windows HCK download includes all previous QFE updates.

[Learn what’s in the QFE](windows-hardware-certification-kit-qfe-updates.md)

[Download and install HCK to get the QFE](http://msdn.microsoft.com/windows/hardware/bg127147)

[Download the QFE now](http://msdn.microsoft.com/windows/hardware/bg127147)

**Note**  
Before applying the QFE, close all active DTM Studio sessions. Applying this QFE might affect in-progress submissions, so please complete any submissions before applying the QFE. After installing this QFE, you'll need to regenerate any affected submission that was generated before the QFE was installed.

 

## <a href="" id="fast86"></a>Fast-track Windows 8.1 certification


You can fast-track Windows 8 certified devices listed in the table below for Windows 8.1 certification if:

-   The device was previously certified for Windows 8.

-   The device's binaries haven't changed since the submission for Windows 8. Only the INF is updated to reflect the new Windows version.

If the device meets these criteria, here's how you can create a submission:

1.  Use the new Windows HCK for Windows 8.1, create a Windows 8.1 project, and run the Device.DevFund INF test.

2.  Use the Dashboard to package the results for submission upload.

3.  Include the previous Windows 8 submission ID in the README file.

4.  Reference errata ID 2657, "Windows 8 to Windows 8.1 driver certification update special," in the README file.

Submissions are reviewed for these items:

1.  The earlier Windows certification referenced in the README file.

2.  The DevFund INF test passes.

3.  No driver binary changes occurred (by using WinDiff).

If the review is successful, there's no cost for the submission.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Certified Windows 8 devices and drivers that can be resubmitted for Windows 8.1 using the plan above</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Digital Video Camera</p></td>
</tr>
<tr class="even">
<td><p>Digital Media Renderer</p></td>
</tr>
<tr class="odd">
<td><p>Digital Still Camera</p></td>
</tr>
<tr class="even">
<td><p>Distribution Scan Management Enabled Device</p></td>
</tr>
<tr class="odd">
<td><p>Enterprise WSD Multifunction Printer</p></td>
</tr>
<tr class="even">
<td><p>Game Controller</p></td>
</tr>
<tr class="odd">
<td><p>Generic Controller</p></td>
</tr>
<tr class="even">
<td><p>Graphics Tablet</p></td>
</tr>
<tr class="odd">
<td><p>Hard Drive – HDD, SSD</p></td>
</tr>
<tr class="even">
<td><p>LAN</p></td>
</tr>
<tr class="odd">
<td><p>LCD</p></td>
</tr>
<tr class="even">
<td><p>Monitor</p></td>
</tr>
<tr class="odd">
<td><p>Multifunction Printer</p></td>
</tr>
<tr class="even">
<td><p>Optical Drive</p></td>
</tr>
<tr class="odd">
<td><p>Pen Digitizer</p></td>
</tr>
<tr class="even">
<td><p>Printer</p></td>
</tr>
<tr class="odd">
<td><p>Removable Storage</p></td>
</tr>
<tr class="even">
<td><p>Router</p></td>
</tr>
<tr class="odd">
<td><p>Scanner</p></td>
</tr>
<tr class="even">
<td><p>SDIO Controller</p></td>
</tr>
<tr class="odd">
<td><p>Signature Tablet</p></td>
</tr>
<tr class="even">
<td><p>Smart Card</p></td>
</tr>
<tr class="odd">
<td><p>Smart Card Reader</p></td>
</tr>
<tr class="even">
<td><p>Storage Array</p></td>
</tr>
<tr class="odd">
<td><p>Storage Controller (Client)</p></td>
</tr>
<tr class="even">
<td><p>Storage Spaces Adapter (Client)</p></td>
</tr>
<tr class="odd">
<td><p>Storage Spaces Drive</p></td>
</tr>
<tr class="even">
<td><p>Storage Spaces Enclosure</p></td>
</tr>
<tr class="odd">
<td><p>Touch</p></td>
</tr>
<tr class="even">
<td><p>Touch Monitor</p></td>
</tr>
<tr class="odd">
<td><p>USB Hub</p></td>
</tr>
<tr class="even">
<td><p>WSD Multifunction</p></td>
</tr>
<tr class="odd">
<td><p>WSD Printer</p></td>
</tr>
<tr class="even">
<td><p>WSD Scanner</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20August%206,%202013%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





