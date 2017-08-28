---
title: Troubleshooting Device Fundamentals Reliability Testing by using the Windows HLK
Description: Troubleshooting Device Fundamentals Reliability Testing by using the Windows HLK
ms.assetid: ba92e34f-2425-466c-82b0-ac0cf9ecc681
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshooting Device Fundamentals Reliability Testing by using the Windows HLK

This article describes how to troubleshoot problems that can occur during Windows Hardware Lab Kit (Windows HLK) Device Fundamentals Reliability testing. See <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

Troubleshooting Device Fundamentals Reliability tests consists of the following primary steps:

1.  <xref local="prereq">Check the device configuration </b>

2.  <xref local="types">Identify the type of test failures</b>

3.  <xref local="triage">Triage test failures</b>

The following sections provide additional detailed and important information that you can use to troubleshoot failed Device Fundamentals Reliability tests:

-   <xref rid="p_hlk_test.collect_and_view_windows_device_testing_framework__wdtf__traces">Collect and View Windows Device Testing Framework (WDTF) Traces</b>

-   <xref rid="p_hlk_test.review_common_device_fundamentals_reliability_test_failures">Review common Device Fundamentals Reliability test failures</b>

-   <xref rid="p_hlk_test.review_log_files_troubleshooting_device_fundamentals_reliability_tests">Review Log Files</b>

-   <xref rid="p_hlk_test.reproduce_the_test_failure_by_running_the_test_from_the_command_line">Reproduce the test failure by running the test from the command line</b>

-   <xref rid="p_hlk_test.troubleshoot_wlan_simpleio_plugin_failures_that_are__logged_by_device_fundamentals_tests">Troubleshoot WLAN SimpleIO plugin failures that are logged by Device Fundamentals tests</b>

-   <xref rid="p_hlk_test.use_kernel_debugging_to_debug_device_fundamentals_reliability_test_failures">Use kernel debugging to debug Device Fundamentals Reliability test failures</b>

-   <xref local="help">How to get help</b>

-   <xref local="addlts">Additional resources</b>

## Check the device configuration

Device Fundamentals Reliability tests require test devices to be properly configured to test I/O. Before you start to test, make sure that the test configuration adheres to the testing prerequisites that are described in <xref rid="p_hlk_test.devicefundamentals_reliability_testing_prerequisites">Device.Fundamentals Reliability Testing Prerequisites</b>. Failure to meet these prerequisites can result in test failures.

## Identify the type of test failures

See <xref local="cat" rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b> in <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b> to identify specific types of test failures.

## Test logs a failure

The most common way for Device Fundamentals Reliability tests to fail in Windows HLK is for the test to log a failure. If your failed test logged a failure, we recommend that you proceed to the <xref local="triage">Triage test failures</b> section of this topic.

## Test system bug checks

System bug checks are commonly seen during Device Fundamentals Reliability tests because of the nature of the tests (stress, reliability, concurrency, etc.).

When you investigate failures that are caused by system bug checks, we highly recommend that you re-run the tests by having the test system connected to a kernel debugger. Running the tests by using the debugger causes the system to break into the debugger when the system bug-checks.

-   See <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299467">Setting Up Kernel-Mode Debugging Manually</b> for information on how to setup a kernel debugger.

-   See <xref rid="p_hlk_test.use_kernel_debugging_to_debug_device_fundamentals_reliability_test_failures">Use kernel debugging to debug Device Fundamentals Reliability test failures</b> for more information.

-   See <xref local="sysx" rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b> in <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b> for general guidance on how to troubleshoot system bug checks during Windows HLK test runs.

## Test hangs

Test hangs frequently occur during Device Fundamentals Reliability tests. Test hangs are typically seen when I/O request packets (IRPs) (typically, I/O and PNP IRPs) become stuck in drivers and prevent the tests from progressing.

>[!NOTE]
Windows HLK will eventually cancel and fail a hung test so that the next scheduled test can proceed.


If a test hangs, we highly recommended that you re-run the tests by having the test system connected to a kernel debugger. This allows you to break into the debugger at the time when the test hangs, and to inspect stack traces of the test process (Device Fundamentals Reliability tests typically run as **te.processhost.exe** or **te.exe**).

-   See <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299467">Setting Up Kernel-Mode Debugging Manually</b> for information on how to setup a kernel debugger.

