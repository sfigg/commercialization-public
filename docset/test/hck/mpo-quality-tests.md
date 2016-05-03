---
author: joshbax-msft
title: MPO Quality Tests
description: MPO Quality Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fac307af-26b2-48a6-9e9d-23b5e7b83132
---

# MPO Quality Tests


These tests render a video frame in 3 different modes:

-   Reference mode (software)

-   DXVAHD mode

-   Multi-plane Overlays (YUV swapchains)

The renderings are captured using a capture card and compared with PSNR, depending on the result a test pass or fail depending on the tolerance threshold that is individually defined for each test. Thresholds are shown below:

**MPO Quality Test - 720p source to 1280x720 surface**

-   At least 50db between reference and DXVAHD/MPO

-   At least 50db between DXVAHD and MPO

**MPO Quality Test - 720p source to 1920x1080 surface**

-   At least 45db between reference and DXVAHD/MPO

-   At least 50db between DXVAHD and MPO

**MPO Quality Test - 1080p source to 1280x720 surface**

-   At least 45db between reference and DXVAHD/MPO

-   At least 50db between DXVAHD and MPO

**MPO Quality Test - 1080p source to 1920x1080 surface**

-   At least 50db between reference and DXVAHD/MPO

-   At least 50db between DXVAHD and MPO

**MPO Quality Test - 720x480 source to 1280x720 surface**

-   At least 40db between reference and DXVAHD/MPO

-   At least 50db between DXVAHD and MPO

**MPO Quality Test - 720x480 source to 1920x1080 surface**

-   At least 40db between reference and DXVAHD/MPO

-   At least 50db between DXVAHD and MPO

**MPO Quality Test - 720x480 source to 960x720 surface**

-   At least 40db between reference and DXVAHD/MPO

-   At least 50db between DXVAHD and MPO

**MPO Quality Test - 720x480 source to 1440x1080 surface**

-   At least 40db between reference and DXVAHD/MPO

-   At least 50db between DXVAHD and MPO

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM13.DisplayRender.MultiplaneOverlaySupport Device.Graphics.WDDM13.DisplayRender.MultiPlaneOverlayVideoProcessing</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

**Important**  
This test requires the following:

-   2 computers included in the same pool.

-   A video capture card capable of acquiring uncompressed video and is recognized as a webcam.

-   An HDMI cable to connect the device to be tested to the capture card in the frame server.

 

**To configure the test**

1.  Ensure that the frame capture server is not joined to a domain.

2.  Enable Network Discovery for the current profile.

3.  Turn off password protected sharing.

4.  Connect the capture card to this machine and install the required drivers.

5.  Install Windows on the device to be tested and do not join a domain. Make sure that YUV overlays are enabled and working before continuing.

6.  Connect the HDMI output of the device to be tested to the capture card in the frame capture server.

7.  On the device to be tested use Windows + P to use only the secondary monitor.

8.  Use the software provided with the capture card to ensure the following:

    -   The capture card is working.

    -   Compression is disabled.

    -   Resizing is disabled.

    -   The output is well aligned.

9.  Schedule the tests.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

If you get a frame capture initialization error, ensure that the machines can ping each other, the Windows Firewall is properly configured and not blocking communication, and there are no login issues. Domain joined machines are known to be problematic.

If DXVAHD wasn’t used during the test, ensure that the drivers needed to support DXVAHD decoding are properly installed.

If MPO wasn’t used during the test, ensure that the drivers needed to support MPO decoding are properly installed.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20MPO%20Quality%20Tests%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




