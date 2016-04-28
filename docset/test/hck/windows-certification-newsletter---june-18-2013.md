---
author: joshbax-msft
title: Windows Certification Newsletter - June 18, 2013
description: Windows Certification Newsletter - June 18, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b141dfce-b6de-4644-bd4d-a5f195062f22
---

# Windows Certification Newsletter - June 18, 2013


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Windows Hardware Certification requirements for Windows 8.1 are now available](#hckreq)

[Early bird special for Windows 8.1 and Windows Server 2012 R2 submissions](#bird)

[New Hardware Logo License Agreement 2014 now available](#hwlogo)

[New Software Logo License Agreement version 1.7 now available](#swlogo)

[New logo artwork package and logo style guidelines available](#logoart)

[Simplified submissions for Windows 8.1 for certain devices](#simplified)

[How to submit a previously certified Windows 8 client device for Windows 8.1 recertification](#recert)

[8 GB SSHD support in Windows 8.1](#sshd)

## <a href="" id="hckreq"></a>Windows Hardware Certification requirements for Windows 8.1 are now available


New Hardware Certification requirements for systems, servers, devices, and filter drivers are now available for the coming Windows 8.1 and Windows Server 2012 R2 update.

The preview of the Windows Hardware Certification Kit (Windows HCK) will be made available on June 26, concurrent with the release of the public preview for Windows 8.1 (code-named “Windows Blue”) and Windows Server 2012 R2. You will be able to begin certifying your systems, servers, and devices at that time.

To make your review of the new document easier, notice the table of key changes. As with the Windows 8 requirements, the new document is organized by feature so that the related requirements that define the features are found together. You’ll find a *Product Type to Requirements to Test* mapping matrix to help you determine which requirements and tests define certification for a given product type.

The new requirements for the Windows 8.1 and Windows Server 2012 R2 update are now available [here](http://msdn.microsoft.com/library/windows/hardware/hh833793).

## <a href="" id="bird"></a>Early bird special for Windows 8.1 and Windows Server 2012 R2 submissions


The Windows Certification Program ensures that every certified product has been tested to install readily and run reliably on Windows 8.1 and Windows Server 2012 R2.

To help our hardware partners achieve certification, the Windows Certification team is pleased to announce that for a limited time we're reducing the submission fee. Effective with the release of Windows 8.1 Preview, the fee for every new submission for Windows 8.1 and Windows Server 2012 R2 logos will be only $100, a $150 discount. Please note this offer will last for a limited time. We'll announce the end date for the offer when Windows 8.1 Preview is released. Stay tuned!

This is a great opportunity to lower your development costs by downloading the latest Windows HCK and testing your system or device for submission. This offer is available to both device and system partners.

## <a href="" id="hwlogo"></a>New Hardware Logo License Agreement 2014 now available


The new Hardware Logo License Agreement (LLA) 2014 is now available. The new LLA has been updated to include information about the Windows 8.1 and Windows Server 2012 R2 operating systems.

**Note**  
You must sign the new LLA 2014 in order to upload any Hardware Certification Program submissions after Windows 8.1 Preview and Windows Server 2012 R2 Preview become available. The Dashboard site will block any attempted submissions after the Windows 8.1 Preview and Windows Server 2012 R2 Preview date unless you have signed the new LLA.

 

## <a href="" id="swlogo"></a>New Software Logo License Agreement version 1.7 now available


The new Software Logo License Agreement (LLA) version 1.7 is now available. The new LLA has been updated to include information about the Windows 8.1 and Windows Server 2012 R2 operating systems.

**Note**  
You must sign the new LLA 1.7 in order to upload any Software Certification Program submissions after Windows 8.1 Preview and Windows Server 2012 R2 Preview become available. The Dashboard site will block any attempted submissions after the Windows 8.1 Preview and Windows Server 2012 R2 Preview date unless you have signed the new LLA.

 

## <a href="" id="logoart"></a>New logo artwork package and logo style guidelines available


A new logo artwork package and new logo style guidelines are available for download on the [Windows Hardware Developer Dashboard](https://sysdev.microsoft.com/hardware/signup/). The new artwork package contains new artwork for glyphs, smaller sizes for the Windows symbol, and Windows Server 2012 R2 logo artwork.

## <a href="" id="simplified"></a>Simplified submissions for Windows 8.1 for certain devices


In many device areas for Windows 8.1, the device requirements and tests are identical to those of Windows 8. If your device has already passed Windows 8 certification we are confident it will pass Windows 8.1 certification. To simplify your testing efforts, we’re allowing a simplified testing regimen for the product types in the table below.

## <a href="" id="recert"></a>How to submit a previously certified Windows 8 client device for Windows 8.1 recertification


Windows 8 certified devices in the table below qualify for a reduced set of testing for a Windows 8.1 certification if:

-   The device was previously certified for Windows 8.

-   The device’s binaries haven’t changed since the submission for Windows 8. Only the INF is updated to reflect the new Windows version.

If the device meets these criteria, you can create a submission after the partner portal returns from servicing by following these steps:

1.  Using the new HCK, create a Windows 8.1 project, and run the Device.DevFund INF test.

2.  Package the results for submission upload by using the portal.

3.  Include the previous Windows 8 submission ID in the README folder.

4.  Reference errata ID 2657, “Windows 8 to Windows 8.1 driver certification update special,” in the README folder.

The submission will be processed in the following manner:

1.  Confirm the earlier Windows certification referenced in the README file.

2.  Confirm that the DevFund INF test passes.

3.  Confirm by using WinDiff that no driver binary changes occurred.

Assuming a successful review, no fees will be invoiced for the submission.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Windows 8.1 client devices eligible for simple recertification</th>
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

 

## <a href="" id="sshd"></a>8 GB SSHD support in Windows 8.1


Support for host-hinted solid state hybrid drives (SSHDs) is new in Windows 8.1. Windows 8.1 requirements for SSHDs state specific capacity and performance metrics.

To date, SSHDs with less than 12 GB of NAND have been excluded from certification because of initial concerns around user experience, as well as flash lifetime. Recent testing has indicated that the areas of concern are not problematic on the tested 8 GB SSHD implementations. As a result, Windows 8.1 will support 8 GB SSHD implementations with host-hints for a predetermined period of time.

These performance requirements will apply:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>8 GB SSHD</th>
<th>16+ GB SSHD</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Erratum ID</p></td>
<td><p>1649, 1648</p></td>
<td><p>1647</p></td>
</tr>
<tr class="even">
<td><p>NVM cache size (GB)</p></td>
<td><p>&gt;= 6 and &lt; 12</p></td>
<td><p>&gt;= 12</p></td>
</tr>
<tr class="odd">
<td><p>Seq. read (QD: 1)</p></td>
<td><p>90 MBps</p></td>
<td><p>90 MBps</p></td>
</tr>
<tr class="even">
<td><p>Seq. write (QD: 1)</p></td>
<td><p>15 MBps</p></td>
<td><p>40 MBps</p></td>
</tr>
<tr class="odd">
<td><p>Random read (QD: 1)</p></td>
<td><p>8 MBps</p></td>
<td><p>8 MBps</p></td>
</tr>
<tr class="even">
<td><p>Random read (QD: 8)</p></td>
<td><p>N/A</p></td>
<td><p>N/A</p></td>
</tr>
<tr class="odd">
<td><p>Random write (QD: 1)</p></td>
<td><p>3 MBps</p></td>
<td><p>3 MBps</p></td>
</tr>
<tr class="even">
<td><p>Random write (QD: 8)</p></td>
<td><p>N/A</p></td>
<td><p>N/A</p></td>
</tr>
</tbody>
</table>

 

Random IO performance requirements with a queue depth of 8 will not be enforced under this erratum.

The errata with IDs 1647, 1648, and 1649 will take effect on June 17, 2013, and be valid until Jan 1, 2015. After Jan 1, 2015, performance and capacity requirements – as published – have to be met for certification.

To certify a hybrid with less than 12 GB of NAND, apply errata 1649 and 1648.

To certify a hybrid with 12 or more GB of NAND, apply erratum 1647.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](http://msdn.microsoft.com/library/windows/hardware/dn339175.aspx)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20June%2018,%202013%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





