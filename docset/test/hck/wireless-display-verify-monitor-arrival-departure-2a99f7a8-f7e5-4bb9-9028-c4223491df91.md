---
author: joshbax-msft
title: Wireless Display Verify Monitor Arrival Departure
description: Wireless Display Verify Monitor Arrival Departure
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 50691e9d-3305-4e85-a9b1-4fdba45d56a6
---

# Wireless Display Verify Monitor Arrival Departure


This automated test verifies the ability of a graphics driver to repeatedly connect and disconnect a Miracast monitor. The test installs a software device to emulate Miracast sink.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM13.DisplayRender.WirelessDisplay.BasicWirelessDisplay</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

The test generates an RTSP message log file: **virtualsinklog.{…}.txt**. The actual name of this file can be found in the test log file. For example:

`Message   6/13/2013 7:39:22.724 PM      RTSP log file: virtualsinklog.{3D55759A-4BB2-43C6-9AD6-9D98D6726908}.txt`

The test job captures **WirelessDisplay.etl** and **WPP.etl** files. You can find these files by selecting **Child Job Results** in Windows Hardware Certification Kit (Windows HCK) Manager and then browsing job logs for **Wireless Display Cleanup Trace**.

**WirelessDisplay.etl** contains information about the Miracast session from start to stop. Most events are aligned with DDI calls for both the user mode driver (UMD) and kernel mode driver (KMD).  IHV investigating issues might find it useful to look for errors in these DDI events.  The event names should be familiar to the developer because they closely match the DDI names that are used for the wireless feature.  This file can be analyzed by using Windows Performance Analyzer (WPA).

**WPP.etl** contains WPP traces that are captured for the display kernel events related to Miracast. These traces are highly detailed, and should provide adequate information about session failures that is sufficient to debug most issues. These files require access to symbols to decode them. Symbols for the OS should be available to IHVs. The following command line should be used to decode **WPP.etl** in **wpp.txt** is: `netsh trace convert overwrite=yes tmf=..\symbols.pri\TraceFormat WPP.etl`.

All test cases return PASS or FAIL. The test details are available in the test log (**Te.wtl**), which you can view in Windows HCK Studio.

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
<td><p>Failed: Monitor wasn’t connected properly.</p></td>
<td><p>Driver failed to connect a Miracast monitor.</p></td>
</tr>
<tr class="even">
<td><p>Failed: Miracast monitor isn’t present on desktop.</p></td>
<td><p>Driver failed to attach a Miracast monitor to the desktop.</p></td>
</tr>
<tr class="odd">
<td><p>Failed: Monitor wasn’t disconnected properly.</p></td>
<td><p>Driver failed to disconnect Miracast monitor.</p></td>
</tr>
</tbody>
</table>

 

## Command syntax


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
<td><p><strong>LLU_NetAccessOnly</strong></p></td>
<td><p>LLU Name of net user</p>
<p>Default value: LLU_NAO</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Wireless Display Tests](wireless-display-tests.md)

 

 







