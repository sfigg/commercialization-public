---
author: joshbax-msft
title: MTP Compliance Test - Core - Miscellaneous
description: MTP Compliance Test - Core - Miscellaneous
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8afc5620-4839-450b-be05-b560328ab503
---

# MTP Compliance Test - Core - Miscellaneous


This test validates compliance with the Windows implementation of the Media Transfer Protocol (MTP) and ensures that devices use the MTP class driver that is included with Windows.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.Core.MTP</p>
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
<td><p>The Device ID</p></td>
</tr>
<tr class="even">
<td><p>DeviceProfile</p></td>
<td><p>The profile of the device: MtpCamera MtpMediaPlayer, MtpCellphone, MtpDigitalVideoCamera, MtpOther.</p>
<p>Default value: MtpCore</p></td>
</tr>
<tr class="odd">
<td><p>WpdTestDir</p></td>
<td><p>The directory that contains the test.</p></td>
</tr>
<tr class="even">
<td><p>TaefTestFile</p></td>
<td><p>The name of the test file.</p>
<p>Default value: MtpTest.dll</p></td>
</tr>
<tr class="odd">
<td><p>TaefParameters</p></td>
<td><p>The parameters used with TAEF.</p>
<p>Default value: /inproc /enablewttlogging</p></td>
</tr>
<tr class="even">
<td><p>TestParameters</p></td>
<td><p>The parameters used with the test.</p>
<p>Default value: /p:”BVT=TRUE”</p></td>
</tr>
<tr class="odd">
<td><p>TestSelect</p></td>
<td><p>The test that should be ran.</p>
<p>Default value: /select:”@TestClassificationType=’*HCK’ and @name=’MtpTestMod.MiscellaneousTests*’”</p></td>
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
<td><p><strong>te.exe /p:”BVT=TRUE” MtpTest.dll /select:”@TestClassification:Type='HCK' and NOT(@name='*MtpTestMod.MiscellaneousTests*')”</strong></p></td>
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
<td><p>Mtptest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\mtp\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20MTP%20Compliance%20Test%20-%20Core%20-%20Miscellaneous%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




