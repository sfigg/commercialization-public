---
title: DF - Fuzz sub-opens with streams test (Reliability)
Description: DF - Fuzz sub-opens with streams test (Reliability)
ms.assetid: 01a240da-3fad-4e10-8744-d8af7959f2ab
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# DF - Fuzz sub-opens with streams test (Reliability)

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/01a240da-3fad-4e10-8744-d8af7959f2ab">http://msdn.microsoft.com/en-us/library/windows/hardware/01a240da-3fad-4e10-8744-d8af7959f2ab</b>


</conditional_block>

During the Streams Test, the Fuzz test tries to open a variety of named data streams on the device. The tests use a series of arbitrary stream names with content and characters that might be valid for other uses on some devices. This test determines whether the driver can properly handle data stream requests, especially if the driver exports a device that does not support or anticipate data streams.

A *named data stream* is an attribute of a file object. You specify a named data stream by writing the name of the file, a colon, and the name of the data stream, for example, "File01.txt:AccessDate" where *AccessDate* is a named data stream, that is, an attribute of the File01.txt file.

The Fuzz test records the stream names used in the test.

-   **Test binary:** Devfund\_FuzzTest.dll
-   **Test method:** DoSubOpensWithStreamsTest

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
<li>Device.DevFund.Reliability.BasicReliabilityAndPerformance</li>
<li>Device.DevFund.Reliability.BasicSecurity</li>
<li>Device.DevFund.DriverFramework.KMDF.Reliability</li>
<li>Device.DevFund.DriverFramework.UMDF.Reliability</li>
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
<td>15</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Scenario</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>180</td>
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

| Parameter name                                                     | Parameter description                                                                                                                                                                                                                                   |
|--------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <mark type="bullet_intro">DQ</b>                                   | A WDTF SDEL query that is used to identify the target device(s) - http://go.microsoft.com/fwlink/?LinkId=232678                                                                                                                                         |
| <mark type="bullet_intro">Wpa2PskAesSsid</b>                       | Required ONLY if DUT or one of its child devices is a WiFi adapter. Please provide SSID of a WPA2 AES WiFi network that the test can use to test the WiFi adapter. The default is 'kitstestssid'.                                                       |
| <mark type="bullet_intro">Wpa2PskPassword</b>                      | Required ONLY if DUT or one of its child devices is a WiFi adapter. Please provide password of the WPA2 AES WiFi network specified using the Wpa2PskAesSsid parameter. The default is 'password'.                                                       |
| <mark type="bullet_intro">ChangeBufferProtectionFlags</b>          | True or False. Changes the memory protection flags of buffers passed to the tested device. The memory protection flags alternates between no access, read-only, and read-only with page guard.                                                          |
| <mark type="bullet_intro">Impersonate</b>                          | True or False. Runs the test as a non administrative user.                                                                                                                                                                                              |
| <mark type="bullet_intro">FillZeroPageWithNull</b>                 | True or False. Maps the zero page and fills it with NULL values. This test identifies drivers that do not verify a pointer reference before dereferencing a pointer.                                                                                    |
| <mark type="bullet_intro">DoPoolCheck</b>                          | True or False. Monitors the driver's use of the paged and nonpaged system memory pools by using pool tags and lookaside lists. This option also monitors changes in the number of exceptions handled which might indicate errors in exception handling. |
| <mark type="bullet_intro">DoSync</b>                               | True or False. Also opens device handles in SYNC mode (FILE\_SYNCHRONOUS\_IO\_ALERT). Random read and write operations are skipped.                                                                                                                     |
| <mark type="bullet_intro">TestCycles</b>                           | Number of test cycles.                                                                                                                                                                                                                                  |
| <mark type="bullet_intro">DriverVerifierAdditionalDrivers</b>      | Additional drivers that should have Driver Verifier enabled                                                                                                                                                                                             |
| <mark type="bullet_intro">DriverVerifierExcludedFlags</b>          | Placeholder for Driver Verifier flags that may be manually excluded for the test run                                                                                                                                                                    |
| <mark type="bullet_intro">WDKDeviceID</b>                          | Device id of device under test                                                                                                                                                                                                                          |
| <mark type="bullet_intro">QueryHardwareID</b>                      | Hardware id of device under test                                                                                                                                                                                                                        |
| <mark type="bullet_intro">WDTFREMOTESYSTEM</b>                     | Required ONLY if DUT or one of its child devices is a wired NIC that doesn't have an IPv6 gateway address. If determined to be required, please provide an IPv6 address that the test NIC can ping to test network I/O. Eg: fe80::78b6:810:9c12:46cd    |
| <mark type="bullet_intro">DriverVerifierCustomizeConfiguration</b> | Specifies that this test may want to automatically update Driver Verifier settings                                                                                                                                                                      |





