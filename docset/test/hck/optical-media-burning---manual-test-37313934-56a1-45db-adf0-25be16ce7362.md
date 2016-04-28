---
author: joshbax-msft
title: Optical media burning - Manual Test
description: Optical media burning - Manual Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2240e339-48ad-4dc8-823d-34dc51759604
---

# Optical media burning - Manual Test


This test validates that the storage adapter and its driver interact correctly with Peripheral Device Type 5 as defined by the SCSI primary command set and the necessary data is passed through the adapter from a storage device.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Optical.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Optical Disk Drive Testing Prerequisites](optical-disk-drive-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

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
<td><p>The device instance ID.</p></td>
</tr>
<tr class="even">
<td><p>AdditionalParams</p></td>
<td><p>Additional parameters.</p></td>
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
<td><p><strong>OpticalLogoTest.exe /adapter “[WDKDeviceID]” /RunTestCase Write /profile 10 [AdditionalParams]</strong></p></td>
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
<td><p>ataportlogotrace.tmf</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\optical\setup\tracing\</p></td>
</tr>
<tr class="even">
<td><p>autoloader.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\optical\autoloader\</p></td>
</tr>
<tr class="odd">
<td><p>DataPacket.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="even">
<td><p>DeviceTestCases.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="odd">
<td><p>DiscManagerLib.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="even">
<td><p>microsoft.storage.imapi.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\interop\imapi\</p></td>
</tr>
<tr class="odd">
<td><p>ModularTestCase.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="even">
<td><p>OpticalLogoTest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="odd">
<td><p>OpticalTestHarness.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="even">
<td><p>OpticalTestLib.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="odd">
<td><p>ProfileTestCases.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="even">
<td><p>ScenarioTestCases.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="odd">
<td><p>ScsiLib.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="even">
<td><p>storageinteroputil.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\interop\utils\</p></td>
</tr>
<tr class="odd">
<td><p>tracefmt.exe</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\idw\</p></td>
</tr>
<tr class="even">
<td><p>storagedevices.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>TraceLib.dll</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\nttest\driverstest\storage\wdk\optical\test\</p></td>
</tr>
<tr class="even">
<td><p>tracelog.exe</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\idw\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Optical%20media%20burning%20-%20Manual%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




