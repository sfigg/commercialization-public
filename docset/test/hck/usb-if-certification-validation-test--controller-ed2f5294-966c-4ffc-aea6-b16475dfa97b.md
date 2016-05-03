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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB-IF%20Certification%20Validation%20Test%20%28Controller%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




