---
author: joshbax-msft
title: NDISTest 6.5 - WlanPerformance
description: NDISTest 6.5 - WlanPerformance
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2dc44416-3622-4358-a66f-0d2553827332
---

# NDISTest 6.5 - WlanPerformance


This automated test suite verifies the performance of the 802.11 extensible wireless drivers and the miniport drivers in hibernation and resume scenarios.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.Base.MeetPerformanceReq Device.Network.WLAN.Base.OnlyWDFOrNDIS630Calls Device.Network.WLAN.Base.SupportWiFiAutoSaveMode Device.Network.WLAN.CSBBase.ConformToNDIS Device.Network.WLAN.CSBBase.MeetPerformanceReq Device.Network.WLAN.CSBBase.OnlyWDFOrNDIS630Calls Device.Network.WLAN.CSBBase.SupportWiFiAutoSaveMode</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~60 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

The following suites are available:

-   Performance\_cmn

-   Performance\_ext

-   VWiFiPerformance\_ext

The Performance\_cmn suite consists of the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p></p></td>
<td><p>Send data from the DUT to an access point and collect statistics (cipher: {0}, packet size: {1}, packet lists per send: {2}, time duration: 30 seconds})</p>
<p>Ciphers used: None,WEP,TKIP,CCMP</p>
<p>Packet size: 1500</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Send data from an access point to the DUT and collect statistics (cipher: {0}, packet size: {1}, packet lists per send: 40, time duration: 30)</p>
<p>Ciphers used: None,WEP,TKIP,CCMP</p>
<p>Packet size: 1500</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Send data from the DUT to an access point and verify the send data rate (cipher: None, packet size: 1488, packet lists per send: 21, time duration: 30, data rate sample interval: 5ms)</p></td>
</tr>
</tbody>
</table>

 

