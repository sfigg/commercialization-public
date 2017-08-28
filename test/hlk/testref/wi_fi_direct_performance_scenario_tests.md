---
title: WI-FI Direct Performance Scenario Tests
Description: WI-FI Direct Performance Scenario Tests
ms.assetid: e1590d74-49d4-4cb0-852f-acdb98b648d9
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# WI-FI Direct Performance Scenario Tests

Design and Usage Instructions – Microsoft, 12/2011

## Scenario Tests

The test uses the following selection variables to set up test combinations. Note that if any of these variables are not selected specifically, TE will loop through all the “un-tethered” possibilities in order.

## Scenario Test Flow

The WFDScenarioTestDriver class is laid out as a series of test methods which run in order:

-   LoadSettings

    -   Read in the command line parameters for this instance of the test

    -   Load files/validate parameters/etc

-   PreSetup

    -   Delete default GO profile and restart services (if necessary)

    -   Create default GO profile (if necessary)

    -   Set up ExtSTA port (disconnect/add profile)

-   PreConnectAP

    -   Connects to test WLAN profile if (if necessary)

    -   After L2 is established, does synchronous ping session for 30 seconds

-   RunScenario

    -   Runs IWFDScenarioTest functions in order

        -   Listener scenario

            -   Initialize

            -   RunListenerScenario

        -   Connector scenario

            -   Initialize

            -   RunConnectorScenario

    -   After L2 is established, WFD Client does ping session to GO’s gateway address for 30 seconds

    -   If scenario was Pre-AP-Connect, do concurrent ping session to AP as well

-   PostAPConnect

    -   Connects to test WLAN profile (if necessary)

    -   After L2 is established, WFD Client does ping session to GO’s gateway address for 30 seconds

    -   If scenario was Post-AP-Connect, WFD Client does concurrent session to GO as well

-   WaitForClientDisconnect

    -   Post-WFD GO waits for disconnect notification from WFD client (signal that client is done with its ping session)

-   CalculatePerformance

    -   Check the performance data stored earlier in the test

-   Cleanup

    -   IWFDScenarioTest.Cleanup

    -   Disconnect from AP

Code for this scenario flow is located in \\wireless\\wifidirect\\tests\\perfscenarios\\scenariotest.cs

## Required Test Parameters

## TargetDeviceAddress

This is the device address of the other device in the PC to PC scenario. This variable is used to check against stack state after a WFD pairing has been established.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:TargetDeviceAddress=11:22:33:44:55:66

## Optional Test Parameters

## WaitForInput

Specifying this flag will force the LoadSettings function to wait for console input before continuing with the test. This is useful for manually running tests in a batch since there’s no synchronization between tests.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:WaitForInput=true

## DisablePerfCheck

Specifying this flag will skip both data transfer and connect perf checks in the CheckPerformance function. It will also skip tracking ping sessions.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:DisablePerfCheck=true

## DisableDataPerf

Specifying this flag will skip data transfer checks in the CheckPerformance function. It will also skip tracking ping sessions. Connect performance checks will still happen.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:DisableDataPerf=true

## Permutation Selection Parameters

## Scenario

This defines which underlying Wi-Fi Direct scenario to use. This value should match across both PCs to ensure that the correct scenario is validated.

## Usage

Te WFD.Perf.Scenario.Tests.dll /select:”…\[and\] @Data:Scenario = ’Value’ \[and\]…” ...

## Possible Values

GONegotation - This value sets up the stack to do GO Negotiation over the Wi-Fi Direct protocol between 2 PCs during pairing. This will check if default GO profile is present, and if so, will delete the Default GO Profile registry key and reset wlansvc/other related services before continuing the test. Since the GO Negotiation is happening between 2 PCs with the same intent value, the outcome of the GO negotiation is unknown. Running GO negotiation tests twice back to back will ensure that both outcomes get exercised correctly.

Invitation - This value sets up the stack to do Invitation over the Wi-Fi Direct protocol between 2 PCs during pairing. This will check if default GO profile is present, and if not, will toggle autonomous GO on/off to create a default GO profile before continuing the test.

JoinExitingGO - This value sets up the stack to do a Join Existing GO scenario between 2 PCs during pairing. Note that due to the usage pattern for discoverability in WFDP2P/PeerFinder scenario layers (always sets discoverable), and the Pair API’s preference for doing GO Negotiation before joining existing GO, this more specific setup is only possible using the WFDPlatform scenario layer.

## LocalRole

This defines whether the local PC is the listener or the connector in the scenario test.

## Usage

Te WFD.Perf.Scenario.Tests.dll /select:”…\[and\] @Data:LocalRole = ’Value’ \[and\]…” ...

## Possible Values

