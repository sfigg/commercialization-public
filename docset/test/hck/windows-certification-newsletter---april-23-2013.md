---
author: joshbax-msft
title: Windows Certification Newsletter - April 23, 2013
description: Windows Certification Newsletter - April 23, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8c58a0e3-6fb5-4d4b-986d-d9a625b2660a
---

# Windows Certification Newsletter - April 23, 2013


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[QFE 10 for the HCK Now Available](#qfe)

[Jigs Rentals: More Options for Performing Windows Touch Tests](#jigs)

[UEFI POST TIME Requirement Relaxed for Some All-In-One Systems Updates](#posttime)

## <a href="" id="qfe"></a>QFE 10 for the HCK Now Available


QFE 10 for the Windows Hardware Certification Kit (Windows HCK) is available for download. This QFE is important for display certification and those creating Hyper-V Extensible Switch extensions. Specifically the QFE addresses:

-   A regression, introduced with QFE 007, in the display gatherer that causes Display device capabilities to report inaccurately.

-   An issue where logo certified extensions were not listed on <http://www.WindowsServerCatalog.com>. A new product type, vSwitchExtention, was added to WHCK to identify certification submissions for Hyper-V Extensible Switch extensions. This product type is now carried with the submission to Microsoft’s web portal. These switch extensions will display in the Windows Server Catalog under the Hyper-V Switch Extensions area.

**Download it now:**<http://msdn.microsoft.com/windows/hardware/jj553782>

## <a href="" id="jigs"></a>Jigs Rentals: More Options for Performing Windows Touch Tests


The Windows 8 Touch Test Jigs — Precision Touch Test Tool (PT3) and Rotation and Acoustic Tool (RA) — now are available from two sources to support both capacitive-based and optical-based touch technologies.

For detailed test specifications and availability, please contact one of these certified jig vendors:

-   **Triex Technologies, Inc.**

    Tim Wright, Timw@triextech.com, +1 (206) 940-0943

-   **Industrial Technology Research Institute**

    Sen-Yih Chou, Senyih@itri.org.tw, +886 (03) 5743887

Industrial Technology Research Institute also offers a laboratory with test jigs for rental as an option for ecosystem partners performing the Windows touch tests. The service starts April 10, 2013. For facilities information, please contact:

-   **Test Jigs**

    PT3 (HPT-2-25) and RA Tool (TPL-3)

-   **Open hours**

    Monday to Thursday, 9:00 am to 5:00 pm

-   **Reservations required**

    24 hours in advance at least

-   **Laboratory rental and basic supply fees**

    NTD 1,500 per hour (tax excluded)

-   **Contact**

    PT3 (HPT-2-25) Wen-Lan Tseng, +886-3-5732296, wing@itri.org.tw, <http://goo.gl/maps/JyNjI>

-   **Location**

    Bldg. 12, 321, Sec. 2, Kuang Fu Rd., Hsinchu, 30011, Taiwan, R.O.C.

## <a href="" id="posttime"></a>UEFI POST TIME Requirement Relaxed for Some All-In-One Systems Updates


Based on additional industry feedback, we're relaxing the UEFI POST TIME requirement to enable large storage capacity in all-in-one systems.

Conditions:

-   PCs must be an all-in-one system with integrated displays.

-   AIO Systems must meet the POST Time Boundary listed in the table below. For example, systems with a disk that is more than or equal to 1TB but less than 2TB capacity must POST in 9 seconds or less.

-   Systems shipping after December 31, 2014, must meet the requirements published on [MSDN](http://msdn.microsoft.com/).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>System Storage Capacity</th>
<th>POST time boundary</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>&lt; 1TB</p></td>
<td><p>8 sec (was 4 sec)</p></td>
</tr>
<tr class="even">
<td><p>&gt;= 1TB &amp; &lt;2TB</p></td>
<td><p>9 sec (was 7 sec)</p></td>
</tr>
<tr class="odd">
<td><p>&gt;= 2TB &amp; &lt;3TB</p></td>
<td><p>10 sec (same as before)</p></td>
</tr>
<tr class="even">
<td><p>&gt;= 3TB &amp; &lt;4TB</p></td>
<td><p>14 sec (same as before)</p></td>
</tr>
<tr class="odd">
<td><p>&gt;= 4TB</p></td>
<td><p>15 sec (same as before)</p></td>
</tr>
</tbody>
</table>

 

This delayed enforcement erratum begins April 15, 2013, when the UEFI requirement Erratum 478 relaxation expires, and ends in December 2014.

To take advantage of this new delayed enforcement, Include ID 1250 in your README file starting April 15, 2013.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 







