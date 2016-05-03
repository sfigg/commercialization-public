---
author: joshbax-msft
title: Windows Hardware Certification Kit (HCK) Supplemental Test Content
description: Windows Hardware Certification Kit (HCK) Supplemental Test Content
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d51b422e-b10d-4671-a53d-7ebe59ffb4ec
---

# Windows Hardware Certification Kit (HCK) Supplemental Test Content


Some Windows HCK tests require additional files that are not included in the Windows HCK because of their size or for security reasons. These tests are marked as requiring supplemental content. If you need to run tests with supplemental content, download and install the supplemental package.

## Supplemental Content for Windows HCK Private Cloud Simulator (PCS) Tests for Cloud Solutions


The supplemental content applies to PCS Tests for Solutions.

![download image](images/downloadbutton.jpg)[Windows HCK PCS Files.vhd](http://download.microsoft.com/download/1/D/9/1D902B27-096E-449F-9774-8C03AFB1ABF5/PCSFiles.vhd)

This supplement content package is required to pass the Solution System Tests. After you download this package, follow these steps to install these files on your Windows HCK Controller prior to running the tests:

1.  The Windows HCK must already be installed. On the server that has the Windows HCK controller installed, go to the following location: C:\\Program Files (x86)\\Windows Kits\\&lt;version&gt;\\Hardware Certification Kit\\Tests\\amd64

2.  Place PCSFiles.vhd at that location

## Supplemental Content for Windows HCK Tests for DXVA Multimedia Tests


This supplemental content applies to DXVA tests for multimedia devices.

![download image](images/downloadbutton.jpg)[Windows HCK for Windows 8.1: HCK\_DXVA.ISO](http://download.microsoft.com/download/F/C/E/FCE1F4C0-0106-496A-9FE8-12B2F844A295/HCK_DXVA.ISO)

![download image](images/downloadbutton.jpg)[Windows HCK 2.0: HCK\_DXVA.ISO](http://download.microsoft.com/download/F/2/9/F29F1754-DF5B-4C00-B72E-2B61B46E7894/HCK_DXVA.ISO)

This supplemental content package is required to pass the DXVA Multimedia Tests. After you download this package, follow these steps to install these files on your Windows HCK Controller before running the tests:

1.  The Windows HCK must already be installed. On the server that has the Windows HCK controller installed, go to C:\\Program Files (x86)\\Windows Kits\\&lt;version&gt;\\Hardware Certification Kit

2.  Copy the files from the downloaded ISO to the Windows HCK Controller:

    **For Windows HCK for Windows 8.1**

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>From</th>
    <th>To</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>&lt;ISO&gt;\Tests\DXVAContent</p></td>
    <td><p>%HCK Root%\Tests\DXVAContent</p></td>
    </tr>
    </tbody>
    </table>

     

    **For Windows HCK 2.0**

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>From</th>
    <th>To</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>&lt;ISO&gt;\Tests\DXVAContent\H264\</p></td>
    <td><p>%HCK Root%\Tests\DXVAContent\H264\</p></td>
    </tr>
    <tr class="even">
    <td><p>&lt;ISO&gt;\Tests\DXVAContent\WMV\</p></td>
    <td><p>%HCK Root%\Tests\DXVAContent\WMV\</p></td>
    </tr>
    <tr class="odd">
    <td><p>&lt;ISO&gt;\Tests\DXVAContent\MPEG2\</p></td>
    <td><p>%HCK Root%\Tests\DXVAContent\MPEG2\</p></td>
    </tr>
    <tr class="even">
    <td><p>&lt;ISO&gt;\Tests\DXVAContent\Win7\</p></td>
    <td><p>%HCK Root%\Tests\DXVAContent\Win7\</p></td>
    </tr>
    </tbody>
    </table>

     

This is the only action required.  Once the files are in the correct folder on the Windows HCK Controller, the tests will find and install the files on the Windows HCK Client during testing.

## Supplemental Content for Windows HCK Tests for HMFT Multimedia Tests


This supplemental content applies to HMFT Tests for Multimedia devices. You will need to download and install both volumes to run the HMFT tests.

![download image](images/downloadbutton.jpg)[Windows HCK for Windows 8.1: HCK\_HMFT\_Vol1.ISO](http://download.microsoft.com/download/F/C/E/FCE1F4C0-0106-496A-9FE8-12B2F844A295/HCK_HMFT_Vol1.ISO)

![download image](images/downloadbutton.jpg)[Windows HCK for Windows 8.1: HCK\_HMFT\_Vol2.ISO](http://download.microsoft.com/download/F/C/E/FCE1F4C0-0106-496A-9FE8-12B2F844A295/HCK_HMFT_Vol2.ISO)

![download image](images/downloadbutton.jpg)[Windows HCK 2.0: HCK\_HMFT\_Vol1.ISO](http://download.microsoft.com/download/0/6/6/0668E9C0-7037-491B-9A62-12E97F998E33/HCK_HMFT_Vol1.ISO)

![download image](images/downloadbutton.jpg)[Windows HCK 2.0: HCK\_HMFT\_Vol2.ISO](http://download.microsoft.com/download/3/C/3/3C30C801-44E2-4C1C-ABC5-83FF4492DA5F/HCK_HMFT_Vol2.ISO)

This supplemental content package is required to pass the DXVA and HMFT Multimedia Tests.  After you download this package, follow these steps to install these files on your HCK Controller prior to running the tests:

1.  The Windows HCK must already be installed. On the server that has the Windows HCK controller installed, go to the following location: C:\\Program Files (x86)\\Windows Kits\\&lt;version&gt;\\Hardware Certification Kit

2.  Copy the files from the downloaded ISO to the Windows HCK Controller:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>From</th>
    <th>To</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>&lt;ISO&gt;\Tests\HMFTContent\</p></td>
    <td><p>%HCK Root%\Tests\HMFTContent\</p></td>
    </tr>
    </tbody>
    </table>

     

This is the only action required.  Once the files are in the correct folder on the Windows HCK Controller, the tests will find and install the files on the Windows HCK Client during testing.

## Supplemental Content for Windows HCK Tests for Network Media Devices


This supplemental content applies to Network Media Devices

![download image](images/downloadbutton.jpg)[Windows HCK for Windows 8.1: en-us\_HCK.iso](http://download.microsoft.com/download/F/C/E/FCE1F4C0-0106-496A-9FE8-12B2F844A295_HCK.ISO)

![download image](images/downloadbutton.jpg)[Windows HCK 2.0: en-us\_HCK.iso](http://download.microsoft.com/download/4/6/E/46E1BF31-418C-448E-9A9F-714E4263A0D0_HCK.iso)

This supplemental content package is required to pass the NMD Device Tests.  After you download this package, follow these steps to install these files on your Windows HCK Controller prior to running the tests:

1.  The Windows HCK must already be installed. On the server that has the Windows HCK controller installed, go to the following location: C:\\Program Files (x86)\\Windows Kits\\&lt;version&gt;\\Hardware Certification Kit\\Tests\\x86fre\\NTTEST\\MULTIMEDIATEST\\Sharing\\NetMediaLogoTests

2.  Create a new folder called Media.

3.  Copy the contents from the **Media folder on the ISO** download to this new folder.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Hardware%20Certification%20Kit%20%28HCK%29%20Supplemental%20Test%20Content%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




