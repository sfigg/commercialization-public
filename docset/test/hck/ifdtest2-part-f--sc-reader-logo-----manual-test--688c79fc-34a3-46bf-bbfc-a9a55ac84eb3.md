---
author: joshbax-msft
title: Ifdtest2 Part F (SC Reader LOGO) - (Manual Test)
description: Ifdtest2 Part F (SC Reader LOGO) - (Manual Test)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2bdc91ff-04ab-4b82-8b46-36a26ac80532
---

# Ifdtest2 Part F (SC Reader LOGO) - (Manual Test)


This test verifies the functionality of the smart card reader by validating the PC/SC workgroup test cards.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.SmartCardReader.SupportsInsertionAndRemovalMonitor Device.Input.SmartCardReader.UsbCcidCompliesWithUsbDeviceClassSpec</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows RT 8.1</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Smart Card Reader Testing Prerequisites](smart-card-reader-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## More information


### Command syntax

To run this command outside of HCK Studio, you must stop the Smart Card service, run the command, and then the start the Smart Card service.

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
<td><p><strong>ifdtest2.exe -sa -sb -sc -se -sf</strong></p></td>
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
<td><p>ifdtest2.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\Driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






