---
author: joshbax-msft
title: WMV9 Encoder VisVal Test
description: WMV9 Encoder VisVal Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: aba0a2d4-a1ee-49ac-9f5b-aaca93d87fdc
---

# WMV9 Encoder VisVal Test


This automated test verifies that a Hardware Media Foundation Transform (HMFT) compliant device supports video encoding of Windows Media Video (WMV) content.

## Test details


**Associated requirement(s)**

[Device.Streaming.HMFT.Encoding](http://go.microsoft.com/fwlink/p/?linkid=254483)

**Platforms**

Windows 8.1 x64 Windows 8.1 x86 Windows RT 8.1 Windows Server 2012 R2 Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server® 2012

**Run time**

~2 minutes

**Categories**

Certification

**Type**

Automated

 

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
<td><p><strong>Te.exe MFTDVisVal_Taef.dll /select:@OutputType=’VC-1’ /p:VendorID=[Query VendorID] /p:GUID={DETECT}</strong></p></td>
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
<td><p>MFTDVisVal_Taef.dll</p></td>
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

 

 

 






