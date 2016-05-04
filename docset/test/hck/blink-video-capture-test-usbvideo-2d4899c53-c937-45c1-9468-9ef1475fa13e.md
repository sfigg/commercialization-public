---
author: joshbax-msft
title: Blink Video Capture Test USBVideo 2
description: Blink Video Capture Test USBVideo 2
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8a3304e3-8305-4b6a-bf0a-e703e2c08c98
---

# Blink Video Capture Test USBVideo 2


This test is functionally equivalent to [Blink Video Capture Test base 2](blink-video-capture-test-base-290e041b9-c026-4411-9cb3-ef27b3153368.md), which validates multimedia video capture devices and video capture devices. This test runs if the device that you are testing uses a driver that is not included with Windows. This test includes the same test cases as the Blink Video Capture Test (Base) test.

For more information, see [Blink Video Capture Test base 2](blink-video-capture-test-base-290e041b9-c026-4411-9cb3-ef27b3153368.md).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Streaming.Webcam.NonMSDriver.VideoInfoHeader2</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Webcam Testing Prerequisites](webcam-testing-prerequisites.md).

Additionally:

-   Before you install the Windows Driver Kit (WDK), you must install the video capture device on the test system, and it must be enumerated.

-   If the device has a recording medium (such as a tape, disk, or memory card), load the recording medium before running the test.

-   Some camcorders enter a power-save mode or turn themselves off when they’re not used. Before you run this test, make sure the device is turned on.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Streaming Testing](troubleshooting-devicestreaming-testing.md).

The test log provides information about any failures, including whether the computer stops responding.

## More information


Video capture devices are cameras and audio/video input devices that bring streaming multimedia data to a computer. These devices provide the video in a format that the Windows operating system and its client applications can use.

Video capture devices come in the following physical categories:

-   Cameras receive data through a lens (a transparent device to receive and focus light).

-   Lensless devices receive their data through a different mechanism, such as an S-Video cable or an antenna.

In the Windows operating system, the Image Class installer installs cameras, and the Media Class installer installs lensless video capture devices. If you install a USB Video Class (UVC) device and a TV tuner, each device appears under a different class (even though they are both video capture devices) in Windows Device Manager.

Cameras can be categorized as either still-image or streaming-image devices. Still-image cameras capture single frames at a high resolution. Streaming-image video capture cameras capture a series of frames that are intended to be used sequentially.

Certification for video capture is primarily intended for simple A/V input devices, tethered webcams, and portable camcorders.

Webcams are single-purpose cameras that are attached (that is, tethered) to a computer through a USB cable that provides both power and I/O. Some USB webcams include batteries and simple onboard storage for still pictures, so that they can function independently.

Camcorders are fully functional whether or not they are attached to a computer. Camcorders have sophisticated onboard storage for recording streaming audio and video. Tape is the usual storage medium, but some devices record to a writeable DVD. DV and MPEG-2 are the most common streaming media that camcorders support.

This test includes the functionality of the deprecated AV/C Tape Subunit Compliance test (MSTapeTst.exe). This test evaluates IEEE 1394 AV/C devices for specification compliance. For more information, see the [IEEE 1394 Trade Association's website](http://go.microsoft.com/fwlink/?LinkId=235055).

**Note**  
Support for IEEE 1394 devices is deprecated in Windows HCK.

 

The following types of video capture devices have separate logo programs:

-   Cameras that are designed for single-frame image capture.

-   Broadcast receivers (also called TV tuners). These are hardware and software that bring broadcast signals (through a cable, a satellite, or over the air) into a computer. Broadcast audio/video options include FM radio, analog television tuners (NTSC, PAL, or SECAM), and digital television tuners (ARIB, ATSC, DVB, and DSS).

When the test starts, it automatically enumerates all devices that are audio/video capture devices by using the Microsoft® DirectShow® API. DirectShow is the Windows multimedia API, and its use is required for the logo program.

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
<td><p>WDKDeviceID</p></td>
<td><p>Specifies the Plug and Play (PnP) ID of the device to be tested.</p>
<p>Example: \\?\root#media#0001#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global</p></td>
</tr>
<tr class="even">
<td><p>TestExe</p></td>
<td><p>The name of the test executable. In this test, the test executable should be Blink.exe.</p></td>
</tr>
<tr class="odd">
<td><p>TestExePath</p></td>
<td><p>The partial path to the test executable.</p></td>
</tr>
<tr class="even">
<td><p>TestPro</p></td>
<td><p>The name of the test profile.</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Blink</strong></p></td>
<td><p>Without any options, the test enumerates devices.</p></td>
</tr>
<tr class="even">
<td><p><strong>-c [string]</strong></p></td>
<td><p>Runs the test cases that are specified in the .pro file.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-h [string]</strong></p></td>
<td><p>Specifies the Plug and Play (PnP) ID of the device to be tested.</p>
<p>Example: \\?\root#media#0001#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global</p></td>
</tr>
<tr class="even">
<td><p><strong>-l</strong></p></td>
<td><p>Specifies the type of log file to create for storing test results.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Blink.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\</p></td>
</tr>
<tr class="even">
<td><p>BlinkStandard.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\vidcap\external\</p></td>
</tr>
<tr class="odd">
<td><p>S98wtt.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\common\</p></td>
</tr>
</tbody>
</table>

 

 

 






