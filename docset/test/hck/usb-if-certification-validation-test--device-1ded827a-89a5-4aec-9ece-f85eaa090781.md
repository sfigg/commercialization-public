---
author: joshbax-msft
title: USB-IF Certification Validation Test (Device)
description: USB-IF Certification Validation Test (Device)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c3f9da1c-d753-4520-a231-554e321bf2c6
---

# USB-IF Certification Validation Test (Device)


This test checks the USB Implementers Forum (USB-IF) test ID that is provided after a device passes the USB-IF test.

**Note**  
For a white paper about the Hardware Certification Kit (HCK) USB Implementers Forum (USB-IF) testing requirements, see [Windows Hardware Certification Kit USB-IF Testing](http://go.microsoft.com/fwlink/p/?LinkId=230434).

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.UsbifCertification</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

In addition, this test requires the following:

-   The USB-IF ID value of your test device or the self-test logs for the device. You must set these parameters when you schedule this test. See the More information section for details.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

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
<td><p>TEST_ID</p></td>
<td><p>The USB IF test ID.</p></td>
</tr>
<tr class="even">
<td><p>PATH_TO_LOGS</p></td>
<td><p>If you do not specify a path to the log file, you must create the folder C:\USBLogs.</p></td>
</tr>
<tr class="odd">
<td><p>INTEROP_TESTS_PASSED</p></td>
<td><p>Confirms that the USB IF Interoperability tests ran and passed.</p></td>
</tr>
</tbody>
</table>

 

 

 






