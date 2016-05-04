---
author: joshbax-msft
title: Windows Key Test (Manual)
description: Windows Key Test (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0d0a23cc-cd56-4c6f-9014-585e9954259b
---

# Windows Key Test (Manual)


This 2-part test confirms that the keyboard implements the Windows logo key by using the expected scan code and virtual key code. If the keyboard implements a left and right Windows logo key, both keys are tested individually.

During the test, you must respond to prompts that appear on the screen.

**Note**  
InputTest.exe is not supported on the ARM platform.

 

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

**Note**  
Make sure that the keyboard under test is the only keyboard that is connected to the computer.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## More information


The application captures all keyboard input by using a low-level hook. While you are running the test, the keyboard will not work in other applications. System commands such as Ctrl+Alt+Delete function normally.

The test has two views: setup view and execution view. In the setup view, select whether the keyboard implements left, right, or both Windows logo keys. In the execution view, you're prompted to press the Windows logo keys. If the test returns the expected scan code and virtual key code, the Windows Hardware Certification Kit (Windows HCK) Manager displays **Pass** and the color changes from yellow to green. When the test passes, the test summary displays **Pass** and the color changes to green. To complete the test, click **Submit Results**. You can reset the test at any time by clicking **Reset Test**.

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
<td><p><strong>InputTest.exe</strong></p></td>
<td><p>Runs the test, allow the user to select from one of three possible tests.</p></td>
</tr>
<tr class="even">
<td><p><strong>/winkey</strong></p></td>
<td><p>Runs the test with the Windows Key test job selected.</p></td>
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

 

 

 






