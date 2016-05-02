---
author: joshbax-msft
title: HBA API Test (LOGO)
description: HBA API Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9446f3c4-ae77-4405-897e-6efdb27c64db
---

# HBA API Test (LOGO)


This test verifies the Microsoft Windows Management Instrumentation (WMI) interfaces that are implemented by a host bus adapter (HBA) driver for support of the Storage Networking Industry Association's Common HBA API.

**Note**  
To qualify under the Windows® Certification program, Fibre Channel and SAS Storport miniport drivers and SCSI miniport drivers must support the HBA API.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Fc.Interface Device.Storage.Controller.Fcoe.Interface</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Fibre Channel Adapter Testing Prerequisites](fibre-channel-adapter-testing-prerequisites.md)

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


The HBA API test requires a Fibre Channel switch between the HBA and the storage devices that you are testing. The Fibre Channel switch must support the GIEL and GANXT specifications. Most switches that have been made in the past 10 years support these specifications.

The topology can any kind of fabric configuration, as long as a switch is present. For example, the simplest configuration is the following: \[TestMachine\]&lt;--&gt;\[FibreChannelSwitch\]&lt;--&gt;\[FibreChannelStorageArray\]

**Note**  
The test uses a Microsoft Visual Basic script to query the HBAs WMI interfaces. For specific test cases, see the Assertions section. You can view the source of the test by opening the script file with a text editor.

 

The test first installs the schema for the HBA API on the computer and then starts the script.

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
<td><p><strong>mofcomp -N:root\wmi hbaapi.bmf</strong></p></td>
<td><p>Installs the hbaapi.bmf file.</p></td>
</tr>
<tr class="even">
<td><p><strong>cscript hbatst.vbs &quot;[WDKDeviceID]&quot;</strong></p></td>
<td><p>Specifies the device to be tested.</p></td>
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
<td><p>hbatst.vbs</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>hbaapi.bmf</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20HBA%20API%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




