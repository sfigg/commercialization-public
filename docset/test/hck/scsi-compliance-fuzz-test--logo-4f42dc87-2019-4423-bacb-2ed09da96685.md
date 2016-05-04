---
author: joshbax-msft
title: SCSI Compliance Fuzz Test (LOGO)
description: SCSI Compliance Fuzz Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 442f201a-a7b6-4f1d-9619-7b01a21d17b9
---

# SCSI Compliance Fuzz Test (LOGO)


This automated verifies that Fibre Channel or Fibre Channel over Ethernet controllers work properly after a fuzz test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Fc.Interface Device.Storage.Controller.Fcoe.Interface Device.Storage.Controller.Fcoe.Interoperability</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~300 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Fibre Channel Adapter Testing Prerequisites](fibre-channel-adapter-testing-prerequisites.md) or [Fibre Channel Over Ethernet Testing Prerequisites](fibre-channel-over-ethernet-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

Before you run this test, if the test environment is an HBA Boot environment, make sure at least one non-boot LUN is connected to the HBA.

## More information


The test sends the fuzzed commands to the device. The commands covered by test are the same as the [SCSI Compliance Test 2.0 (LOGO)](scsi-compliance-test-20--logo-d1f2fbbe-d5e4-439d-819a-dc100df0e9ba.md).

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
<td><p>DiskDeviceObjLink</p></td>
<td><p>The device object link.</p></td>
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
<td><p><strong>fuzztest.exe /device &quot;[DiskDeviceObjLink]&quot; /scenario fuzz /operation test /seed 123456 /feature common</strong></p></td>
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
<td><p>Fuzztest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DRIVERSTEST\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>strgenrt.dll</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\SecuTest\SecuTest\</p></td>
</tr>
<tr class="odd">
<td><p>SecuScript.dll</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\SecuTest\SecuTest\</p></td>
</tr>
<tr class="even">
<td><p>FieldObjects.dll</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\SecuTest\SecuTest\</p></td>
</tr>
<tr class="odd">
<td><p>CoreLib.dll</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\SecuTest\SecuTest\</p></td>
</tr>
</tbody>
</table>

 

 

 






