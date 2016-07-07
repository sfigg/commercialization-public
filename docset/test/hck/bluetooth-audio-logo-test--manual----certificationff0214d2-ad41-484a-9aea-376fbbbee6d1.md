---
author: joshbax-msft
title: Bluetooth Audio Logo Test (Manual) - Certification
description: Bluetooth Audio Logo Test (Manual) - Certification
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9cefa402-ca8f-4976-ac9c-9cb23419349a
---

# Bluetooth Audio Logo Test (Manual) - Certification


This manual test verifies audio functionality within a Bluetooth device.

Parameter:

\[WDKDeviceID\] - set this parameter to device ID when scheduling from Job Explorer for private testing.

Please refer to WDK documentation for details about this test!

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Audio.Bluetooth.AtleastOneProfileSupport Device.Audio.Bluetooth.DriverReqs Device.Audio.Bluetooth.HCIDisconnect</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~4 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Audio Device Testing Prerequisites](audio-device-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Audio Testing](troubleshooting-audio-testing.md).

All test cases return PASS or FAIL. For specific information about failures, review the test results in the log file.

The test returns PASS if the following occur:

-   The Bluetooth audio device and driver support one or more of the following Bluetooth profiles: Handsfree Profile (HFP), Advanced Audio Distribution Profile (A2DP), Audio/Video Remote Control Profile (AVRCP).

-   The Bluetooth audio device supports the Major/Minor Class of Device identifier and accurately reflect form factor and primary usage.

-   The device and third-party driver support the "Windows 7 HID Call Control" specification appropriately.

-   The Bluetooth audio device that is paired with a computer automatically attempts to reconnect to the computer after it is turned on or comes back into range.

-   The Bluetooth audio device completes an HCIDisconnect operation before it shuts down.

The test returns SKIP if no Bluetooth device that supports the previously mentioned Bluetooth profiles is enumerated on the system.

## More information


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
<td><p><strong>Shellrunner</strong></p></td>
<td><p>Without any options, the test enumerates devices.</p></td>
</tr>
<tr class="even">
<td><p><strong>-c [string]</strong></p></td>
<td><p>This option starts the application and runs the test cases that are specified in the .profile file.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-h [string]</strong></p></td>
<td><p>This option specifies the Plug and Play (PnP) ID of the device to be tested.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

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
<td><p>Shellrunner.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\common\</p></td>
</tr>
<tr class="even">
<td><p>BTAudLogo.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\audio\wdk</p></td>
</tr>
<tr class="odd">
<td><p>Logo_win7_btaudlogo.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\Profiles\</p></td>
</tr>
<tr class="even">
<td><p>S98wtt_u.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\common\</p></td>
</tr>
</tbody>
</table>

 

 

 






