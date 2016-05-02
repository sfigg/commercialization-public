---
author: joshbax-msft
title: NDISTest 6.5 - WLanBasic
description: NDISTest 6.5 - WLanBasic
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c570c8ea-e9df-4284-a486-bde8b641dd13
---

# NDISTest 6.5 - WLanBasic


This automated test completes an 802.11 conformance test for testing authentication with either emulated or extensible wireless drivers, and verifies the connection and data transmission with different authentication and cipher combinations that are supported on the network adapter.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.Base.OnlyWDFOrNDIS630Calls Device.Network.WLAN.Base.SupportVirtualWiFi Device.Network.WLAN.CSBBase.ConformToNDIS Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBBase.OnlyWDFOrNDIS630Calls Device.Network.WLAN.CSBBase.SupportVirtualWiFi Device.Network.WLAN.CSBSoftAP.SupportSoftAP Device.Network.WLAN.SoftAP.SupportSoftAP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~9 minutes</p></td>
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

The following suites are available in this test:

-   Capability\_ext

-   CurrentOpMode\_ext

-   EnableDisable\_cmn

-   LogoCheck\_cmn

-   OIDs\_ext

-   OpModeCapability\_ext

-   Regression\_ext

-   SignalStrength\_ext

-   VirtualStation\_ext

-   VWiFiOids\_ext

-   StandardizedKeywords

The Capability\_ext suite consists of the following:

-   DOT11\_EXTSTA\_CAPABILITY.Header.Revision is dOT11\_EXTSTA\_CAPABILITY\_REVISION\_1

-   DOT11\_EXTSTA\_CAPABILITY.uScanSSIDListSize has a value of at least 4

-   DOT11\_EXTSTA\_CAPABILITY.uDesiredBSSIDListSize has a value of at least 1

-   DOT11\_EXTSTA\_CAPABILITY.uDesiredSSIDListSize has a value of at least 1

-   DOT11\_EXTSTA\_CAPABILITY.uPMKIDCacheSize has a value of either 0 or at least 3

-   DOT11\_EXTSTA\_CAPABILITY.uMaxNumPerSTADefaultKeyTables has a value of at least 32

-   DOT11\_EXTSTA\_CAPABILITY.uDefaultKeyTableSize has a value of at least 4

-   DOT11\_EXTSTA\_CAPABILITY.uKeyMappingTableSize

-   DOT11\_EXTSTA\_CAPABILITY.uPrivacyExemptionListSize has a value of at least 1

-   DOT11\_EXTSTA\_CAPABILITY.uExcludedMacAddressListSize has a value of at least 4

-   the device can gracefully respond to a reset request while compiling a capability list

The CurrentOpMode\_ext suite consists of the following:

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
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point as extensible station</p></li>
<li><p>Query supported authentication/cipher types</p></li>
<li><p>Ignore open none</p></li>
<li><p>Start access point comm helper</p></li>
<li><p>Start DUT comm helper</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyOpModeSetRequest</p></td>
<td><p>Verifying set request for OID_DOT11_CURRENT_OPERATION_MODE. This test case issues a set request to set DUT to extensible station mode. A subsequent query request must return extensible station.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyOpModeAfterDisconnect</p></td>
<td><p>Verifying OID_DOT11_CURRENT_OPERATION_MODE after disconnect. Test case sets the device to extensible station mode, associate with an AP, disassociate from the AP. Then DUT will be queried for operation mode which must return extensible station</p></td>
</tr>
</tbody>
</table>

 

