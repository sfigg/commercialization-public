---
author: joshbax-msft
title: Windows Certification Newsletter - April 9, 2013
description: Windows Certification Newsletter - April 9, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 923f69d8-2576-4603-a16d-88be5afd31d9
---

# Windows Certification Newsletter - April 9, 2013


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[QFE 10 for the HCK Now Available](#qfe)

[Windows Certification Newsletter - April 23, 2013](windows-certification-newsletter---april-23-2013.md#jigs)

[Windows Certification Newsletter - April 23, 2013](windows-certification-newsletter---april-23-2013.md#posttime)

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

[Newsletter archive](http://msdn.microsoft.com/library/windows/hardware/dn339175.aspx)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20April%209,%202013%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





