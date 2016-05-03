---
author: joshbax-msft
title: USB xHCI Transfer Speed Test
description: USB xHCI Transfer Speed Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0718ea20-6048-4d18-96fe-95854a1bb0e3
---

# USB xHCI Transfer Speed Test


This test measures bandwidth on read transfers. The test performs a transfer stress test on the SuperSpeed Microsoft USB Test Tool (SuperMUTT).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.SystemUSB.USBControllerTransferSpeed</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

Before you run the test, you must obtain a [Super MUTT device from JJG Technologies](http://go.microsoft.com/fwlink/p/?linkid=320147). You must also [download MUTT Software Package (v. 1.5 or later) from the Connect site](http://go.microsoft.com/fwlink/p/?LinkId=249141). After you have the MUTT device and firmware/software installed, you can connect it to your USB3 port under test, run MoveAllToTCD.bat to load the correct usbtcd.sys driver, and run the USB xHCI Transfer Speed Test from the HCK.

To successfully complete the test, you must run the test on each individual xHCI controller on the system under test at least once. There are two options:

1.  Using multiple Super MUTT devices, plug one into each xHCI controller port. The test will iterate through all the Super MUTT’s it finds and run the performance scenario on each one.

2.  Using one Super MUTT device, plug it into each xHCI controller in series during the test. While the test is running you may move the Super MUTT device to a different port and the test will automatically restart on the device in that location. Allow the device to be tested for ~60 seconds in each location before moving to the next port. The test will complete once all ports have been tested at least once.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

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
<td><p>TOOL_PATH</p></td>
<td><p>The location of the MUTT performance test tools.</p>
<p>Default value: C:\usbtest\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%20xHCI%20Transfer%20Speed%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




