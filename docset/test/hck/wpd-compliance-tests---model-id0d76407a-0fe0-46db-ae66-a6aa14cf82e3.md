---
author: joshbax-msft
title: WPD Compliance Tests - Model ID
description: WPD Compliance Tests - Model ID
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b045139a-9408-47e1-b749-58d25dc83ca5
---

# WPD Compliance Tests - Model ID


This test validates Windows Portable Device (WPD) scenarios at the WPD API level. Specifically, this test validates that the **ModelID** is implemented according to specification, if supported by the device.

**Note**  
The Media Transfer Protocol (MTP) Device Services for Windows Specification defines implementation details for the ModelID. For more information, see [MTP Device Services Extension Specification](http://go.microsoft.com/fwlink/p/?LinkId=237709).

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.Core.ModelID</p>
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

-   The test supports verbose logging when in manual test case selection mode. When the application is running, in **Options** &gt; **Logging Options**, click **Destination: Window, Level: 10**.

-   If no test cases are available from the tree for test-case selection, make sure that the device is plugged in.

## More information


This test verifies that the **WPD\_DEVICE\_MODEL\_UNIQUE\_ID** property on a device is:

-   Read-only.

-   A properly formed GUID.

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
<td><p><strong>te.exe wpdcompliance.dll /select:”@name='*TC_Dxp_ModelIdSupported*' and @TestClassification:Type='HCK'”</strong></p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WPD%20Compliance%20Tests%20-%20Model%20ID%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




