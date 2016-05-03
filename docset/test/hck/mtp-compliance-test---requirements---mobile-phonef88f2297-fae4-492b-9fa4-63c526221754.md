---
author: joshbax-msft
title: MTP Compliance Test - Requirements - Mobile Phone
description: MTP Compliance Test - Requirements - Mobile Phone
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9a6b29c4-1ea1-40d3-90c2-9e91cb901c5a
---

# MTP Compliance Test - Requirements - Mobile Phone


This test validates compliance with the Media Transfer Protocol (MTP), Revision 1.0.

This suite of tests makes sure that devices that use the Windows MTP class driver comply by using the MTP implementation standards. This test is directed at mobile phone devices that connect by using the MTP protocol. This test validates compliance with defined protocols based on requirements that are documented in the Windows Certification Program.

**Note**  
This test does not cover these items:

-   Digital rights management (DRM) validation

-   Devices that are not PTP or MTP-based

-   Devices that use proprietary (third-party) drivers that work with the Windows Portable Device (WPD) driver stack

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.MobilePhone.MTP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Portable Testing](troubleshooting-deviceportable-testing.md).

## More information


This test requires that a MTP-compatible device is installed. The test is fully automated with Pass/Fail results for each requirement.

This test is divided into the following functional categories:

-   Device Capabilities tests

-   Operations tests

-   Device Properties

-   Object Property tests

Each of the functional categories mentioned above contain child test cases, testing the sub components that fall under the corresponding category.

The test will validate that the following Operations are supported by the device:

-   OpenSession

-   CloseSession

-   GetDeviceInfo

-   GetStorageIDs

-   GetStorageInfo

-   GetObject

-   GetDevicePropDesc

-   GetDevicePropValue

-   SetDevicePropValue

-   DeleteObject

-   SendObject

-   GetNumObjects

-   GetObjectHandles

-   GetObjectInfo

-   SendObjectInfo

-   GetPartialObject

-   GetObjectPropsSupported

-   GetObjectPropDesc

-   GetObjectPropValue

-   SetObjectPropValue

-   GetObjectReferences

-   SetObjectReferences

The test validates that the following device properties are supported:

-   Synchronization Partner

-   Device Friendly Name

The test validates that the following formats are supported:

-   Undefined

-   Association

-   AbstractAudioAlbum

-   AbstractAudioVideoPlaylist

For AbstractAudioAlbum, the following properties are verified:

-   Genre

-   AlbumArtist

The test validates that the following Object Properties are supported for each supported format:

1.  StorageID

2.  ObjectFormat

3.  ProtectionStatus

4.  ObjectSize

5.  ObjectFileName

6.  ParentObject

7.  PersistentUniqueObjectIdentifier

8.  Name

9.  Non-Consumable

For supported Image formats, the test looks for these additional Object Properties:

-   Width

-   Height

For supported Video formats, the test looks for these additional Object Properties:

-   Width

-   Height

-   SampleRate

-   NumberOfChannels

-   ScanType

-   Audio WAVE CODEC

-   AudioBitRate

-   VideoFourCCCodec

-   VideoBitrate

-   Frames PerThousand Second

-   Encoding Profile

For supported Audio formats, the test looks for these additional Object Properties:

-   Artist

-   Track

-   AlbumName

-   AlbumArtist

-   SampleRate

-   NumberOfChannels

-   AudioBitRate

-   AudioWaveCodec

All other supported operations, device properties, and object properties are considered optional and therefore will be validated according to implementation details defined in the Picture Transfer Protocol (PTP) for Digital Still Photography Devices, Version 1.0 (PIMA15740) and Media Transfer Protocol (MTP), Revision 1.0.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Run time:</strong></p></td>
<td><p>Test duration depends on the number of supported capabilities, formats, and operations. Run time can vary up to 2 hours.</p></td>
</tr>
<tr class="even">
<td><p><strong>Log file:</strong></p></td>
<td><p>WTTTestLog.xml</p></td>
</tr>
<tr class="odd">
<td><p><strong>System restart required:</strong></p></td>
<td><p>No</p></td>
</tr>
<tr class="even">
<td><p><strong>Test category:</strong></p></td>
<td><p>Cellular Handset</p></td>
</tr>
<tr class="odd">
<td><p><strong>Program:</strong></p></td>
<td><p>MtpTest.exe</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Command</p></td>
<td><p>Description</p></td>
</tr>
<tr class="even">
<td><p><strong>te.exe /p:”BVT=TRUE” MtpTest.dll /select(@name='@CapabilitiesTests*') /p “DeviceProfile=MtpCellPhone.xml”</strong></p></td>
<td><p>With no options, launches the GUI.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>Mtptest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\mtp\</p></td>
</tr>
<tr class="even">
<td><p>MtpCellPhone.xml</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\mtp\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20MTP%20Compliance%20Test%20-%20Requirements%20-%20Mobile%20Phone%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




