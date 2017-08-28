---
title: WLAN Association Tests - OPEN_WPA2_AES
Description: WLAN Association Tests - OPEN_WPA2_AES
ms.assetid: 51290eda-acbe-4b75-852e-e8bc64c5d5b0
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# WLAN Association Tests - OPEN_WPA2_AES

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/51290eda-acbe-4b75-852e-e8bc64c5d5b0">http://msdn.microsoft.com/en-us/library/windows/hardware/51290eda-acbe-4b75-852e-e8bc64c5d5b0</b>


</conditional_block>

This test suite validates WLAN associations.

## Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><mark type="bullet_intro">Specifications</b></td>
<td><ul>
<li>Device.Network.WLAN.SupportConnectionToWiFiAP.ConnectionToWiFiAP</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_mobile"></tla> ARM</li>
<li><tla rid="win_threshold_desktop"></tla> ARM64</li>
<li><tla rid="win_threshold_mobile"></tla> ARM64</li>
</ul></td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Supported Releases</b></td>
<td><ul>
<li><tla rid="win_10"></tla></li>
<li><tla rid="win_10_th2"></tla></li>
<li><tla rid="win_10_rs1"></tla></li>
<li>Windows 10, version 1703</li>
<li>Windows 10, version 1709</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Expected run time (in minutes)</b></td>
<td>20</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Scenario</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>20</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Requires reboot</b></td>
<td>false</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Requires special configuration</b></td>
<td>true</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Type</b></td>
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.device_network_additional_documentation">Device.Network additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.wireless_lan__80211__testing_prerequisites">Wireless LAN (802.11) Testing Prerequisites</b>.

This test suite performs the following actions:

-   Configure two routers, that are named Router 0 and Router 1, as follows:
    -   Router 0 – 2.4Ghz : OPEN/NONE \[Preferred PHY G/Channel 1\]
    -   Router 0 – 5Ghz : WPA2PSK/AES \[Preferred PHY A/Channel 36\]
    -   Router 1 – 2.4Ghz : WPA2PSK/AES \[Preferred PHY G/Channel 11\]
    -   Router 1 – 5Ghz : WPA2PSK/AES \[Preferred N/Channel 36\]
-   Execute the BasicAssociation() test steps as described in WLAN Association Tests – Custom Configuration
-   Execute the AssociationPowerManagementSleep() test steps as described in <xref rid="p_hlk_test.41e3400d-08da-424b-becd-fe3e8952bbca">WLAN Association Tests – Custom Configuration</b>
-   Execute the AssociationPowerManagementHibernate() test steps as described in <xref rid="p_hlk_test.41e3400d-08da-424b-becd-fe3e8952bbca">WLAN Association Tests – Custom Configuration</b>

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_wireless_lan__80211__tests">Troubleshooting Wireless LAN (802.11) Tests</b>.

## More information

## Parameters

| Parameter name                                        | Parameter description                                                                    |
|-------------------------------------------------------|------------------------------------------------------------------------------------------|
| <mark type="bullet_intro">TestDeviceSupports5ghz</b>  | This should be set to TRUE if the device supports 5ghz networks and FALSE if it does not |
| <mark type="bullet_intro">APControllerIPAddress</b>   | Internal Parameter                                                                       |
| <mark type="bullet_intro">LocalDir</b>                | Internal Parameter                                                                       |
| <mark type="bullet_intro">AP1IPAddress</b>            | IP Address of the first AP connected to the system                                       |
| <mark type="bullet_intro">AP1Password</b>             | Root password for the first AP connected to the system                                   |
| <mark type="bullet_intro">AP2IPAddress</b>            | IP Address of the second AP connected to the system                                      |
| <mark type="bullet_intro">AP2Password</b>             | Root password for the second AP connected to the system                                  |
| <mark type="bullet_intro">ServiceAPChannelAddress</b> | Internal Parameter                                                                       |
| <mark type="bullet_intro">TestDll</b>                 | Internal Parameter                                                                       |
| <mark type="bullet_intro">Priority</b>                | Internal Parameter                                                                       |
| <mark type="bullet_intro">TestName</b>                | Internal Parameter                                                                       |
| <mark type="bullet_intro">EnableTracing</b>           | Yes or No to enable tracing                                                              |





