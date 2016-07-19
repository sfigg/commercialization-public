---
author: joshbax-msft
title: Bluetooth - Radio On-Off Logo Tests (Windows v6.3)
description: Bluetooth - Radio On-Off Logo Tests (Windows v6.3)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0b1ad356-0513-4e84-8063-008a075f5c74
---

# Bluetooth - Radio On-Off Logo Tests (Windows v6.3)


This automated test verifies that the Bluetooth device can be started or stopped by using software.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.Bluetooth.Base.OnOffStateControllableViaSoftware</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
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

 

## Prerequisites


Before you run the test, complete the test setup as described in the test requirements: [Bluetooth Controller Testing Prerequisites](bluetooth-controller-testing-prerequisites.md).

-   This test requires two test computers (one acts as Primary, the other Secondary). ). The test computers must have the same operating system, use the same radio transport and have a Bluetooth 4.0 compliant LE radio. The primary test computer must have the radio being certified for logo (Device Under Test).

-   The Bluetooth radio must use the Microsoft Bluetooth Driver Stack for testing.

-   Primary radio must be on-board and support software control (third-party DLL required). Will skip on USB connected radios.

Tests are copied locally to the WTTJobsWorking directory and logs are copied to the default Logs server for WTT.

Enabling collection of Event Tracing for Windows (ETW) traces assists with diagnosing test failures.

These traces capture the HCI traffic sent to and from the Bluetooth stack. They can be decoded using Netmon and the Bluetooth ETW parsers. It is recommended to first investigate the issue internally using these traces or some other method of capturing over-the-air traces because many controller/stack inter-operability issues can be observed in these traces.

You can view the collected logs using Netmon and the Bluetooth NPL parsers. These parsers can be obtained through installing the WDK.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## Running the test


**ROO\_BthProviderEnableRadio**

This case validates the ability of the radio to be enabled from the Bluetooth provider.

**ROO\_BthProviderDisableRadio**

This case validates the ability of the radio to be disabled from the Bluetooth provider.

**ROO\_BthProviderToggleRadioOnOff**

This case stresses the radio, toggling it on and off 25 times.

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
<td><p>ENABLETRACING</p></td>
<td><p>Enables collection of ETW traces. If <strong>True</strong>, the ETW traces are enabled on the collection. If <strong>False</strong>, the ETW traces on the collection are turned off.</p>
<p>Default value: False</p></td>
</tr>
</tbody>
</table>

 

 

 






