---
author: joshbax-msft
title: Microsoft Common Controller Test
description: Microsoft Common Controller Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ed54279e-6d8c-4359-b2b8-ced694f28c79
---

# Microsoft Common Controller Test


This test verifies that a common controller complies with the XUSB Specification and meets all the XUSB Specification requirements.

The test ensures that all functions of the common controller work according to the specification, including the following:

-   Buttons

-   Axis

-   Rumble

-   Audio

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.GameController.CommonController.XInput</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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


This test was created to ensure that the common controller device responds as it should, through the XINPUT API. This test checks all of the capabilities of the device that you are testing. This test will determine what type of common controller device is attached and adjust its tests accordingly (for example, wheels are tested differently than arcade joysticks).

Follow the steps that the test harness specifies. This test is a completely manual test, with the graphical user interface (GUI) showing prompts and instructions about what action to perform. There is an XML file that is created with test results after each completed pass.

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
<td><p><strong>Xnacctest.exe</strong></p></td>
<td><p>This command runs the Microsoft Common Controller test job.</p></td>
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
<td><p>Xnacctest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\gamecontrollers\</p></td>
</tr>
</tbody>
</table>

 

 

 






