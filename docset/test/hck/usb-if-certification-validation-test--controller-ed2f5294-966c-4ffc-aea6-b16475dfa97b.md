---
author: joshbax-msft
title: USB-IF Certification Validation Test (Controller)
description: USB-IF Certification Validation Test (Controller)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c92739fa-f1f8-49f1-bdb3-85f46864be78
---

# USB-IF Certification Validation Test (Controller)


This manual test validates that the test device is USB-IF certified.

**Note**  
For more information on the USB-IF Compliance Program, see the [USB-IF Compliance Program](http://go.microsoft.com/fwlink/?LinkId=229851).

 

**Note**  
For information about the Hardware Certification Kit (HCK) USB Implementers Forum (USB-IF) testing requirements for Windows operating systems, see [USB-IF Certification Tests](http://msdn.microsoft.com/library/windows/hardware/dn434058.aspx).

 

The following table shows the details for this test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.UsbController.UsbifCertification</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [USB Bus Controller Testing Prerequisites](usb-bus-controller-testing-prerequisites.md).

You will be required to manually enter a Test ID that was generated as part of the USB-IF certification. When the test is scheduled in the WHCK studio, a pop-up window will open with a field to enter the USB-IF Test ID. Enter the proper Test ID for the USB host controller under test and proceed with the test.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## More information


For more information see [Windows Hardware Certification Kit USB-IF Testing](http://www.microsoft.com/whdc/connect/usb/wlk-usb-if-testing.mspx)

### Command syntax

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
<td><p><strong>TEST_ID</strong></p></td>
<td><p>String that indicates the USB-IF Test ID if the controller has been certified by USB-IF.</p>
<p>Value: 0.</p></td>
</tr>
</tbody>
</table>

 

 

 






