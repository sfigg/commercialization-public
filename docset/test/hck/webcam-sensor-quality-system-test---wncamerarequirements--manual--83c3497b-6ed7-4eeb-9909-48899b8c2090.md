---
author: joshbax-msft
title: Webcam Sensor Quality System Test - WNCameraRequirements (Manual)
description: Webcam Sensor Quality System Test - WNCameraRequirements (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
Search.SourceType: Video
ms.assetid: 44eb0d30-b768-4807-9656-c9414a6e49dd
---

# Webcam Sensor Quality System Test - WNCameraRequirements (Manual)


The [Windows Hardware Certification Program](windows-hardware-certification-program-overview.md) defines a minimum bar for video capture quality of devices that have integrated cameras. The Webcam Capture Requirements test is required for systems that include one or more built in cameras (for example, laptops, tablets, all-in-one personal computers). This test verifies that the system meets the requirements for a high quality real-time capture experience.

This test does not require a dedicated light room; it can be performed in a standard office environment by using the described test setup.

This test is implemented in the Windows Hardware Certification Kit (Windows HCK). The Windows HCK tests measure video streams and the quality of captured images from the device under test (DUT) during streaming video capture at various resolutions. Images of a specified poster, which includes both color and image clarity features, are captured under controlled lighting conditions.

The tests estimate key video quality metrics in the following areas:

-   Image acuity

-   Noise

-   Color quality

-   Geometry

-   Timing

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Webcam.Specification.WNCameraRequirements</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Experiences Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the tests


Before you run the test, complete the test setup as described in the test requirements: [Webcam Testing Prerequisites](webcam-testing-prerequisites.md).

**Step-by-step instructions for setting up the test:**

Watch the following video demonstration.

<iframe src="https://hubs-video.ssl.catalog.video.msn.com/embed/caa1967e-1e59-484a-b55b-23dd3efe70d7/IA?csid=ux-en-us&MsnPlayerLeadsWith=html&PlaybackMode=Inline&MsnPlayerDisplayShareBar=false&MsnPlayerDisplayInfoButton=false&iframe=true&QualityOverride=HD" width="720" height="405" allowFullScreen="true" frameBorder="0" scrolling="no"></iframe>

[Download the video (MP4)](http://content5.catalog.video.msn.com/e2/ds/c7cb1516-1219-45d7-a3e1-cc757efdf16c.mp4)

[Send feedback about this video](mailto:lhdocfb@microsoft.com?subject=HCKWebcamSensorQTestSetupVIDEO&body=%0D%0A%0D%0AMicrosoft%20uses%20your%20feedback%20to%20improve%20its%20products,%20services%20and%20documentation.%20While%20we%20are%20investigating%20the%20issue%20you%20report,%20we%20may%20send%20e-mail%20to%20you%20to%20ask%20for%20further%20details%20or%20clarification%20on%20the%20feedback%20you%20send%20to%20us,%20and%20we%20may%20send%20e-mail%20to%20you%20to%20let%20you%20know%20that%20your%20feedback%20has%20been%20addressed.%C2%A0%20We%20do%20not%20use%20your%20e-mail%20address%20for%20any%20other%20purpose.%0D%0AFor%20technical%20support,%20contact%20http://go.microsoft.com/fwlink/?LinkId=143702.%0D%0A%0D%0A%20For%20further%20information%20about%20the%20Microsoft%20Online%20Privacy%20Statement,%20please%20see%20http://go.microsoft.com/fwlink/?LinkId=143701.)

The following additional test equipment is required to run the video tests:

1.  Video test chart:

    -   xRite ColorChecker chart. See *Figure 1. Video Test Chart*.

    -   National Institute of Standards and Technology (NIST) calibrated lux meter (for example, INS DX-100). You should calibrate the lux meter anually.

    -   Printout of the test chart (that is shown in *REF \_Ref311027164 \\h Figure 1. Video Test Chart*), on matte paper by using a high quality inkjet (for example, an HP Z2100). You can access and print this high resolution PDF test chart from: [http://download.microsoft.com/download/8/0/0/80080840-64DC-4929-9B67-16B83E946C6B/HCK Video Test Chart.pdf](http://download.microsoft.com/download/8/0/0/80080840-64DC-4929-9B67-16B83E946C6B/HCK Video Test Chart.pdf).

        ![example test poster](images/hck-winb-figure1-testposter.jpg)

    -   After you print the test chart, mount the color checker and the light meter. The light meter sensor and display should both be mounted and in the field of view. This allows you to measure light levels at test time and to validate light levels by reading the display from captured images.

2.  Dimmable lights

    -   Two impact light stands. Any type is acceptable as long as they allow for the positioning that is described in this topic.

    -   Two light mounts that have reflectors; for example, an Impact 5" Reflector Floodlight Kit.

    -   INSTEON Plug-In Lamp Dimmer Module. Any type is acceptable as long as it has two plugs so that you can control two lights simultaneously (with equal lighting), and the granularity of adjustment to achieve the target 80 & 20 lux (+/- 10%).

    -   INSTEON Wireless Keypad RemoteLinc 2 (optional).

    -   3-to-1 extension cord. Any type is acceptable as long as it can connect to the Insteon dimmer module.

    -   Two units HYPERLINK "http://www.amazon.com/Philips-422154-12-5-Watt-Light-Dimmable/dp/B008NNZSXU" Philips 424382 12.5-Watt A19 LED Light Bulb, Dimmable

    An example DUT and lighting configuration is shown in *REF \_Ref311027182 \\h Figure 2. Video Test Setup*. The lighting that is used in this example is A19 LED-lighting at 20 and 80 lux on the test target.

    ![video test setup](images/fig2-videotestsetup-webcamcapturerequirementstest.jpg)

**To run the video capture test**

1.  Start the test by using the Windows HCK Studio Test Scheduler.

2.  Position the DUT as shown in *REF \_Ref311027182 \\h Figure 2. Video Test Setup*.

3.  Turn off all ambient lighting.

4.  The test prompts you to set the light level and test position:

    1.  In light setting mode, the test automatically dims the screen to allow accurate measurement of the light level.

    2.  Adjust the dimmer to get the required number of lux. An acceptable range is 18 to 22 and 72 to 88.

    3.  Confirm the light level and exact distance from the camera to the target chart.

5.  If the system has both front and back cameras, repeat steps 2-4 for the second camera.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Streaming Testing](troubleshooting-devicestreaming-testing.md).

### Troubleshooting specific errors

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description/Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Setup: test can’t find Region of Interest (ROI)</p></td>
<td><p>The test looks for Region of Interest (ROI) markers (black and white circles) at known locations on the test. If the test cannot identify ROI markers, then the test cannot run properly. Failure to detect ROI might be due to a poorly aimed camera or unusable video capture from the camera (for example, too dark).</p>
<p>If preview window is not a usable video (for example, 100% gray image due to failed capture, or too dark), exit the test and verify the camera functionality with an independent camera application under test lighting conditions (for example, AMCap) before proceeding.</p>
<p>If the preview window provides a usable image that has clearly recognizable ROI markers, reposition the camera according to the test procedure conditions.</p></td>
</tr>
<tr class="even">
<td><p>Setup: Region of Interest doesn’t fit within field of view of camera</p></td>
<td><p>The test looks for ROI markers at known locations on the test. If the test cannot identify ROI markers, then the test cannot run properly.</p>
<p>You might need to position smaller field of view cameras (for example, rear facing cameras) farther than 0.5 m from the test target to capture the required ROI.Reposition the camera according to the test procedure and verify that the camera provides a usable image under test lighting conditions. To avoid an inaccurate measurement for the field of view requirement, enter the new distance into the test application.</p></td>
</tr>
</tbody>
</table>

 

### Troubleshooting position problems

This section shows three examples of the most common camera positionining problems. To aid in troubleshooting these types of issues, Windows HCK saves a marked-up version of the image file (look for files that have “ROI” in the file name). The marked-up file includes small red, green and blue markers at key positions on the chart. Markers are as follows:

-   Green dot in the center of the four black and white circles.

-   Four red dots that mark the boundaries of each color square in the color chart.

-   Red and green dots in the center of the white and gray slanted edge chart. The red dot should cover the green dot (hiding it), or the two dots should be within five pixels of each other.

-   Four red dots that outline the region of interest for a horizontal MTF measurement. The slanted edge should be in this region at an approximate angle of seven degrees from the vertical direction.

-   Four blue dots that outline the region of interest for a vertical MTF measurement. The slanted edge should be in this region and at an approximate angle of seven degrees from the horizontal direction.

In *Figure 3. Incorrect Position because of Keystoning*, ROI markers do not form a rectangle because the camera is not perpendicular to the target.

![keystoning problem](images/hck-winb-figure3-keystoning-cameradiscretional.png)

In *Figure 4. Position Not Level*, position markers form a rectangle that is rotated relative to the field of view.

![camera not level](images/hck-winb-figure4-notlevel-cameradiscretional.png)

*Figure 5. Poor Centering*, shows two or more image markers that are outside of the field of view.

![not centered](images/hck-winb-figure5-notcentered-cameradiscretional.png)

 

 






