---
author: joshbax-msft
title: WPD Compliance Tests - Multi-Transport
description: WPD Compliance Tests - Multi-Transport
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ab8076f2-105e-46be-90ac-3e8bcc9c8612
---

# WPD Compliance Tests - Multi-Transport


This automated test validates Windows Portable Device (WPD) scenarios at the WPD API level. Specifically, this test validates that a device supports a functional unique identifier (FUID).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.Core.TransportBluetooth Device.Portable.Core.TransportIP Device.Portable.Core.TransportUSB</p>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Device.Portable Testing Prerequisites](deviceportable-testing-prerequisites.md).

**Note**  
You may need additional hardware if the test device provides bus-specific support. To determine whether you need additional hardware, see the description for each bus-specific test.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Portable Testing](troubleshooting-deviceportable-testing.md).

This test returns Pass/Fail. The test might return SKIP if the device does not support specific device services. To review test details, review the test log from Driver Test Manager (DTM) Studio.

When troubleshooting this test, note the following:

-   This test supports verbose logging when in manual test case selection mode. When the application is running, in **Options** &gt; **Logging Options**, click **Destination: Window, Level: 10**.

-   If no test cases are available from the tree for test-case selection, make sure that the device is plugged in.

## More information


This test validates the **WPD\_DEVICE\_FUNCTIONAL\_UNIQUE\_ID** property on a device. This property enables devices to support simultaneous connectivity to a computer that is running Windows 7 or Windows 8 over multiple transports (like USB and Bluetooth). The Media Transfer Protocol (MTP) Device Services for Windows Specification defines implementation details for this property. For more information, see [MTP Device Services Extension Specification](http://go.microsoft.com/fwlink/p/?LinkId=237709).

The test runs against devices that support the **WPD\_DEVICE\_FUNCTIONAL\_UNIQUE\_ID** property and tries to read the value. If the property is writable, the test tries to set a value (GUID) and read it back. If the attempt is successful, the test logs PASS. If the property is writable and the test cannot set and then read the value, the test logs FAIL.

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
<td><p><strong>te.exe wpdcompliance.dll /select:”@name='Wex::WPD::WpdComplianceTest::Multi_Transport*' and @TestClassification:Type='HCK'”</strong></p></td>
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

 

 

 






