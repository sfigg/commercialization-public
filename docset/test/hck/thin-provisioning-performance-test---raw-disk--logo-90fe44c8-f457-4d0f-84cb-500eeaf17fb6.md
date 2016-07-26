---
author: joshbax-msft
title: Thin Provisioning Performance Test - RAW Disk (LOGO)
description: Thin Provisioning Performance Test - RAW Disk (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 22a0b29a-b65a-4173-95e8-88ed45f3c14a
---

# Thin Provisioning Performance Test - RAW Disk (LOGO)


This test verifies that target devices that have a thin provisioning feature meet Windows® requirements.

**Note**  
This test applies to test that run against raw hard disks. Thin Provisioning Performance Test - RAW Disk (LOGO) collects performance data over raw disks.

 

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
<td><p>~90 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md).

In addition, before you run the test, please create a thin provisioned LUN and a full provisioned LUN and make sure both LUNs are online initialized raw disks. Set the threshold for thin provisioned LUN to be 70 percent.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description/Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Thin provisioned LUN or full provisioned LUN throughput is 0.000000</p></td>
<td><p>If the log file shows that thin provisioned LUN and/or full provisioned LUN read/write throughput is 0.000000, then the LUNs might be offline. Check the thin/full provisioned LUNs to make sure they are both online when the test runs.</p></td>
</tr>
<tr class="even">
<td><p>Thin provisioned LUN throughput is less than 90% of full provisioned LUN</p></td>
<td><p>If the log file shows that the thin provisioned LUN read/write throughput is less than 90 percent of full provisioned LUN, check the thin provisioned LUN IO implementation. Thin provisioned LUN should have similar throughput as full provisioned LUN.</p></td>
</tr>
<tr class="odd">
<td><p>Failed to find certain system events</p></td>
<td><p>If the log file shows that the test failed to find certain events, check the implementation of threshold notification events and permanent resource exhaustion event in [Plan and Deploy Thin Provisioning](http://go.microsoft.com/fwlink/p/?linkid=309287).</p></td>
</tr>
<tr class="even">
<td><p>Test failed but logs have no failures</p></td>
<td><p>Make sure you are logging in the HCK client machine as Administrator while the test is running.</p></td>
</tr>
</tbody>
</table>

 

## More information


The performance test runs a stress test to collect performance data. IO throughout performance of thin provisioned LUN should not be below 90% of IO throughput performance of a full provisioned LUN. Currently, if the test fails, the logo test does not fail.

Performance test needs to run DiskIO test over thin provisioned LUN and full provisioned LUN to collect the statistics data. It does sequential read/write/verify IO and random read/write/version IO operations for both LUNs. After each round of writing, the test unmaps or formats the LUNs. The test starts a process to run **DiskIOV2.exe** and parse the xml files to collect data. After each round of tests, the test checks to see if there is any system event for threshold notification hit.

The test also checks the system events to get threshold notification and performance resource exhaustion. The following events are checked:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Event ID</th>
<th>Information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>144</p></td>
<td><p>Threshold notification without additional information</p></td>
</tr>
<tr class="even">
<td><p>145</p></td>
<td><p>Threshold notification without specific information</p></td>
</tr>
<tr class="odd">
<td><p>146</p></td>
<td><p>Threshold notification with used LUN capacity and available LUN capacity information</p></td>
</tr>
<tr class="even">
<td><p>147</p></td>
<td><p>Threshold notification with used LUN capacity and available pool capacity information</p></td>
</tr>
<tr class="odd">
<td><p>148</p></td>
<td><p>Threshold notification with used pool capacity and available LUN capacity information</p></td>
</tr>
<tr class="even">
<td><p>149</p></td>
<td><p>Threshold notification with used pool capacity and available pool capacity information</p></td>
</tr>
<tr class="odd">
<td><p>150</p></td>
<td><p>Permanent resource exhaustion event</p></td>
</tr>
</tbody>
</table>

 

This is a pass-only test. It will not give errors even if the disks (either thin provisioned LUN or full provisioned LUN) goes offline. The test only prints information to help you maintain the performance of a thin provisioned LUN.

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
<td><p>FPDiskDeviceObjLink</p></td>
<td><p>The fully provisioned LUN.</p></td>
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
<td><p><strong>Thinprovision.exe /scenario performance /thindisk: [TPDiskDeviceObjLink] /fulldisk [FPDiskDeviceObjLink] /logo</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

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
<td><p>DiskIO.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DRIVERSTEST\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>FillVolume.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DRIVERSTEST\storage\wdk\thinprovision\</p></td>
</tr>
<tr class="odd">
<td><p>StorageDevices.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\DRIVERSTEST\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>Thinprovision.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DRIVERSTEST\storage\wdk\thinprovision\</p></td>
</tr>
</tbody>
</table>

 

 

 






