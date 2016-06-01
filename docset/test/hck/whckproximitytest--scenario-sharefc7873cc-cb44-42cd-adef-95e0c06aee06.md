---
author: joshbax-msft
title: WHCKProximityTest- Scenario\_Share
description: WHCKProximityTest- Scenario\_Share
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 56b9fc24-0a1a-4300-ad92-d52c12de38d5
---

# WHCKProximityTest- Scenario\_Share


This manual test determines whether the implementation supports the scenario of sharing a URL between two proximity devices.

To successfully complete this test, you must respond to prompts that appear.

The command line prompt will provide directions on how to complete the scenario.

1.  Launch modern browser on one device by navigating to a website, for example, msdn.microsoft.com.

    1.  Press the **Windows key** and **C key** together

    2.  Select **Devices**

        A flyout is displayed

    3.  Under **Send**, select **Tap and Send**

2.  Place the device in proximity to a second device.

    A notification appears.

    -   Click the notification.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.NearFieldProximity.TapToUseScenarios</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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


Before you run the test, complete the test setup as described in [Proximity Controller Testing Prerequisites](proximity-controller-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

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
<td><p><strong>Te.exe /inproc WHCKNearFieldInitiator.dll /name:&quot;CWHCKProximityTestInitiator::Scenario_Share&quot;</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type the following:

**Te.exe /inproc WHCKNearFieldInitiator.dll /name:"CWHCKProximityTestInitiator::Scenario\_Share" /listproperties**

 

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
<td><p>Te.exe</p></td>
<td><p><em>&lt;TAEFBinRoot&gt;</em></p></td>
</tr>
<tr class="even">
<td><p>WHCKNearFieldInitiator.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\dtmtest\NearField\</p></td>
</tr>
</tbody>
</table>

 

 

 






