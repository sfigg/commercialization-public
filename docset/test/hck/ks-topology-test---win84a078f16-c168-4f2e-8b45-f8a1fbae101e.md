---
author: joshbax-msft
title: KS Topology Test - Win8
description: KS Topology Test - Win8
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b839cfb2-cd1e-415b-ab9a-a442c9bd23cc
---

# KS Topology Test - Win8


This automated test validates audio devices to make sure that the topology filters function correctly and meet Microsoft® requirements. The test checks all filters, nodes, pins, node properties, and their layouts.

Parameter:

\[WDKDeviceID\] - set this parameter to device ID + instance ID when scheduling from Job Explorer for private testing.

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
<td><p>Device.Audio.Base.AudioProcessing Device.Audio.Base.JackConnectorStateDescription Device.Audio.Base.JackDetection Device.Audio.Base.KSPROPERTYAUDIOVOLUMELEVEL Device.Audio.Base.KSTopologyCompliance Device.Audio.Base.NoUncontrollableStreamRouting Device.Audio.Base.ReportSupportedProperties Device.Audio.Base.VolumeControl</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~12 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Audio Device Testing Prerequisites](audio-device-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Audio Testing](troubleshooting-audio-testing.md).

## Supporting Information


This test checks the following:

-   Nodes to make sure that the number of inputs and outputs is valid, that they are numbered correctly, and that their required properties are present. Also, no orphaned nodes are allowed.

-   Node properties to determine whether their messages are well formatted and function as expected. The test checks **KSPROPERTY\_DESCRIPTION** values, including the **Access** options and the **KSPROPERTY\_MEMBERSHEADER** structure for channel properties. Also, the test makes sure that each channel exists and functions within the specified ranges.

-   Pins for valid **KsDataRange** and **KsDataFormat** values. The test validates the pin **DataFlow** values to make sure that they comply with the general flow of the topology graph. Also, no orphaned pins are allowed.

-   Filters to make sure that the connections between nodes (internal connections) and between filters (physical connections) are valid and consistent. Also, the test determines whether there is a valid path of connections between pins that correspond to physical jacks on an audio device and source/sink pins in the topology.

**Note**  
For detailed information about the Microsoft requirements for audio devices, see the "Audio" section under "Device and Driver Technologies" in MSDN.

 

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
<td><p><strong>CScript DevIDparse.vbs /WDKDeviceID:[WDKDeviceID]</strong></p></td>
<td><p>This command runs the KS Topology test job.</p>
<div class="alert">
<strong>Note</strong>  
<p>When you are scheduling from Job Explorer for private testing, set the <strong>[WDKDeviceID]</strong> option to the device ID plus instance ID.</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

**Note**  
For help with this test job, review the DevIDparse.vbs file in a text editor.

 

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
<td><p>DevIDParse.vbs</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\WDK\</p></td>
</tr>
<tr class="even">
<td><p>S98wtt.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\Profiles\</p></td>
</tr>
</tbody>
</table>

 

 

 






