---
author: joshbax-msft
title: NDISTest 6.5 - WlanSendReceive
description: NDISTest 6.5 - WlanSendReceive
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 45d034af-7580-40bf-a70c-101dcde0bf59
---

# NDISTest 6.5 - WlanSendReceive


This automated test suite verifies the device can send and receive data.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.Base.MeetPerformanceReq Device.Network.WLAN.Base.OnlyWDFOrNDIS630Calls Device.Network.WLAN.Base.SupportFiltering32MulticastAddresses Device.Network.WLAN.Base.SupportPromiscuousAndMulticastPacketFiltering Device.Network.WLAN.Base.SupportVirtualWiFi Device.Network.WLAN.CSBBase.ConformToNDIS Device.Network.WLAN.CSBBase.MeetPerformanceReq Device.Network.WLAN.CSBBase.OnlyWDFOrNDIS630Calls Device.Network.WLAN.CSBBase.SupportFiltering32MulticastAddresses Device.Network.WLAN.CSBBase.SupportPromiscuousAndMulticastPacketFiltering Device.Network.WLAN.CSBBase.SupportVirtualWiFi Device.Network.WLAN.CSBSoftAP.SupportSoftAP Device.Network.WLAN.SoftAP.SupportSoftAP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~18 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

The following suites are available:

-   AddressChange\_ext

-   SafeMode\_ext

-   SendRecv\_cmn

-   SendRecv1x\_cmn

-   Statistics\_ext

The AddressChange\_ext suite consists of the following:

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
<td><p>Query OID_DOT11_CURRENT_ADDRESS on the test adapter.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Query OID_DOT11_PERMANENT_ADDRESS on the test adapter.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Set the test adapter's network address to a valid address {0}. Verify data can be received and old address does not work.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Set the test adapter's network address to a multicast address {0}. This is no data verification done during this test.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Set the test adapter's network address to a broadcast address {0}. This is no data verification done during this test.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Set the test adapter's network address with a globally administered address {0}. This is no data verification done during this test.</p></td>
</tr>
</tbody>
</table>

 

The SafeMode\_ext suite consists of the following:

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
<td><p>VerifySafeModeWithFragmentation</p></td>
<td><ul>
<li><p>Set OID_DOT11_SAFE_MODE_ENABLED.</p></li>
<li><p>Send data from the DUT to an access point using {0} and {1} with safe mode enabled.</p></li>
<li><p>Send data from an access point to the DUT using {0} and {1} with safe mode enabled.</p></li>
<li><p>Transmit data from an access point to the DUT using {0} with safe mode and ExcludeUnencrypted enabled. ExcludeUnencrypted should be ignored</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifySafeModeWithFragmentation</p></td>
<td><ul>
<li><p>Set OID_DOT11_SAFE_MODE_ENABLED.</p></li>
<li><p>Send data from the DUT to an access point using RSNA and CCMP with safe mode enabled.</p></li>
<li><p>Send data from an access point to the DUT using RSNA and CCMP with safe mode enabled.</p></li>
<li><p>Transmit data from an access point to the DUT using CCMP with safe mode and ExcludeUnencrypted enabled. ExcludeUnencrypted should be ignored.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>VerifySafeModeWithFragmentation</p></td>
<td><ul>
<li><p>Set OID_DOT11_SAFE_MODE_ENABLED.</p></li>
<li><p>Send data from an access point to the DUT using RSNA and CCMP with safe mode enabled.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>RunTestsAgainInVWiFiMode</p></td>
<td><p>Run the above tests again with a secondary vwifi port created.</p></td>
</tr>
</tbody>
</table>

 