The EnableDisable\_cmn suite consists of the following:

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
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point as extensible station</p></li>
<li><p>Query supported authentication/cipher types</p></li>
<li><p>Ignore open none</p></li>
<li><p>Start access point comm helper</p></li>
<li><p>Start DUT comm helper</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyDisconnectOnLoad</p></td>
<td><p>Verify DUT indicates disconnect when driver is first loaded.</p></td>
</tr>
<tr class="odd">
<td><p>DisableEnableDUTOnly</p></td>
<td><p>Disables and enables DUT several times and verifies that DUT is capable of association and communication after DUT is enabled.</p></td>
</tr>
<tr class="even">
<td><p>DisableEnableAllDevices</p></td>
<td><p>Disables all SUTs on the same machine, then disables and enables DUT several times and verifies that DUT is capable of association and communication after DUT is enabled.</p></td>
</tr>
</tbody>
</table>

 

LogoCheck\_cmn consists of the following:

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
<td><p>ExtensibleLogoCheck</p></td>
<td><ul>
<li><p>Verifies that DUT supports at least 802.11b or 802.11g PHY.</p></li>
<li><p>Verifies that DUT supports at least 32 multicast addresses.</p></li>
<li><p>Verifies that DUT supports at least 4 per-STA default key tables.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

OIDs\_ext consists of the following:

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
<td><p>VerifyMandatoryOIDs</p></td>
<td><p>Verifies that DUT reports all Required OIDs in OID_GEN_SUPPORTED_LIST.</p></td>
</tr>
<tr class="even">
<td><p>VerifyOIDBehavior</p></td>
<td><p>Verifies that OID set and/or query behavior is as expected - {0}, State {1}.</p></td>
</tr>
</tbody>
</table>

 

OIDs\_ext checks the following OIDs:

-   OID\_DOT11\_MPDU\_MAX\_LENGTHOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_OPERATION\_MODE\_CAPABILITYOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CURRENT\_OPERATION\_MODEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CURRENT\_PACKET\_FILTEROID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_ATIM\_WINDOWOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_SCAN\_REQUEST OID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CURRENT\_PHY\_TYPEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_JOIN\_REQUESTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_AP\_JOIN\_REQUESTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_START\_REQUESTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_UPDATE\_IEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_RESET\_REQUESTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_NIC\_POWER\_STATEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_RSSI\_RANGEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_RF\_USAGEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_MAX\_MAC\_ADDRESS\_STATESOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_RECV\_SENSITIVITY\_LISTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_NIC\_SPECIFIC\_EXTENSIONOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_OPTIONAL\_CAPABILITYOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CURRENT\_OPTIONAL\_CAPABILITYOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_STATION\_IDOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_MEDIUM\_OCCUPANCY\_LIMITOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CF\_POLLABLEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CFP\_PERIODOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CFP\_MAX\_DURATIONOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_POWER\_MGMT\_MODEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_OPERATIONAL\_RATE\_SETOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_BEACON\_PERIODOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_DTIM\_PERIODOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_MULTI\_DOMAIN\_CAPABILITY\_IMPLEMENTEDOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_MULTI\_DOMAIN\_CAPABILITY\_ENABLEDOID\_OPTION\_MULTIDOMAIN

-   OID\_DOT11\_COUNTRY\_STRINGOID\_OPTION\_MULTIDOMAIN

-   OID\_DOT11\_WEP\_ICV\_ERROR\_COUNTOID\_OPTION\_WEP

-   OID\_DOT11\_MULTI\_DOMAIN\_CAPABILITYOID\_OPTION\_MULTIDOMAIN

-   OID\_DOT11\_MAC\_ADDRESSOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_RTS\_THRESHOLDOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_SHORT\_RETRY\_LIMITOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_LONG\_RETRY\_LIMITOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_FRAGMENTATION\_THRESHOLDOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_MAX\_TRANSMIT\_MSDU\_LIFETIMEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_MAX\_RECEIVE\_LIFETIMEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_COUNTERS\_ENTRYOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_SUPPORTED\_PHY\_TYPESOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CURRENT\_REG\_DOMAINOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_TEMP\_TYPEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CURRENT\_TX\_ANTENNAOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_DIVERSITY\_SUPPORTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CURRENT\_RX\_ANTENNAOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_SUPPORTED\_POWER\_LEVELSOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CURRENT\_TX\_POWER\_LEVELOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_HOP\_TIMEOID\_OPTION\_PHY\_FHSS

