---
author: joshbax-msft
title: WDDM CCD Test for PersistentReset Sleep
description: WDDM CCD Test for PersistentReset Sleep
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3735f9e0-c361-4333-9702-72396a24b9c4
---

# WDDM CCD Test for PersistentReset Sleep


This automated test verifies that the desktop configuration is reset correctly to persistent data that is saved in the registry. PersistentReset validates that during system and monitor power transitions, the desktop configuration does not change.

After the test sets the system to a specified topology, it uses `ChangeDisplaySettingsEx(CDS_UPDATEREGISTRY)` to change the display modes and save the configuration data to the persistent database. The test then uses SetDisplayConfig to change the desktop modes without updating them to the registry. Finally, the test verifies that `CcdSetDisplayConfig(0, NULL, 0, NULL, SDC_APPLY| SDC_USE_DATABASE_CURRENT)` resets the desktop configuration to match data that was saved previously in the persistent database.

The test also puts the system in S1, S2, S3, and S4 sleep states or turns off the monitor. Then, it verifies that after the monitor wakes from the sleep states, the desktop configuration has persisted.

This topic applies to the following test jobs:

-   WDDM CCD Test for PersistentReset Monitor

-   WDDM CCD Test for PersistentReset Sleep

-   WDDM CCD Test for PersistentReset Sleep Multimon

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM.Display.Base</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

In addition, this test requires a video card or chipset with a Windows Display Driver Model (WDDM) 1.1 (or later versions) driver.

**Note**  
The test will perform mode validation only for test targets that have monitors connected. For a certification test, connect monitors to all the test targets on the video card.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

All test cases change the desktop configuration, turn monitors off and on, or set the system power to different sleep states.

The test might return Skip if the system does not support the display configuration of the test cases.

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
<td><p><strong>PersistentReset</strong></p></td>
<td><p>Rusn the test. Without any options, the test performs reset and system-sleep test cases.</p></td>
</tr>
<tr class="even">
<td><p><strong>Monitor</strong></p></td>
<td><p>Starts the application and runs the monitor off and on test cases.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Sleep</strong></p></td>
<td><p>Starts the application and runs the system-sleep test cases.</p></td>
</tr>
<tr class="even">
<td><p><strong>Reset</strong></p></td>
<td><p>Starts the application and runs the reset test cases.</p></td>
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
<td><p>Configdisplay.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>PersistentReset.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

 

 






