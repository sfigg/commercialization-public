---
title: DF - Reboot restart with IO before and after (Reliability)
Description: DF - Reboot restart with IO before and after (Reliability)
ms.assetid: 1041ca7f-313c-42a5-9cc7-7c0769397299
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# DF - Reboot restart with IO before and after (Reliability)

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/1041ca7f-313c-42a5-9cc7-7c0769397299">http://msdn.microsoft.com/en-us/library/windows/hardware/1041ca7f-313c-42a5-9cc7-7c0769397299</b>


</conditional_block>

This test runs I/O on devices before and after a system reboot.

-   **Test binary:** Devfund\_RebootRestart\_With\_IO\_BeforeAndAfter.dll
-   **Test method:** Reboot\_Restart\_With\_IO\_Before\_And\_After

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
<li>Device.DevFund.Reliability.Discretional</li>
<li>Device.DevFund.Reliability.PnPIDs</li>
<li>Device.DevFund.ReliabilityDisk.IOCompletionCancellation</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_server"></tla> x64</li>
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
<td>4</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Scenario</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>30</td>
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

-   <xref rid="p_hlk_test.device_devfund_additional_documentation">Device.DevFund additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.devicefundamentals_reliability_testing_prerequisites">Device.Fundamentals Reliability Testing Prerequisites</b>.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information specific to the Device Fundamentals tests in the HLK and WDK, see <xref rid="p_hlk_test.device_devfund_additional_documentation">Device.DevFund additional documentation</b>.

## More information

## Parameters

| Parameter name                                                         | Parameter description                                                                                                                                                                                                                            |
|------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <mark type="bullet_intro">DQ</b>                                       | A WDTF SDEL query that is used to identify the target device(s) - http://go.microsoft.com/fwlink/?LinkId=232678                                                                                                                                  |
| <mark type="bullet_intro">Wpa2PskAesSsid</b>                           | Required ONLY if DUT or one of its child devices is a WiFi adapter. Please provide SSID of a WPA2 AES WiFi network that the test can use to test the WiFi adapter. The default is 'kitstestssid'.                                                |
| <mark type="bullet_intro">Wpa2PskPassword</b>                          | Required ONLY if DUT or one of its child devices is a WiFi adapter. Please provide password of the WPA2 AES WiFi network specified using the Wpa2PskAesSsid parameter. The default is 'password'.                                                |
| <mark type="bullet_intro">MultiDeviceHardwareIdSdelQueryHardwareID</b> | Multi Device SDEL                                                                                                                                                                                                                                |
| <mark type="bullet_intro">MultiDeviceInstanceIdSdelWDKDeviceID</b>     | Device id of DUT                                                                                                                                                                                                                                 |
| <mark type="bullet_intro">WDTFREMOTESYSTEM</b>                         | Required ONLY if DUT or any of its child devices is a wired NIC that does not have an IPv6 gateway address. If determined to be required, please provide an IPv6 address that the NIC can ping to test network I/O. Eg: fe80::78b6:810:9c12:46cd |
| <mark type="bullet_intro">TestCycles</b>                               | Number of test cycles                                                                                                                                                                                                                            |
| <mark type="bullet_intro">IOPeriod</b>                                 | IO period in minutes                                                                                                                                                                                                                             |
| <mark type="bullet_intro">DriverVerifierAdditionalDrivers</b>          | Additional drivers that should have Driver Verifier enabled                                                                                                                                                                                      |
| <mark type="bullet_intro">DriverVerifierExcludedFlags</b>              | Placeholder for Driver Verifier flags that may be manually excluded for the test run                                                                                                                                                             |
| <mark type="bullet_intro">DriverVerifierCustomizeConfiguration</b>     | Specifies that this test may want to automatically update Driver Verifier settings                                                                                                                                                               |