-   OID\_DOT11\_CURRENT\_CHANNEL\_NUMBEROID\_OPTION\_PHY\_FHSS

-   OID\_DOT11\_MAX\_DWELL\_TIMEOID\_OPTION\_PHY\_FHSS

-   OID\_DOT11\_CURRENT\_DWELL\_TIMEOID\_OPTION\_PHY\_FHSS

-   OID\_DOT11\_CURRENT\_SETOID\_OPTION\_PHY\_FHSS

-   OID\_DOT11\_CURRENT\_PATTERNOID\_OPTION\_PHY\_FHSS

-   OID\_DOT11\_CURRENT\_INDEXOID\_OPTION\_PHY\_FHSS

-   OID\_DOT11\_CURRENT\_CHANNELOID\_OPTION\_PHY\_DSSS

-   OID\_DOT11\_CCA\_MODE\_SUPPORTEDOID\_OPTION\_PHY\_DSSS

-   OID\_DOT11\_CURRENT\_CCA\_MODEOID\_OPTION\_PHY\_DSSS

-   OID\_DOT11\_ED\_THRESHOLDOID\_OPTION\_PHY\_DSSS

-   OID\_DOT11\_CURRENT\_FREQUENCYOID\_OPTION\_PHY\_OFDM

-   OID\_DOT11\_TI\_THRESHOLDOID\_OPTION\_PHY\_OFDM

-   OID\_DOT11\_FREQUENCY\_BANDS\_SUPPORTEDOID\_OPTION\_PHY\_OFDM

-   OID\_DOT11\_SHORT\_PREAMBLE\_OPTION\_IMPLEMENTEDOID\_OPTION\_PHY\_HRDSSS

-   OID\_DOT11\_PBCC\_OPTION\_IMPLEMENTEDOID\_OPTION\_PHY\_HRDSSS

-   OID\_DOT11\_CHANNEL\_AGILITY\_PRESENTOID\_OPTION\_PHY\_HRDSSS

-   OID\_DOT11\_CHANNEL\_AGILITY\_ENABLEDOID\_OPTION\_PHY\_HRDSSS

-   OID\_DOT11\_HR\_CCA\_MODE\_SUPPORTEDOID\_OPTION\_PHY\_HRDSSS

-   OID\_DOT11\_REG\_DOMAINS\_SUPPORT\_VALUEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_SUPPORTED\_TX\_ANTENNAOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_DIVERSITY\_SELECTION\_RXOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_SUPPORTED\_DATA\_RATES\_VALUEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_DATA\_RATE\_MAPPING\_TABLEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_ERP\_PBCC\_OPTION\_IMPLEMENTEDOID\_OPTION\_PHY\_ERP

-   OID\_DOT11\_ERP\_PBCC\_OPTION\_ENABLEDOID\_OPTION\_PHY\_ERP

-   OID\_DOT11\_DSSS\_OFDM\_OPTION\_IMPLEMENTEDOID\_OPTION\_PHY\_ERP

-   OID\_DOT11\_DSSS\_OFDM\_OPTION\_ENABLEDOID\_OPTION\_PHY\_ERP

-   OID\_DOT11\_SHORT\_SLOT\_TIME\_OPTION\_IMPLEMENTEDOID\_OPTION\_PHY\_ERP

-   OID\_DOT11\_SHORT\_SLOT\_TIME\_OPTION\_ENABLEDOID\_OPTION\_PHY\_ERP

-   OID\_DOT11\_AUTO\_CONFIG\_ENABLEDOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_ENUM\_BSS\_LISTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_FLUSH\_BSS\_LISTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_POWER\_MGMT\_REQUESTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_DESIRED\_SSID\_LISTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_EXCLUDED\_MAC\_ADDRESS\_LISTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_DESIRED\_BSSID\_LISTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_DESIRED\_BSS\_TYPEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_PMKID\_LISTOID\_OPTION\_RSNAWPA