Connector - This value will prepare the test to become a connector for a given PC-to-PC scenario. The actual steps for each scenario layer vary slightly, but basically boil down to the following:

1.  Loop Discovery for up to 45 seconds, until target listener machine is found.

2.  If found, pair to that device.

3.  Verify that connection was established successfully.

Listener - This value will prepare the test to become a listener for a given PC-to-PC scenario. The actual steps for each scenario layer vary slightly, but basically boil down to the following:

1.  Register for notifications about incoming connections.

2.  Wait for incoming connection for 2 minutes.

3.  If an incoming connection is received, accept that connection request.

4.  Verify that connection was established successfully.

## ScenarioLayer

This defines the operating system layer at which the test will be run. It selects which implementation of IWFDScenarioTest to use when the RunScenario function is called.

Code for definition of IWFDScenarioTest is located in wireless\\wifidirect\\tests\\PerfScenarios\\ScenarioTest.cs

## Usage

Te WFD.Perf.Scenario.Tests.dll /select:”…\[and\] @Data:ScenarioLayer = ’Value’ \[and\]…” ...

## Possible Values

## WFDPlatform

This value causes the test to use Wi-Fi Direct platform APIs to run a given scenario.

The implementation class for this scenario is WFDPlatformScenarioTest.

-   Code is located in wireless\\wifidirect\\tests\\PerfScenarios\\WFDPlatformScenarioTest.cs

The implementation class uses the interop helper WFDPlatformScenarioHelper class to call into the WFD Platform APIs from C\#.

-   Code is located in common\\sharedcomponents\\sharedcomponents\\WFDWrapper.cpp

## WFDP2P

This value causes the test to use WFDP2P APIs to run a given scenario.

The implementation class for this scenario is WFDP2PScenarioTest.

-   Code is located in wireless\\wifidirect\\tests\\PerfScenarios\\WFDP2PScenarioTest.cs

The implementation class uses the interop helper WFDP2PScenarioHelper class to call into the WFDP2P APIs from C\#.

-   Code is located in common\\sharedcomponents\\sharedcomponents\\WFDWrapper.cpp

## Unsupported WFD Scenarios

Due to 2-machine test limit, and usage pattern for WFDP2P/PeerFinder APIs, this scenario layer does not support JoinExistingGO scenario.

## Required Test Parameters

## APPID

This parameter specifies the PeerFinder Application Identifier to use. This is required to match across PCs or PeerFinder discovery will fail.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:APPID=SomeAppId

## PeerFinder

This value causes the test to use the PeerFinder API set to run a given scenario.

The implementation class for this scenario is WFDPeerFinderScenarioTest.

-   Code is located in wireless\\wifidirect\\tests\\PerfScenarios\\WFDPeerFinderScenarioTest.cs

The implementation class uses the built-in WinRT APIs to run the actual scenario.

However, there was one work-around required to get these APIs to work in a non-Mosh setting. The implementation class uses the interop helper WFDPeerFinderScenarioHelper to call into the required work-around API.

-   Code is located in common\\sharedcomponents\\sharedcomponents\\WFDWrapper.cpp

## Unsupported WFD Scenarios

Due to 2-machine test limit, and usage pattern for WFDP2P/PeerFinder APIs, this scenario layer does not support JoinExistingGO scenario.

## Required Test Parameters

## APPID

This parameter specifies the PeerFinder Application Identifier to use. This is required to match across PCs or PeerFinder discovery will fail.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:APPID=SomeAppId

## APConnectSetting

This defines the ordering/existence of an Infrastructure AP connection attempt within the scenario test, for the local machine.

It’s important to note that the variable can be different across different PCs (PC1 connects before WFD, PC2 connects after WFD). This allows for a 3x3 matrix of test validation for APConnectSetting across 2 machines.

## Usage

Te WFD.Perf.Scenario.Tests.dll /select:”…\[and\] @Data:APConnectSetting = ’Value’ \[and\]…” ...

## Possible Values

## NoAPConnection

No AP connection is attempted. This is the simplest combination of tests.

## APConnectBeforeWFD

AP connection is attempted before Wi-Fi Direct scenario happens. Once L2 is established for the AP connection, baseline data performance data will be sampled.

After WFD is established, a new concurrent data sample will be taken as well.

## Required Test Parameters

## ChannelNumber

This specifies the expected channel number of the AP.

This will be verified after AP connectivity has been established.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:ChannelNumber=3

## SSID and PSK

Using this pair of variables will create a manual connect, WPA2PSK, AES WLAN profile, which will temporarily be added to the WLAN profile store for the lifetime of the test.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:SSID=SomeSSID /p:PSK=SomePSK

## ProfilePath

This variable can be provided in place of SSID and PSK.