The SendRecv\_cmn suite consists of the following:

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
<td><p>VerifyUnicastSendReceive</p></td>
<td><ul>
<li><p>Send unicast packets from an access point to the DUT.</p></li>
<li><p>Send unicast packets from the DUT to an access point.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyBroadcastSendReceive</p></td>
<td><ul>
<li><p>Send broadcast packets from an access point to the DUT.</p></li>
<li><p>Send broadcast packets from the DUT to an access point.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Pre-configuration</p></td>
<td><p>Connect the DUT to an access point with DOT11_MAC_AUTO_CONFIG_ENABLED_FLAG turned off before verifying fragmented sent or received data.</p></td>
</tr>
<tr class="even">
<td><p>VerifySendFragmentation</p></td>
<td><ul>
<li><p>Send unicast packets from an access point to the DUT. Set the maximum fragmentation.</p></li>
<li><p>Send unicast packets from the DUT to an access point. Set the maximum fragmentation.</p></li>
<li><p>Send unicast packets from an access point to the DUT. Set the minimum fragmentation.</p></li>
<li><p>Send unicast packets from the DUT to an access point. Set the minimum fragmentation.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>VerifyReceiveFragmentation</p></td>
<td><ul>
<li><p>Send unicast packets from an access point to the DUT. Set the minimum fragmentation on the access point.</p></li>
<li><p>Send unicast packets from the DUT to an access point. Set the minimum fragmentation on the access point.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyRTSThreshold</p></td>
<td><ul>
<li><p>Send unicast packets from an access point to the DUT. Set the minimum RTS threshold.</p></li>
<li><p>Send unicast packets from the DUT to an access point. Set the minimum RTS threshold.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>VerifySendRecvIBSS</p></td>
<td><ul>
<li><p>Send unicast packets from the SUT to the DUT.</p></li>
<li><p>Send unicast packets from the DUT to the SUT.</p></li>
<li><p>Send broadcast packets from the SUT to the DUT.</p></li>
<li><p>Send broadcast packets from the DUT to the SUT.</p></li>
</ul>
<p>This test is not applicable to devices that support InstantGo.</p></td>
</tr>
</tbody>
</table>

 

The SendRecv1x\_cmn suite consists of the following:

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
<td><p>Verify1xSendRecv</p></td>
<td><ul>
<li><p>Configure sender and receiver for 802.1x</p></li>
<li><p>Verifying DUT can receive 802.1x packets when associated using {0}/{1}/{2} {3} cipher keys installed</p></li>
<li><p>Verifying DUT can send 802.1x packets when associated using {0}/{1}/{2} {3} cipher keys installed</p></li>
</ul>
<p>The following authentication and cipher pairs are used:</p>
<ul>
<li><p>Open WEP40</p></li>
<li><p>Open WEP104</p></li>
<li><p>Open WEP</p></li>
<li><p>WPA TKIP</p></li>
<li><p>WPAPSK TKIP</p></li>
<li><p>RSNA TKIP</p></li>
<li><p>RSNAPSK TKIP</p></li>
<li><p>WPAPSK CCMP</p></li>
<li><p>RSNA CCMP</p></li>
<li><p>RSNAPSK CCMP</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The Statistics\_ext suite consists of the following:

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
<td><ul>
<li><p>Verify header information in DOT11_STATISTICS queried from the DUT.</p></li>
<li><p>Send unicast packets from the DUT to the first access point and verify the DUT TransmittedFrameCount is updated correctly.</p></li>
<li><p>Send unicast packets from the first access point to the DUT and verify DUT ReceivededFrameCount is updated correctly.</p></li>
<li><p>Send Open/WEP40 encrypted unicast data from the first access point to the DUT and verify MacUcastCounters DecryptSuccessCount on the DUT is updated correctly.</p></li>
<li><p>Send unicast data from the first access point to DUT and verify ullTKIPLocalMICFailures in DOT11_STATISTICS.MacUcastCounters is updated correctly.</p></li>
<li><p>Send unicast data from the access point to the DUT and verify ullCCMPDecryptErrors in DOT11_STATISTICS.MacUcastCounters is updated correctly.</p></li>
<li><p>Send unicast data from the first access point to the DUT and verify ullTKIPICVErrorCount in DOT11_STATISTICS.MacUcastCounters is updated correctly.</p></li>
<li><p>Send WEP40 encrypted unicast data from the first access point to the DUT and verify ullWEPUndecryptableCount in DOT11_STATISTICS.MacUcastCounters is updated correctly.</p></li>
<li><p>Send encrypted unicast data from the first access point to the DUT and verify ullDecryptFailureCount and ullWEPICVErrorCount in DOT11_STATISTICS.MacUcastCounters are updated correctly.</p></li>
<li><p>Send unicast data from the DUT to the first access point and verify ullTransmittedFrameCount in DOT11_STATISTICS.PhyCounters is updated correctly.</p></li>
<li><p>Send unicast data from the first access point to the DUT and verify ullReceivedFrameCount in DOT11_STATISTICS.PhyCounters is updated correctly.</p></li>
<li><p>Send fragmented data from an access point to the DUT and verify ullReceivedFragmentCount in DOT11_STATISTICS.PhyCounters is updated correctly.</p></li>
<li><p>Send plaintext unicast data from ProtocolAP to the DUT and verify WEPExcludedCount on the DUT is updated correctly</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






