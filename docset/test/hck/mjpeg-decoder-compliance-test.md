---
author: joshbax-msft
title: MJPEG Decoder Compliance Test
description: MJPEG Decoder Compliance Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7d665205-0724-4e18-9227-abef1533518e
---

# MJPEG Decoder Compliance Test


This automated test verifies that a Hardware Media Foundation Transform (HMFT) compliant device supports decoding Motion JPEG (MJPEG) streams.

## Test Details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Streaming.HMFT.Decoding</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


This test requires special configuration that must be completed before the test is started. For more information on configuring your environment for the test, complete the test setup as described in the test requirements: [HMFT Testing Prerequisites](hmft-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Streaming Testing](troubleshooting-devicestreaming-testing.md).

## More information


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
<td><p><strong>ContentSource</strong></p></td>
<td><p>The location of the HMFT input source content files. The client computer must be able to access this location)</p>
<p>Default value: <em>[TestBinRoot]</em>\..\HMFTContent</p></td>
</tr>
<tr class="even">
<td><p><strong>HMFTGUID</strong></p></td>
<td><p>The GUID of the HMFT to test. {DETECT} should be used for certification but you can override this to test a specific HMFT.</p></td>
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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Te.exe MFTDCompliance_Taef.dll /select:@InputType=’MJPEG’ /p:VendorID=[Query VendorID] /p:GUID={DETECT}</strong></p></td>
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
<td><p>MFTDCompliance_Taef.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\cdsptest\</p></td>
</tr>
<tr class="even">
<td><p>HMFT source content</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\HMFTContent\*</p></td>
</tr>
<tr class="odd">
<td><p>Te.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\Testing\Runtimes\TAEF\x86\</p></td>
</tr>
</tbody>
</table>

 

 

 






