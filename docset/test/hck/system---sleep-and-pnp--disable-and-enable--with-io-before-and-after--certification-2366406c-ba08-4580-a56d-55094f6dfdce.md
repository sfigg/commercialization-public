---
author: joshbax-msft
title: System - Sleep and PNP (disable and enable) with IO Before and After (Certification)
description: System - Sleep and PNP (disable and enable) with IO Before and After (Certification)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 00ffd42a-13b7-4be7-9a91-9413ce4908f4
---

# System - Sleep and PNP (disable and enable) with IO Before and After (Certification)


This test cycles the system through various sleep states and performs I/O and basic PNP (disable/enable) on devices before and after each sleep state cycle. For more information, see [About the Sleep and PNP (disable and enable) with IO Before and After test](http://msdn.microsoft.com/library/windows/hardware/jj673017.aspx).

Any failures logged by this test are filtered out with an automatic erratum. Any stop error or hangs observed during the test run must be addressed.

The goal of this test is to ensure that the test system continues to function properly with the test driver installed and loaded on the system.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.Reliability.SystemReliability System.Fundamentals.SystemUSB.MustIncludeSuperSpeedPort System.Fundamentals.SystemUSB.USBDevicesandHostControllersWorkAfterPowerCycle System.Fundamentals.SystemUSB.XHCIControllerSaveState System.Fundamentals.SystemUSB.XhciSupportsRuntimePowerManagement</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~90 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


For more information, see [Device.Fundamentals Reliability Testing Prerequisites](devicefundamentals-reliability-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see[Troubleshooting Device Fundamentals Reliability Testing by using the Windows HCK](troubleshooting-device-fundamentals-reliability-testing-by-using-the-windows-hck.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

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
<td><p>DQ</p></td>
<td><p>A WDTF SDEL query that is used to identify the target device(s). For more information about the DQ parameter, see [Device Fundamental Test Parameters](http://go.microsoft.com/fwlink/p/?LinkId=232678).</p></td>
</tr>
<tr class="even">
<td><p>WDTFREMOTESYSTEM</p></td>
<td><p>Required ONLY if there is a wired network adapter on the test system AND it does not have an IPv6 gateway address. If determined to be required, please provide an IPv6 address that the NIC can ping to test network I/O (for example: fe80::78b6:810:9c12:46cd).</p></td>
</tr>
<tr class="odd">
<td><p>TestCycles</p></td>
<td><p>Number of test cycles.</p>
<p>Default value: 4</p></td>
</tr>
<tr class="even">
<td><p>IOPeriod</p></td>
<td><p>IO period (in minutes).</p>
<p>Default value: 1</p></td>
</tr>
<tr class="odd">
<td><p>Wpa2PskAesSsid</p></td>
<td><p>The SSID of a WPA2 AES wireless network that the test can use to test the WiFi adapter. This is only required if the DUT or one of its child devices is a wireless adapter</p>
<p>Default value: kitstestssid</p></td>
</tr>
<tr class="even">
<td><p>Wpa2PskPassword</p></td>
<td><p>The password of a WPA2 AES wireless network that the test can use to test the WiFi adapter. This is only required if the DUT or one of its child devices is a wireless adapter</p>
<p>Default value: password</p></td>
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
<td><p><strong>TE.exe /inproc /enablewttlogging /appendwttlogging Devfund_Sleep_PNP_DisableEnable_With_IO_BeforeAndAfter_wlk_sysfund.wsc /p:”DQ=[DQ]” /p:”Wpa2PskAesSsid=[Wpa2PskAesSsid]” /p:”Wpa2PskPassword=[Wpa2PskPassword]” /p:”WDTFREMOTESYSTEM=[WDTFREMOTESYSTEM]” /p:”TestCycles=[TestCycles]” /p:”IOPeriod=[IOPeriod]”</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

 

 






