---
author: joshbax-msft
title: H264 Encoder Transcode Test
description: H264 Encoder Transcode Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5b7084f3-2986-4ecb-bd58-0dc62c110036
---

# H264 Encoder Transcode Test


This automated test verifies that a Hardware Media Foundation Transform (HMFT) compliant device supports video encoding of H.264 content.

## Test details


**Associated requirements**

[Device.Streaming.HMFT.Encoding](http://go.microsoft.com/fwlink/p/?linkid=254483)

**Platforms**

Windows 8.1 x64 Windows 8.1 x86 Windows RT 8.1 Windows Server 2012 R2 Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server® 2012

**Expected run time**

~2 minutes

**Categories**

Certification

**Type**

Automated

 

## Running the test


This test requires special configuration that must be completed before the test is started. For more information on configuring your environment for the test, complete the test setup as described in the test requirements: [HMFT Testing Prerequisites](hmft-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Streaming Testing](troubleshooting-devicestreaming-testing.md).

If this test fails, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

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
<td><p>te.exe MFTDTranscode_Taef.dll /select:@OutputType=’H264’ /p:VendorID=[Query VendorID] /p:GUID={DETECT}</p></td>
<td><p>Runs the test.</p></td>
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
<td><p>MFTDTranscode_Taef.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\cdsptest\</p></td>
</tr>
<tr class="even">
<td><p>HMFT source content</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\HMFTContent\*</p></td>
</tr>
<tr class="odd">
<td><p>Te.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\Testing\Runtimes\TAEF\x86\</p></td>
</tr>
</tbody>
</table>

 

 

 






