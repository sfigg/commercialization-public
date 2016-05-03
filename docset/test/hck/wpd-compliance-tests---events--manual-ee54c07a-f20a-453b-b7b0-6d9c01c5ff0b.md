---
author: joshbax-msft
title: WPD Compliance Tests - Events (Manual)
description: WPD Compliance Tests - Events (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1767b441-d5ed-45a2-a040-37574c26b7cc
---

# WPD Compliance Tests - Events (Manual)


This test exercises the driver by using the Windows Portable Device (WPD) API and validates that the driver complies with the Windows Hardware Certification requirements.

This test verifies that a driver or device fulfills the Windows Hardware Certification requirements to work seamlessly with the WPD stack in a protocol-independent way.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.Core.AudioCodec Device.Portable.Core.MediaSync Device.Portable.Core.TransportBluetooth Device.Portable.Core.TransportIP Device.Portable.Core.TransportUSB Device.Portable.Core.VideoCodec</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Device.Portable Testing Prerequisites](deviceportable-testing-prerequisites.md).

**Note**  
You may need additional hardware if the test device provides bus-specific support. To determine whether you need additional hardware, see the description for each bus-specific test.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Portable Testing](troubleshooting-deviceportable-testing.md).

This returns Pass or Fail. The test might return SKIP if the device does not support specific device services. To review test details, review the test log from HCK Studio.

Additional troubleshooting information:

-   The test supports verbose logging when in manual test case selection mode. When the application is running, go to **Options**, **Logging Options**, and click **Destination: Window, Level: 10**.

-   If no test cases are available from the tree for test-case selection, make sure that the device is plugged in.

## More Information


This test runs as a C++ application. When run outside of HCK Studio, there is a test case selection user interface and test suites can be defined using test profiles as is the case for the WLK. It provides a Pass/Fail for each requirement. The test validates the following scenarios and function categories for a WPD driver and the device that's connected to it.

The device or driver passes these common scenarios for content types and formats that it supports:

-   Object hierarchy enumeration

-   Object property retrieval

-   Object resource reads from device

-   Object resource writes to device

-   Object deletion

-   Power management

-   Device-generated or driver-generated events

The device or driver supports the following known function categories:

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

If a content type isn't supported, the format support won't be verified. There are no strict requirements on the format or content type, because this is typically an implementation detail for device firmware. The driver can report support for any format or content type, as long as it passes the functional scenario tests that use objects of formats that it supports, like transfer, deletion, and enumeration. These formats and content types can serve as a guideline:

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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>te.exe wpdcompliance.dll /select:”@name='*Events*' and @TestClassification:Type='HCK'”</strong></p></td>
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
<td><p>WPDCompliance.dll</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\wdk\</p></td>
</tr>
<tr class="even">
<td><p>test.mp3</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Audio\</p></td>
</tr>
<tr class="odd">
<td><p>test.wma</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Audio\</p></td>
</tr>
<tr class="even">
<td><p>test.html</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Document\</p></td>
</tr>
<tr class="odd">
<td><p>test.txt</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Document\</p></td>
</tr>
<tr class="even">
<td><p>test.bmp</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="odd">
<td><p>test.GIF</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="even">
<td><p>test.ico</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="odd">
<td><p>test.jp2</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="even">
<td><p>test.jpg</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="odd">
<td><p>test.jpx</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="even">
<td><p>test.png</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="odd">
<td><p>test.tif</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Image\</p></td>
</tr>
<tr class="even">
<td><p>test.wmv</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Video\</p></td>
</tr>
<tr class="odd">
<td><p>TestFile.avi</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\Content\Video\</p></td>
</tr>
<tr class="even">
<td><p>Devcon.exe</p></td>
<td><p><em>[OSBinRoot]</em>\idw\</p></td>
</tr>
<tr class="odd">
<td><p>CalendarSvcApp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
<tr class="even">
<td><p>ContactsSvcApp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
<tr class="odd">
<td><p>ContentTransferApp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
<tr class="even">
<td><p>GeneralSvcApp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
<tr class="odd">
<td><p>HintsSvcApp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
<tr class="even">
<td><p>MetadataSvcApp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
<tr class="odd">
<td><p>NotesSvcApp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
<tr class="even">
<td><p>RingtoneSvcApp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
<tr class="odd">
<td><p>StatusSvcApp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
<tr class="even">
<td><p>TasksSvcApp.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
<tr class="odd">
<td><p>WpdUploadFile.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wpd\WpdCompliance\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WPD%20Compliance%20Tests%20-%20Events%20%28Manual%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




