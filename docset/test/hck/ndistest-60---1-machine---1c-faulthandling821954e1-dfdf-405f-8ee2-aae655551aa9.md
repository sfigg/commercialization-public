---
author: joshbax-msft
title: NDISTest 6.0 - 1 Machine - 1c\_FaultHandling
description: NDISTest 6.0 - 1 Machine - 1c\_FaultHandling
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7ab82591-dc5e-469b-88d8-d1683412b78c
---

# NDISTest 6.0 - 1 Machine - 1c\_FaultHandling


This automated test uses a fault injection feature of NDIS. Each loop will set bits in the registry for the driver under test. These bits will cause NDIS to fail specific NDIS calls. The registry value name is NdisDriverVerifyFlags. The loop, value, and NDIS call are listed below:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Loop</th>
<th>Value</th>
<th>NDIS Call</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>0x001</p></td>
<td><p>NdisMAllocateMapRegisters</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>0x002</p></td>
<td><p>NdisMRegisterInterrupt</p></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>0x004</p></td>
<td><p>NdisMAllocateSharedMemory</p></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>0x010</p></td>
<td><p>NdisMMapIoSpace</p></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>0x020</p></td>
<td><p>NdisMRegisterIoPortRange</p></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>0x040</p></td>
<td><p>Read NdisGetSetBusConfigSpace</p></td>
</tr>
<tr class="odd">
<td><p>6</p></td>
<td><p>0x080</p></td>
<td><p>Write NdisGetSetBusConfigSpace</p></td>
</tr>
<tr class="even">
<td><p>7</p></td>
<td><p>0x100</p></td>
<td><p>NdisMInitializeScatterGatherDma</p></td>
</tr>
</tbody>
</table>

 

The driver should not load unless it does not call the particular function. This test is successful as long the driver does not crash the system. During each test loop, after the driver fails to load the registry is cleared and the driver is loaded normally to be sure it still works.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.Base.NDISRequirements</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

## More information


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
<td><p>queryTestDeviceID</p></td>
<td><p>The ID of the test device.</p>
<p>Example: //Devnode/DeviceID</p></td>
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
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>[WTTRunWorkingDir]\ndistest\bin\ndtest.exe /auto /client /dvi /u /target:Miniport /tc:[queryTestDeviceID] /script:{1c_FaultHandling.wsf}</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

 

 






