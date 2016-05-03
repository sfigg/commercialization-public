---
author: joshbax-msft
title: WPD Compliance Tests - Services
description: WPD Compliance Tests - Services
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dda1a43b-ca6d-4648-8b52-82d83e041998
---

# WPD Compliance Tests - Services


This test is designed to validate Windows Portable Device (WPD) scenarios at the WPD API level. The supported scenarios and device services validated in this test are defined in the MTP Device Services for Windows specification. The MTP Device Services Extension specification defines the required interactions between the device and the MTP driver.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.Core.CustomDeviceServices Device.Portable.Core.DeviceServices</p>
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

The test might return SKIP if the device does not support specific device services. To review test details, review the test log from Driver Test Manager (DTM) Studio.

When troubleshooting this test, note the following:

-   This test supports verbose logging when in manual test case selection mode. When the application is running, in **Options** &gt; **Logging Options**, click **Destination: Window, Level: 10**.

-   If no test cases are available from the tree for test-case selection, make sure that the device is plugged in.

## More information


The Media Transfer Protocol (MTP) Device Services for Windows Specification defines the supported scenarios and device services that this test validates. The MTP Device Services Extension Specification defines the required interactions between the device and the MTP driver. For more information, see [MTP Device Services Extension Specification](http://go.microsoft.com/fwlink/p/?LinkId=237709).

The compliance test maintains a configuration file for each service that the MTP Device Services for Windows Specification defines. Each configuration file defines the inherited services, properties, formats, format attributes, and format object properties for its corresponding service. Various test cases use the settings in the configuration file to validate whether each service that's supported by the device complies with Windows 7 or Windows 8. In addition to the test-case descriptions in this section, all strings (like service, format, and property names) are validated to be scriptable according to the MTP Device Services Extension Specification.

Device services are optional. For all services that the device supports, the WPD Compliance Test - ALL SERVICES test will run. This test case tries to validate the services that the device exposes against the definition in the MTP Device Services for Windows Specification. The test case reads the target services' definition from the configuration files that are packaged with the compliance test. The test case validates the actual service characteristics that are exposed from the device against these predefined settings.

**Validating service static definitions**

1.  Load the Service definition from configuration for target service

2.  Validate inheritance settings

    Get the expected inheritance setting (NoInheritance, Optional, Required, AtLeastOne)

    Get the actual service inherited services (IPortableDeviceServiceCapabilities::GetInheritedServices)

    IF no service inherited service but inheritance is expected

    Log error and exit

    ENDIFFOR each expected inherited Service (H)

    IF the service inherits H

    Save H's GUID to use for validation later

    ELSE

    IF H is required

    Log error and exit

    ENDIF

    ENDIF

    ENDFOR

3.  Validate service properties

    Generate list of expected supported properties

    Including inherited properties (queried by the actual inherited services saved above)

    FOR each expected property P

    IF the service does not supports P and P is required

    Log fatal error

    Continue FOR

    ENDIF

    Validate P's expected attributes (below) against the corresponding property

    WPD\_PROPERTY\_ATTRIBUTE\_NAME

    WPD\_PROPERTY\_ATTRIBUTE\_VARTYPE

    WPD\_PROPERTY\_ATTRIBUTE\_CAN\_WRITE

    WPD\_PROPERTY\_ATTRIBUTE\_CAN\_READ

    ENDFOR

4.  Validate supported formats

    Generate list of expected formats

    Including inherited formats (queried by the actual inherited services saved above)

    FOR each expected format F

    IF the service does not supports F and F is required

    Log fatal error

    Continue FOR

    ENDIF

    FOR each expected property P in F

    IF the service does not supports P and P is required

    Log fatal error

    Continue FOR

    ENDIF

    Validate P's expected attributes (below) against the corresponding property

    WPD\_PROPERTY\_ATTRIBUTE\_NAME

    WPD\_PROPERTY\_ATTRIBUTE\_VARTYPE

    WPD\_PROPERTY\_ATTRIBUTE\_CAN\_WRITE

    WPD\_PROPERTY\_ATTRIBUTE\_CAN\_READ

5.  Validate service supported methods

    Generate list of expected methods

    Including inherited methods (queried by the actual inherited services saved above)

    FOR each expected format M

    IF the service does not supports M and M is required

    Log fatal error

    Continue FOR

    ENDIF

    FOR each expected parameter P in M

    IF the service does not supports P and P is required

    Log fatal error

    Continue FOR

    ENDIF

    Validate P's expected attributes (below) against the corresponding property

    WPD\_PARAMETER\_ATTRIBUTE\_NAME

    WPD\_PARAMETER\_ATTRIBUTE\_VARTYPE

    WPD\_PARAMETER\_ATTRIBUTE\_ORDER

    WPD\_PARAMETER\_ATTRIBUTE\_USAGE

    WPD\_PROPERTY\_ATTRIBUTE\_CAN\_READ

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
<td><p><strong>te.exe wpdcompliance.dll /select:”@name='*Service*' and @TestClassification:Type='HCK'”</strong></p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WPD%20Compliance%20Tests%20-%20Services%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




