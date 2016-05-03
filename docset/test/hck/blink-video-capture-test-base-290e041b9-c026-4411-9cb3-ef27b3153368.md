---
author: joshbax-msft
title: Blink Video Capture Test base 2
description: Blink Video Capture Test base 2
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6c060f62-3055-4f8a-9ba9-6918f0776ac4
---

# Blink Video Capture Test base 2


This automated test validates multimedia video capture devices and video capture devices that follow the Institute of Electrical and Electronics Engineers (IEEE) Audio/Video Control (AV/C) protocol.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Streaming.Webcam.Base.AVStreamWDMAndInterfaceRequirements Device.Streaming.Webcam.Base.BasicPerf Device.Streaming.Webcam.Base.DirectShowAndMediaFoundation Device.Streaming.Webcam.Base.KSCategoryVideoCameraRegistration Device.Streaming.Webcam.Base.MultipleClientAppSupport Device.Streaming.Webcam.Base.ReportingCameraLocation Device.Streaming.Webcam.Base.SurpriseRemoval Device.Streaming.Webcam.Base.UsageIndicator Device.Streaming.Webcam.Base.WindowsCaputureInfrastructureCameraSupport Device.Streaming.Webcam.H264.H264Support Device.Streaming.Webcam.NonMSDriver.VideoInfoHeader2</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Blink%20Video%20Capture%20Test%20base%202%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




