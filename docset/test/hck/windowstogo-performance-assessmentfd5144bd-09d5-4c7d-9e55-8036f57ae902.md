---
author: joshbax-msft
title: WindowsToGo Performance Assessment
description: WindowsToGo Performance Assessment
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d45c3689-22bc-4fef-b732-591627e3744b
---

# WindowsToGo Performance Assessment


This test validates that the USB storage device meets the performance requirements of Windows To Go. USB storage devices that do not support Windows To Go do not need to run this test. This test checks the following performance requirements:

-   Random 4 KB Write IOPs &gt;= 2000 (rotational drives exempt)

-   Random 4 KB Read IOPS &gt;= 2000 (rotational drives exempt)

-   Sequential Write Speed &gt;= 80MB/s

-   Sequential Read Speed &gt;= 80MB/s

-   Max I/O Latency &lt; 250 milliseconds

-   Maximum of 10 seconds sum-total of user-perceivable I/O latencies over any 1 hour period of a user-representative workload, where a user-perceivable I/O is defined as having a latency of at least 100 milliseconds

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.WindowsToGoCapableUSBDrive.WindowsToGoCapableUSBDrive</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~180 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Removable Storage Testing Prerequisites](removable-storage-testing-prerequisites.md). In order for the device to indicate that it seeks Windows To Go certification it must implement the MS OS Descriptor extended property **WindowsBootCapable** per the WindowsToGoCapableUSBDrive requirement. If this descriptor is not set on the device then this test will not appear.

This test formats the device. Any data stored on it will be lost. Back up any important data before running the test.

**Note**  
You must insert the USB drive into a USB 3.0 port to run this test.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

If you receive an error message saying “Not all of the metrics required were found in the logs”, remove any unnecessary USB devices attached to the system, reboot, and then run the test again.

If a test case takes longer than 250 milliseconds, the device does not meet Windows To Go performance requirements. You can try to make the device faster and less prone to slow random access by using a different component or storage media.

The ReplyScenario test case files because too many IO operations had latencies in excess of 100 milliseconds. You can try to make the device faster and less prone to slow random access by using a different component or storage media.

## More Information


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
<td><p>ParameterScript</p></td>
<td><p>A file that configures parameters.</p>
<p>Default value: set_params.cmd</p></td>
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
<td><p><strong>StorageParameters.exe /device “[WDKDeviceID]” /outscript “[ParameterScript]”</strong></p></td>
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
<td><p>StorageParameters.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>StorageDevices.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