-   OID\_DOT11\_CONNECT\_REQUESTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_EXCLUDE\_UNENCRYPTEDOID\_OPTION\_CIPHER

-   OID\_DOT11\_STATISTICSOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_PRIVACY\_EXEMPTION\_LISTOID\_OPTION\_CIPHER

-   OID\_DOT11\_ENABLED\_AUTHENTICATION\_ALGORITHMOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_SUPPORTED\_UNICAST\_ALGORITHM\_PAIROID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_ENABLED\_UNICAST\_CIPHER\_ALGORITHMOID\_OPTION\_CIPHER

-   OID\_DOT11\_SUPPORTED\_MULTICAST\_ALGORITHM\_PAIROID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_ENABLED\_MULTICAST\_CIPHER\_ALGORITHMOID\_OPTION\_CIPHER

-   OID\_DOT11\_CIPHER\_DEFAULT\_KEY\_IDOID\_OPTION\_CIPHER

-   OID\_DOT11\_CIPHER\_DEFAULT\_KEYOID\_OPTION\_CIPHER

-   OID\_DOT11\_CIPHER\_KEY\_MAPPING\_KEYOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_ENUM\_ASSOCIATION\_INFOOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_DISCONNECT\_REQUESTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_UNICAST\_USE\_GROUP\_ENABLEDOID\_OPTION\_RSNAWPA

-   OID\_DOT11\_HARDWARE\_PHY\_STATEOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_DESIRED\_PHY\_LISTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_CURRENT\_PHY\_IDOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_MEDIA\_STREAMING\_ENABLEDOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_UNREACHABLE\_DETECTION\_THRESHOLDOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_ACTIVE\_PHY\_LISTOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_EXTSTA\_CAPABILITYOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_SUPPORTED\_COUNTRY\_OR\_REGION\_STRING

-   OID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_DESIRED\_COUNTRY\_OR\_REGION\_STRINGOID\_OPTION\_MULTIDOMAIN

-   OID\_DOT11\_PORT\_STATE\_NOTIFICATIONOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_IBSS\_PARAMSOID\_OPTION\_ANYDEVICE

-   OID\_DOT11\_QOS\_PARAMSOID\_OPTION\_80211E

-   OID\_DOT11\_SAFE\_MODE\_ENABLEDOID\_OPTION\_ANYDEVICE

OpModeCapability\_ext consists of the following:

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
<td><p>QueryOpModeCapability</p></td>
<td><p>Query for operation mode capability.</p></td>
</tr>
<tr class="even">
<td><p>VerifyOpModeCapability</p></td>
<td><ul>
<li><p>Verifies OID_DOT11_OPERATION_MODE_CAPABILITY, which must support ExtSta Mode.</p></li>
<li><p>Verifies OID_DOT11_OPERATION_MODE_CAPABILITY, which must support Netmon Mode.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>VerifyOpModeVersionInfo</p></td>
<td><p>Verifies OID_DOT11_OPERATION_MODE_CAPABILITY version information. Major version must be set to 2 and minior version must be set to 0.</p></td>
</tr>
<tr class="even">
<td><p>VerifyOpModeSetRequest</p></td>
<td><p>Verifies a set request, which is invalid and the request must return failure, for OID_DOT11_OPERATION_MODE_CAPABILITY.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyOpModeQueryRequestWithSmallBuffer</p></td>
<td><p>Verifies a query request for OID_DOT11_OPERATION_MODE_CAPABILITY that has insufficient buffer size. The request must return failure and bytesNeeded is set to right value.</p></td>
</tr>
</tbody>
</table>

 