The Performance\_ext suite consists of the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>VerifyScanning</p></td>
<td><ul>
<li><p>Scan the list with an access point using the following channel pairs: 1 and 11, 1 and 6, and 6 and 11. Verify that the scan completed within the required time constraint and that two known access points on the same PHY but with different channels and different SSIDs are returned in the scan list.</p></li>
<li><p>Scan the list with an access point using 10 random pairs from channels between 1 and 12. Verify that the scan completed within the required time constraint and that two known access points on the same PHY but with different channels and different SSIDs are returned in the scan list.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyAPLossDetection</p></td>
<td><ul>
<li><p>Verify the DUT successfully detected that the hidden access point disappeared within 2 seconds.</p></li>
<li><p>Verify the DUT successfully detected that the visible access point disappeared within 2 seconds.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>VerifyFirstTimeConnection</p></td>
<td><ul>
<li><p>Verify the DUT successfully associates with a visible access point within 10 seconds.</p></li>
<li><p>Verify the DUT successfully associates with a hidden access point within 10 seconds.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>ValidateStaleScanListAfterResumingFromSleep</p></td>
<td><ul>
<li><p>Verify that a driver does not return an outdated scan list on resume without a forced active scan. Connect to the first access point. Shut down the first and second access point with delay. Resume the DUT when it hibernates.</p></li>
<li><p>Verify that a driver does not return an outdated scan list on resume with a forced active scan.</p></li>
<li><p>Verify that a driver does not return an outdated scan list on resume without a forced active scan. Do not connect to the first access point. Shut down the first and second access point with delay. Resume the DUT when it hibernates.</p></li>
<li><p>Validate that a driver does not return outdated scan list on resume with forced active scan</p></li>
<li><p>Verify that a driver does not return an outdated scan list on resume without a forced active scan. Connect to the first access point. Shut down the first and second access point with delay. Resume the DUT when it goes to standby.</p></li>
<li><p>Verify that a driver does not return an outdated scan list on resume with a forced active scan.</p></li>
<li><p>Verify that a driver does not return an outdated scan list on resume without a forced active scan. Do not connect to the first access point. Shut down the first and second access point with delay. Resume the DUT when it goes to standby.</p></li>
<li><p>Verify that a driver does not return an outdated scan list on resume with a forced active scan.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>VerifyScanningAfterResumingFromSleep</p></td>
<td><p>Hibernate the DUT and verify that DUT miniport completes a scan within 4 seconds after resuming from hibernate.</p></td>
</tr>
<tr class="even">
<td><p>VerifyLowPowerSameNetworkSameAP</p></td>
<td><ul>
<li><p>Verify that the DUT successfully associates with a hidden access point within 1 second after resuming from hibernate.</p></li>
<li><p>Verify that the DUT successfully associates with a visible access point within 1 seconds after resuming from hibernate.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>VerifyLowPowerSameNetworkDifferentAP</p></td>
<td><ul>
<li><p>Verify that the DUT roams to a new hidden access point after the original access point disappears during hibernate. The DUT must successfully associate with the new access point within 4 seconds after resuming from hibernate.</p></li>
<li><p>Verify that the DUT roams to a new visible access point after the original access point disappears during hibernate. The DUT must successfully associate with new access point within 4 seconds after resuming from hibernate.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyScanningAfterResumingFromSleep</p></td>
<td><p>Put the DUT into standby mode. Verify that the DUT miniport completes a scan within 4 seconds after resuming from standby.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyLowPowerSameNetworkSameAP</p></td>
<td><ul>
<li><p>Verify that the DUT successfully associates with a hidden access point within 1 second after resuming from standby.</p></li>
<li><p>Verify that the DUT successfully associates with a visible access point within 1 second after resuming from standby.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyLowPowerSameNetworkDifferentAP</p></td>
<td><ul>
<li><p>Verify that the DUT roams to a new hidden access point after the original access point disappears during Standby. The DUT must successfully associate with the new access point within 4 seconds after resuming from standby.</p></li>
<li><p>Verify that the DUT roams to new visible access point after the original access point disappears during standby. The DUT must successfully associate with the new access point within 4 seconds after resuming from standby.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The VWiFiPerformance\_ext suite consists of the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Scenario setup – Virtualization is disabled and the PrimaryPort(STA) is connected.</p></td>
<td><ul>
<li><p>Measure data throughput on the primary port sent by PrimaryPort(STA).</p></li>
<li><p>Measure data throughput on the primary port sent by TestAP.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Scenario setup – Virtualization is enabled, the PrimaryPort(STA) is connected, and the SecondaryPort (SoftAP) is not running.</p></td>
<td><ul>
<li><p>Measure data throughput on the primary port sent by PrimaryPort(STA).</p></li>
<li><p>Compare data throughput and see if performance has degraded beyond an acceptable limit.</p></li>
<li><p>Measure data throughput on the primary port sent by TestAP.</p></li>
<li><p>Compare data throughput and see if performance has degraded beyond an acceptable limit.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Scenario setup – Virtualization is enabled, the PrimaryPort(STA) is connected, the SecondaryPort (SoftAP) is running, and the SUT is not connected to the SoftAP.</p></td>
<td><ul>
<li><p>Measure data throughput on the primary port sent by PrimaryPort(STA).</p></li>
<li><p>Compare data throughput and see if performance has degraded beyond an acceptable limit.</p></li>
<li><p>Measure data throughput on the primary port sent by TestAP.</p></li>
<li><p>Compare data throughput and see if performance has degraded beyond an acceptable limit.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Scenario setup – Virtualization is enabled, the PrimaryPort(STA) is connected, the SecondaryPort (SoftAP) is running, and the SUT is connected to the SoftAP.</p></td>
<td><ul>
<li><p>Measure data throughput on the primary port sent by PrimaryPort(STA).</p></li>
<li><p>Compare data throughput and see if performance has degraded beyond an acceptable limit.</p></li>
<li><p>Measure data throughput on the primary port sent by TestAP.</p></li>
<li><p>Compare data throughput and see if performance has degraded beyond an acceptable limit.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Scenario setup – Virtualization is enabled, the PrimaryPort(STA) is connected, the SecondaryPort (SoftAP) is running, and the SUT is connected to the SoftAP.</p></td>
<td><ul>
<li><p>Measure data throughput on the primary port sent by PrimaryPort(STA). Measure data throughput on secondary port sent by: SecondaryPort(SoftAP).</p></li>
<li><p>Compare data throughput and see if performance has degraded beyond an acceptable limit.</p></li>
<li><p>Measure data throughput on the primary port sent by TestAP. Measure data throughput on the secondary port sent by SUT(STA).</p></li>
<li><p>Compare data throughput and see if performance has degraded beyond an acceptable limit.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

If you receive the failure message **Cannot load Counter Name data because an invalid index was read from the registry**, the performance counters in the system need to be rebuilt. This can be done by using the following procedure:

**To rebuild the performance counters in the system**

1.  From an elevated command prompt, run the following command:

    **lodctr /r**

    You will receive the following message:

    `Info: Successfully rebuilt performance counter setting from system backup store.`

2.  After this action, some providers might be disabled. Run the following command to check status:

    **lodctr /q**

    The output will be similar to the following:

    ``` syntax
    Performance Counter ID Queries [PERFLIB]:    Base Index: 0x00000737 (1847)    Last Counter Text ID: 0x00001560 (5472)    Last Help Text ID: 0x00001561 (5473)[.NET CLR Data] Performance Counters (Enabled)    DLL Name: netfxperf.dll    Open Procedure: OpenPerformanceData    Collect Procedure: CollectPerformanceData    Close Procedure: ClosePerformanceData    First Counter ID: 0x00001080 (4224)    Last Counter ID: 0x0000108C (4236)    First Help ID: 0x00001081 (4225)    Last Help ID: 0x0000108D (4237)
    ```

3.  If it says (Disabled) next to a provider, you can enable it by using the following command:

    **lodctr /e***:&lt;provider name&gt;*

    Where &lt;*provider name*&gt; is the string between the \[ \] brackets at the start of the entry.

4.  Rerun the test.

 

 