Specifying it will load the file pointed to here

It will extract the SSID, Key, and key type from this profile, and generate a temporary profile with this information.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:ProfilePath=path\\to\\profile.xml

## APConnectAfterWFD

AP connection is attempted after the Wi-Fi Direct scenario happens.

After the Post-WFD AP connection is established, a new concurrent data sample will be taken.

## Required Test Parameters

## ChannelNumber

This specifies the expected channel number of the AP.

This will be verified after AP connectivity has been established.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:ChannelNumber=3

## SSID and PSK

Using this pair of variables will create a manual connect, WPA2PSK, AES WLAN profile, which will temporarily be added to the WLAN profile store for the lifetime of the test.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:SSID=SomeSSID /p:PSK=SomePSK

## ProfilePath

This variable can be provided in place of SSID and PSK.

Specifying it will load the file pointed to here

It will extract the SSID, Key, and key type from this profile, and generate a temporary profile with this information.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:ProfilePath=path\\to\\profile.xml

## Discovery Tests

## Discovery Test Flow

## Finder Device

The DiscoverStress class is laid out as a series of test methods that must be run in order:

-   LoadSettings

    -   Read in command line parameters

-   SynchronizeDevices

    -   Do discovery until all entries in the expected device list have been found in one shot (up to 30 seconds)

    -   This is done so the test knows all devices are discoverable before collecting discovery success information

    -   By the end, if all devices have been found, but never in one shot, the test will treat the devices as synchronized (but you can expect terrible results if not all devices can be found at the same time during the synchronization step)

-   DiscoverStress

    -   Do back to back discoveries for 1 minute with the given discovery parameters, keeping track of results for each discovery

-   Calculate Performance

    -   Analyze stored discovery information per device in the expected device list

    -   Fail the test if there success rate is less than 95% for any single device in the expected device list

## Target Device

There’s also a helper test included for easily setting up listener devices for a certain amount of time.

-   Listener

    -   Set Discoverable(true)

    -   Sleep(listen time)

    -   Set Discoverable(false)

## Required Test Parameters

## Expected Devices

This parameter is a semi-colon-delimited list of device addresses that are expected to be discovered. All of these devices must be found.

## Usage

Te WFD.Perf.Scenario.Tests.dll … /p:ExpectedDevices=11:22:33:44:55:66

Te WFD.Perf.Scenario.Tests.dll … /p:ExpectedDevices=11:22:33:44:55:66;aa:bb:cc:dd:ee:ff;12:34:56:78:90:a0

## Permutation Selection Parameters

## DiscoverRole

## Usage

Te WFD.Perf.Scenario.Tests.dll /select:”…\[and\] @Data:DiscoverRole = ’Value’ \[and\]…” ...

## Possible Values

FinderDevice – This role will “do the finding”. This value will discover continuously and calculate performance data.

TargetDevice – This role will “do the listening”. It just sits there for a while then is turned off. This test doesn’t require any additional permutation selection parameters.

## DiscoverSpeed

## Usage

Te WFD.Perf.Scenario.Tests.dll /select:”…\[and\] @Data:DiscoverSpeed = ’Value’ \[and\]…” ...

## Possible Values

FastDiscovery - Discoveries are issued with a timeout of 1000ms.

BetaFastDiscovery - Discoveries are issued with a timeout of 2500ms.

StandardDiscovery - Discoveries are issued with a timeout of 10000ms.

## DiscoverType

## Usage

Te WFD.Perf.Scenario.Tests.dll /select:”…\[and\] @Data:DiscoverType = ’Value’ \[and\]…” ...

## Possible Values

Wildcard - Discoveries are issued with no device filters.

Targeted - Discoveries are issued with one device filter per device entry.

## DiscoverMode

## Usage

Te WFD.Perf.Scenario.Tests.dll /select:”…\[and\] @Data:DiscoverMode = ’Value’ \[and\]…” ...

## Possible Values

NoPreference - If no preference is specified, the following is specified based on the DiscoverSpeed setting:

-   FastDiscovery - ScanOnly

-   BetaFastDiscovery - ScanOnly

-   StandardDiscovery - Auto

ScanOnly - Discoveries are issued with dot11\_wfd\_discover\_type\_scan\_only.

FindOnly - Discoveries are issued with dot11\_wfd\_discover\_type\_find\_only.

Auto - Discoveries are issued with dot11\_wfd\_discover\_type\_auto.

ScanSocialChannels - Discoveries are issued with dot11\_wfd\_discover\_type\_scan\_social\_channels.

## Test Examples

## Scenario Test

The following example will run the following across 1 listener and 1 connector PC:

-   Scenario: GO Negotiation

-   ScenarioLayer: WFD Platform