Regression\_ext consists of the following:

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
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point as extensible station.</p></li>
<li><p>Query supported authentication/cipher types.</p></li>
<li><p>Ignore open none.</p></li>
<li><p>Start access point comm helper.</p></li>
<li><p>Start DUT comm helper.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyScanAndEnumScanResult</p></td>
<td><p>Perform a scan, enumerate the scan result, and then display the scan result.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDeviceReset</p></td>
<td><p>Verify DUT behavior on a DOT11 reset.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDeviceAssociateWithAP</p></td>
<td><p>Verify DUT can associate with an AP.</p></td>
</tr>
<tr class="odd">
<td><p>Verify send/receive</p></td>
<td><ul>
<li><p>Send packets from DUT to AP and verify the send/recv result.</p></li>
<li><p>Send packets from AP to DUT and verify the send/recv result.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyDeviceJoinAdhocSTA</p></td>
<td><p>Verify DUT can join IBSS.</p></td>
</tr>
<tr class="odd">
<td><p>Verify send/receive</p></td>
<td><ul>
<li><p>Send packets from DUT to support adhoc device and verify the send/recv result.</p></li>
<li><p>Send packets from support adhoc device to DUT and verify the send/recv result.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

SignalStrength\_ext consists of the following:

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
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point as extensible station.</p></li>
<li><p>Query supported authentication/cipher types.</p></li>
<li><p>Ignore open none.</p></li>
<li><p>Start access point comm helper.</p></li>
<li><p>Start DUT comm helper.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Change AP Transmit Power to 100%</p></td>
<td><ul>
<li><p>Get Link Quality and RSSI through Scan Operation.</p></li>
<li><p>Get Link Quality through Connect Operation.</p></li>
<li><p>Get RSSI through traffic from AP to DUT.</p></li>
<li><p>Disconnect DUT from AP.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Change AP Transmit Power to 2%</p></td>
<td><ul>
<li><p>Get Link Quality and RSSI through Scan Operation.</p></li>
<li><p>Get Link Quality through Connect Operation.</p></li>
<li><p>Get RSSI through traffic from AP to DUT.</p></li>
<li><p>Disconnect DUT from AP.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

VirtualStation\_ext – Win7 and below only. This test runs through the oids for virtual station.

**VWiFiOids\_ext**

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
<td><p>Testing OID_DOT11_CREATE_MAC</p></td>
<td><p>Create all possible MACs that the miniport claims to support.</p></td>
</tr>
<tr class="even">
<td><p>Testing OID_DOT11_DELETE_MAC</p></td>
<td><p>Delete all possible MACs that the miniport claims to support.</p></td>
</tr>
<tr class="odd">
<td><p>Valid VWiFi Combinations</p></td>
<td><table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Infra</th>
<th>AdHoc</th>
<th>SoftAP</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1</p></td>
<td><p>0</p></td>
<td><p>1</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>0</p></td>
<td><p>1</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>0</p></td>
<td><p>0</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
</tbody>
</table>

 

**StandardizedKeywords**

To verify correct behavior for keywords, each of the following keywords is checked and if it is supported, it is tested. This is a no-op for non-AOAC. Magic packet and wake on pattern are tested for AOAC only.

-   FlowControl // Partially tested (NDI params only)

-   HeaderDataSplit

-   InterruptModeration

-   IPChecksumOffloadIPv4

-   LsoV2IPv4

-   LsoV2IPv6

-   NumRssQueues // Partially tested (NDI params only)

-   RSCIPv4

-   RSCIPv6

-   RSS

-   SpeedDuplex

-   TCPChecksumOffloadIPv4

-   TCPChecksumOffloadIPv6

-   TCPConnectionOffloadIPv4

-   TCPConnectionOffloadIPv6

-   CPUDPChecksumOffloadIPv4

-   CPUDPChecksumOffloadIPv6

-   UDPChecksumOffloadIPv4

-   UDPChecksumOffloadIPv6

-   VMQ

-   WakeOnMagicPacket

-   WakeOnPattern

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20WLanBasic%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




