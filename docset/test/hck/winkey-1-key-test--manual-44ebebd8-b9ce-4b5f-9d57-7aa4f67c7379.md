---
author: joshbax-msft
title: Winkey 1-Key Test (Manual)
description: Winkey 1-Key Test (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 10c36dc5-68e4-41bf-be52-40d18adce0fb
---

# Winkey 1-Key Test (Manual)


This test displays a UI of the keyboard and requires you to press every key on the physical keyboard as prompted on the UI.

If the key that is prompted on the UI is not present on the physical keyboard (for example, the right Windows logo key), you can click the key on the UI and skip testing that key. Ignoring an unsupported key in this way does not cause the physical keyboard to fail the overall test.

After you test all the keys as prompted, the physical keyboard has passed the test.

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
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2003 x64 Windows Server 2003 x86Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows RT 8.1Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2 Windows Vista Client x64 Windows Vista Client x86</p></td>
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

## More information


When the test runs, you must complete these steps:

1.  When the Windows key UI appears for the first time, click **Install Driver**. The system restarts.

2.  When the Windows key UI appears for the second time (after you log back on), click **Run test**.

3.  When the Windows key UI appears for the third time, click **Install Driver**. This returns the test computer to its previous state so that you can run subsequent tests.

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
<td><p>WDKDeviceID</p></td>
<td><p>Specifies the Plug and Play (PnP) ID of the device to be tested.</p>
<p>Example: ACPI\PNP0303\43BB74590</p></td>
</tr>
</tbody>
</table>

 

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
<td><p><strong>Winkey.exe /d “[WDKDeviceID]” /s 1 /a</strong></p></td>
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
<td><p>winkey.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>winkeyd.sys</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
</tbody>
</table>

 

 

 






