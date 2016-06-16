---
author: joshbax-msft
title: Test.StationaryJitterMultiple
description: Test.StationaryJitterMultiple
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e492aa17-5192-43dd-8396-da8ff8b8bd0a
---

# Test.StationaryJitterMultiple


This test verifies that there is no jitter (within .5mm) reported by the device when three stationary contacts are placed on the device.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.Precision.StationaryJitter System.Client.PrecisionTouchpad.PrecisionTouchpad</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Mouse or other Pointing Device Testing Prerequisites](mouse-or-other-pointing-device-testing-prerequisites.md).

Three precision contacts are necessary for this test. For the test to pass, the contact must be able to rest on the device with no jitter. We strongly recommend that a robot or precision rig be used to execute this test.

1.  Carefully lower three contacts 11mm apart straight down anywhere on the touchpad.

2.  Wait ten seconds (use the timer in the upper-right corner of the Logo tool).

3.  Carefully raise the contacts.

    If no jitter is detected, the tool will pass the iteration and move on to the next iteration. Otherwise it will fail the test and give an error.

4.  Repeat for five iterations.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

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
<td><p>[12] interaction too short: #####</p></td>
<td><p>The contacts were down for less than the required ten seconds. The number given is the duration of the contacts, measured in tenths of milliseconds.</p>
<p>Make sure you leave the contacts down for at least ten seconds.</p></td>
</tr>
<tr class="even">
<td><p>[11] contact displacement too large: ###</p></td>
<td><p>Contacts moved or jitter farther than the allowed tolerance. The number given is the himetric distance moved, measured in hundredths of millimeters.</p>
<p>Make sure the contacts are completely stationary on the device.</p></td>
</tr>
</tbody>
</table>

 

## More information


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
<td><p><strong>ptlogo.exe Test.StationaryJitterMultiple.json</strong></p></td>
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
<td><p>ptlogo.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
<tr class="even">
<td><p>config.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
<tr class="odd">
<td><p>Test. Test.StationaryJitterMultiple.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
</tbody>
</table>

 

 

 






