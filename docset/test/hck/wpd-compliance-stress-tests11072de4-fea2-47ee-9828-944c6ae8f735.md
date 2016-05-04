---
author: joshbax-msft
title: WPD Compliance Stress Tests
description: WPD Compliance Stress Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: aabe30b1-9c44-4776-b8b2-f271aa5ff66f
---

# WPD Compliance Stress Tests


This test exercises the driver by using the Windows Portable Device (WPD) API and validates that the device or driver complies with the Windows Hardware Certification requirements. This test is required to run for at least 24 hours as a prolonged stress test.

**Note**  
This test does not cover the following items:

-   Legacy driver testing (only WPD class drivers are tested)

-   Device-protocol-specific requirements (this testing is covered in separate certification tests)

-   Digital Rights Management testing

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.Core.AudioCodec Device.Portable.Core.MediaSync Device.Portable.Core.MTP Device.Portable.Core.MTPFunctionality Device.Portable.Core.MTPObjectProperties Device.Portable.Core.TransportBluetooth Device.Portable.Core.TransportIP Device.Portable.Core.TransportUSB Device.Portable.Core.VideoCodec</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~120 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Device.Portable Testing Prerequisites](deviceportable-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Portable Testing](troubleshooting-deviceportable-testing.md).

When you are troubleshooting this test, note the following:

-   This test supports verbose logging when in manual test case selection mode. When the application is running, in **Options** &gt; **Logging Options**, select **Destination: Window**, and then select **Level: 10**.

-   If no test cases are available from the test case selection tree, make sure that the device is plugged in.

For more information about requirements for portable device drivers, see [Basic WPD Device Driver Requirements](http://go.microsoft.com/fwlink/p/?LinkId=237710).

## More Information


The WPD Compliance Stress Tests runs as a C++ application. When run outside HCK Studio, there is a test case selection user interface and test suites can be defined using test profiles. The test is fully automated and provides a Pass/Fail result for each requirement. The test validates the following for a WPD driver and the device connected to it.

Device/driver passes these common scenarios for content types and formats that it supports:

-   Object hierarchy enumeration

-   Object property retrieval

-   Object resource reads from device

-   Object resource writes to device

-   Object deletion

-   Power management

-   Device-generated or driver-generated events

Device/driver supports the following known function categories:

-   Required object properties and attributes

-   Resources and attributes

### Function category requirements

Recommended:

-   **WPD\_FUNCTIONAL\_CATEGORY\_STORAGE**

-   **WPD\_FUNCTIONAL\_CATEGORY\_DEVICE**

-   **WPD\_FUNCTIONAL\_CATEGORY\_SMS**

Optional:

-   **WPD\_FUNCTIONAL\_CATEGORY\_STILL\_IMAGE\_CAPTURE**

-   **WPD\_FUNCTIONAL\_CATEGORY\_AUDIO\_CAPTURE**

### Content type and format requirements

If a content type is not supported, the format support will not be verified. There are no strict requirements on the format or content type, because this is typically an implementation detail for device firmware. The driver can report support for any format or content type, as long as it passes the functional scenario tests that use objects of formats that it supports, like transfer, deletion, and enumeration. These formats and content types can serve as a guideline:

-   Recommended content type: **WPD\_CONTENT\_TYPE\_AUDIO**

-   Recommended formats:

    -   **WPD\_OBJECT\_FORMAT\_WMA**

    -   **WPD\_OBJECT\_FORMAT\_MP3**

-   Optional content type: **WPD\_CONTENT\_TYPE\_VIDEO**

-   Recommended format: **WPD\_OBJECT\_FORMAT\_WMV**

-   Optional content type: **WPD\_CONTENT\_TYPE\_IMAGE**

-   Recommended formats:

    -   **WPD\_OBJECT\_FORMAT\_BMP**

    -   **WPD\_OBJECT\_FORMAT\_EXIF**

    -   **WPD\_OBJECT\_FORMAT\_GIF**

    -   **WPD\_OBJECT\_FORMAT\_ICON**

    -   **WPD\_OBJECT\_FORMAT\_JFIF**

    -   **WPD\_OBJECT\_FORMAT\_JP2**

    -   **WPD\_OBJECT\_FORMAT\_JPX**

    -   **WPD\_OBJECT\_FORMAT\_PNG**

    -   **WPD\_OBJECT\_FORMAT\_TIFF**

-   Optional content type: **WPD\_CONTENT\_TYPE\_DOCUMENT**

-   Optional formats:

    -   **WPD\_OBJECT\_FORMAT\_HTML**

    -   **WPD\_OBJECT\_FORMAT\_TEXT**

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
<td><p><strong>TestApp.exe /a /r /c /p /u wdk_stress.pro</strong></p></td>
<td><p>Runs the test.</p></td>
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
<td><p>testapp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\</p></td>
</tr>
<tr class="even">
<td><p>WPDCompliance.dll</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>test.mp3</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Audio\</p></td>
</tr>
<tr class="even">
<td><p>test.wma</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Audio\</p></td>
</tr>
<tr class="odd">
<td><p>test.html</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Document\</p></td>
</tr>
<tr class="even">
<td><p>test.txt</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Document\</p></td>
</tr>
<tr class="odd">
<td><p>test.bmp</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="even">
<td><p>test.GIF</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="odd">
<td><p>test.ico</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="even">
<td><p>test.jp2</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="odd">
<td><p>test.jpg</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="even">
<td><p>test.jpx</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="odd">
<td><p>test.png</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="even">
<td><p>test.tif</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="odd">
<td><p>test.wmv</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Video\</p></td>
</tr>
<tr class="even">
<td><p>TestFile.avi</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Video\</p></td>
</tr>
<tr class="odd">
<td><p>Devcon.exe</p></td>
<td><p><em>[OSBinRoot]</em>\idw\</p></td>
</tr>
<tr class="even">
<td><p>Wex.common.dll</p></td>
<td><p><em>[OSBinRoot]</em>\idw\</p></td>
</tr>
<tr class="odd">
<td><p>Wex.logger.dll</p></td>
<td><p><em>[OSBinRoot]</em>\idw\</p></td>
</tr>
<tr class="even">
<td><p>Wex.communication.dll</p></td>
<td><p><em>[OSBinRoot]</em>\idw\</p></td>
</tr>
<tr class="odd">
<td><p>Wdk_stress.pro</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\wpdcopytest\</p></td>
</tr>
</tbody>
</table>

 

 

 