-   PC1 AP Connect Setting: APConnectBeforeWFD

-   PC2 AP Connect Setting: APConnectAfterWFD

## Connector

Te WFD.Perf.Scenario.Tests.dll /select:"@Data:Scenario = ‘GONegotiation’ and @Data:LocalRole = 'Connector' and @Data:ScenarioLayer = 'WFDPlatform' and @Data:APConnectSetting = 'APConnectAfterWFD'" /p:TargetDeviceAddress=11:22:33:44:55:66 /p:SSID=APSSID1 /p:PSK=PSKForSSID1 /p:ChannelNumber=6

## Listener

Te WFD.Perf.Scenario.Tests.dll /select:"@Data:Scenario = ‘GONegotiation’ and @Data:LocalRole = 'Connector' and @Data:ScenarioLayer = 'WFDPlatform' and @Data:APConnectSetting = 'APConnectAfterWFD'" /p:TargetDeviceAddress=66:44:22:11:22:33 /p:SSID=APSSID2 /p:PSK=PSKForSSID2 /p:ChannelNumber=3

## Discovery Test

## FinderDevice

Te WFD.Perf.Scenario.Tests.dll /select:”@Data:DiscoverRole = ‘FinderDevice’ and @Data:DiscoverSpeed = ‘FastDiscovery’ and @Data:DiscoverType = ‘Wildcard’ and @Data:DiscoverMode = ‘NoPreference’” /p:ExpectedDevices=11:22:33:44:55:66;ab:cd:ef:gh:ab:cd

## TargetDevice

Te WFD.Perf.Scenario.Tests.dll /select:”@Data:DiscoverRole = ‘TargetDevice’” /p:ListenTimeSeconds=200

## Discovery Test Combination:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Discover Role</th>
<th>Discover Speed</th>
<th>Discover Type</th>
<th>Parameters</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>FinderDevice</p></td>
<td><p>FastDiscovery</p></td>
<td><p>Wildcard</p></td>
<td><p>List of Expected MACs</p></td>
</tr>
<tr class="even">
<td><p>FinderDevice</p></td>
<td><p>FastDiscovery</p></td>
<td><p>Targeted</p></td>
<td><p>List of Expected MACs</p></td>
</tr>
<tr class="odd">
<td><p>FinderDevice</p></td>
<td><p>BetaFastDiscovery</p></td>
<td><p>Wildcard</p></td>
<td><p>List of Expected MACs</p></td>
</tr>
<tr class="even">
<td><p>FinderDevice</p></td>
<td><p>BetaFastDiscovery</p></td>
<td><p>Targeted</p></td>
<td><p>List of Expected MACs</p></td>
</tr>
<tr class="odd">
<td><p>FinderDevice</p></td>
<td><p>StandardDiscovery</p></td>
<td><p>Wildcard</p></td>
<td><p>List of Expected MACs</p></td>
</tr>
<tr class="even">
<td><p>FinderDevice</p></td>
<td><p>StandardDiscovery</p></td>
<td><p>Targeted</p></td>
<td><p>List of Expected MACs</p></td>
</tr>
<tr class="odd">
<td><p>TargetDevice</p></td>
<td><p>N/A</p></td>
<td><p>N/A</p></td>
<td><p>Listen Time</p></td>
</tr>
</tbody>
</table>

## Perf Scenario Test Combination:

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Scenario</th>
<th>ScenarioLayer</th>
<th>PC1_APConnectivity</th>
<th>PC2_APConnectivity</th>
<th>Scenario Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>NoAPConnection</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>NoAPConnection</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>JoinExistingGO</p></td>
<td><p>WFDPlatform</p></td>
<td><p>NoAPConnection</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>JoinExistingGO</p></td>
<td><p>WFDPlatform</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>JoinExistingGO</p></td>
<td><p>WFDPlatform</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>JoinExistingGO</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>JoinExistingGO</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>JoinExistingGO</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>JoinExistingGO</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>JoinExistingGO</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>JoinExistingGO</p></td>
<td><p>WFDPlatform</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>WFDP2P</p></td>
<td><p>NoAPConnection</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>WFDP2P</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>WFDP2P</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>WFDP2P</p></td>
<td><p>NoAPConnection</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>WFDP2P</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>WFDP2P</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>WFDP2P</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>PeerFinder</p></td>
<td><p>NoAPConnection</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>PeerFinder</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>PeerFinder</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GONegotiation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GONegotiation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>PeerFinder</p></td>
<td><p>NoAPConnection</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>PeerFinder</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>PeerFinder</p></td>
<td><p>NoAPConnection</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>NoAPConnection</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Invitation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectBeforeWFD</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Invitation</p></td>
<td><p>PeerFinder</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p>APConnectAfterWFD</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>





