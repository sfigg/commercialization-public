---
author: joshbax-msft
title: Generic USB Game Controller Test
description: Generic USB Game Controller Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 01e5fa5e-71bc-414c-a82d-1b21d9e700c9
---

# Generic USB Game Controller Test


This test verifies that an input gaming device driver is HID-compliant by ensuring that the driver supports the required functionality for Direct Input.

**Warning**  
Although much of this test is performed automatically, some manual input at the beginning of the test must verify axis functionality. This test relies on the Microsoft® DirectInput™ API to ensure that the device being testing is functioning as expected.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.GameController.CommonController.XInput Device.Input.GameController.GenericController.DirectInput</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Game Controller Testing Prerequisites](game-controller-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## More information


Follow the on-screen instructions to place the devices axis at the maximum and minimum points when required. All other test cases are automated.

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
<td><p><strong>Joydrv_hct -c joydrv.pro</strong></p></td>
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
<td><p>Joydrv_hct.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\gamecontrollers\</p></td>
</tr>
<tr class="even">
<td><p>Joydrv.pro</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\gamecontrollers\</p></td>
</tr>
</tbody>
</table>

 

 

 






