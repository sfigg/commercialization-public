---
author: joshbax-msft
title: Hot Key Test (Manual)
description: Hot Key Test (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4376e0a0-e1ef-443f-83ce-81b31e738793
---

# Hot Key Test (Manual)


This test verifies that the computer uses the expected API to implement application command features. This ensures compatibility with any applications that handle these messages.

For information about the WM\_APPCOMMAND API notifications, see [WM\_APPCOMMAND message](http://go.microsoft.com/fwlink/?LinkId=236362).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.Keyboard.BrowserMultimediaKeysUseMSApis Device.Input.Keyboard.HotKeyFunctionAPI Device.Input.Keyboard.LogoFlagKey Device.Input.Keyboard.ScanCode</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2003 x64 Windows Server 2003 x86Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2 Windows Vista Client x64 Windows Vista Client x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Keyboard Testing Prerequisites](keyboard-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

If the test application is not receiving some notifications, make sure that the keyboard sends the expected scan code. Also, make sure that any other software that listens for WM\_APPCOMMAND notifications is not running.

## More information


The test has two views: setup view and execution view. In the setup view, select the application command keys that your keyboard has implemented. In the execution view, you're prompted to press keys that correspond to each command. If the computer receives the expected API notification, the appropriate result displays **Pass** and the color changes from yellow to green. When all results are green, the keyboard has passed the test. To complete the test, click **Submit Results**. You can reset the test at any time by clicking **Reset Test**.

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
<td><p><strong>InputTest.exe /hotkey</strong></p></td>
<td><p>Runs the test, providing the user with the selection of one of three tests.</p></td>
</tr>
<tr class="even">
<td><p><strong>/hotkey</strong></p></td>
<td><p>Starts the application with the Hot Key test selected.</p></td>
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
<td><p>Hook.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>InputTest.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>WttLoggerWrapper.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
</tbody>
</table>

 

 

 






