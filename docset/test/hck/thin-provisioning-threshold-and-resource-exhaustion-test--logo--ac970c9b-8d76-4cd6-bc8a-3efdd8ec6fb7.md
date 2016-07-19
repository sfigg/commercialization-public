---
author: joshbax-msft
title: Thin Provisioning Threshold and Resource Exhaustion Test (LOGO)
description: Thin Provisioning Threshold and Resource Exhaustion Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d31c54db-32ad-4635-ab39-423133dca9a8
---

# Thin Provisioning Threshold and Resource Exhaustion Test (LOGO)


This test verifies that target devices with thin provisioning feature meet Windows® requirements.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.ThinProvisioning.BasicFunction</p>
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
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md).

Before you run the test, please make sure the thin provisioned LUN to be online initialized raw dis. Also, you should set the threshold for the thin provisioned LUN to be 70 percent (default). If the threshold is fixed, you should specify that threshold when running the test.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


The end to end scenario test would do threshold and resource exhaustion test. The main approach is to properly trigger the threshold notification/permanent resource exhaustion and check the sense key. When threshold is hit, we will get the log page to calculate whether the value to be at least no less than the value set for threshold. For temporary resource exhaustion, we just make this scenario to be optional, since some storage device may handle this scenario decently not to return any sense key.

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
<td><p>TPDiskDeviceObjLink</p></td>
<td><p>The thin provisioned LUN.</p></td>
</tr>
<tr class="even">
<td><p>TPDiskThresholdPercent</p></td>
<td><p>The percentage of the thin provisioned LUN.</p>
<p>Default value: 70</p></td>
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
<td><p><strong>Thinprovision.exe /scenario exhaustion /thindisk &quot;[TPDiskDeviceObjLink]&quot; /percent “[TPDiskThresholdPercent]” /logo</strong></p></td>
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
<td><p>Thinprovision.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\thinprovision\</p></td>
</tr>
</tbody>
</table>

 

 

 