-   See <xref rid="p_hlk_test.use_kernel_debugging_to_debug_device_fundamentals_reliability_test_failures">Use kernel debugging to debug Device Fundamentals Reliability test failures</b> for more information.

-   See <xref local="toolong" rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b> in <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b> for general guidance on how to troubleshoot test hangs during Windows HLK test runs.

## Triage test failures

<mark type="bullet_intro">Review test documentation</b>

Device Fundamentals Reliability tests generally test common user scenarios such as Sleep with I/O, PNP with I/O, Reboot with I/O, etc. We recommend that you completely understand the scenario under test for the failing test(s) by reviewing the appropriate test documentation at <xref rid="p_hlk_test.device_devfund_tests">Device.DevFund Tests</b>.

<mark type="bullet_intro">Thoroughly review test logs</b>

You should thoroughly review log entries that precede the actual error message, to gain a clear understanding of the current test scenario and the previous test scenarios that ran. Sometimes previous test scenarios that ran (even if they passed) affect the next test scenario. For example, I/O failures can occur after a device is disabled and enabled. For more information about reviewing test logs, see <xref rid="p_hlk_test.review_log_files_troubleshooting_device_fundamentals_reliability_tests">Review Log Files</b>

<mark type="bullet_intro">Review additional log files that are copied back</b>

Device Fundamentals Reliability tests often copy back additional files that are useful for triaging test failures. For example, Reinstall and PNP tests copy back <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299472">SetupAPI</b> logs from the test system. You should open and review all files under **Additional Files** on the **Results** tab in Windows HLK Studio. Right-click the test result and then select **Additional Files**.

**Collect and view WDTF traces**

It can be useful to collect and view WDTF traces when you troubleshoot certain test failures. See <xref rid="p_hlk_test.collect_and_view_windows_device_testing_framework__wdtf__traces">Collect and View Windows Device Testing Framework (WDTF) Traces</b> for information about how to collect and view WDTF traces.

## How to get help

Device Fundamentals Reliability test owners at Microsoft regularly review and respond to questions posted about Device Fundamentals Test failures at the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299688">Windows Hardware Testing and Certification Forum</b>. We recommend that you use this forum to get needed support.

See <xref rid="p_hlk.windows_hlk_support">Windows HLK Support</b> for information about how to open a support case for investigating test failures.

## Additional resources

The following table lists additional resources that can help you resolve problems you can encounter during device fundamentals testing.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Resource</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><xref rid="p_hlk.troubleshooting_the_windows_hlk_environment">Troubleshooting the Windows HLK Environment</b></p></td>
<td><p>General triage and troubleshooting assistance for Windows HLK infrastructure failures.</p></td>
</tr>
<tr class="even">
<td><p><xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b></p></td>
<td><p>General triage and troubleshooting guidance to investigate test failures.</p></td>
</tr>
<tr class="odd">
<td><p><xref hlink="http://go.microsoft.com/fwlink/?LinkID=299602">Triaging WDTF-based tests</b></p></td>
<td><p>General guidance for troubleshooting failures that are logged by WDTF-based tests.</p></td>
</tr>
<tr class="even">
<td><p><xref hlink="http://go.microsoft.com/fwlink/?LinkID=299603">How to select and configure the Device Fundamentals tests</b></p></td>
<td><p>Device Fundamentals Reliability tests also ship in the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=256421">Windows Driver Kit (WDK)</b>. Driver developers might prefer to use WDK and Microsoft Visual Studio to run the failing tests to investigate test failures. This page describes how to run the tests by using the WDK.</p></td>
</tr>
<tr class="odd">
<td><p><strong>%ProgramFiles%\Windows Kits\8.1\Testing\Tests\Additional Tests\DeviceFundamentals.</strong>).</p></td>
<td><p>A subset of Device Fundamentals Reliability tests are written by using VBScript. You can open these script files by using Notepad. The scripts are located in the specified folder after you install the WDK.</p></td>
</tr>
<tr class="even">
<td><p><xref hlink="http://go.microsoft.com/fwlink/?LinkID=313672">Troubleshooting the Device Fundamentals tests using the WDK</b></p></td>
<td><p>Provides suggestions for fixing problems that you might encounter when you use the WDK to run the Device Fundamentals Tests.</p></td>
</tr>
</tbody>
</table>

<seealso> <xref rid="p_hlk_test.device_devfund_tests">Device.DevFund Tests</b> </seealso>



