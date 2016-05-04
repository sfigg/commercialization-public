---
author: joshbax-msft
title: EHDD Test
description: EHDD Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f424d6d0-9ef4-4216-87f4-a5e62269823c
---

# EHDD Test


This test verifies that an encrypted hard drive complies with Microsoft and Industry specifications.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Ehdd.Compliance</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md).

The EHDD device must be attached to the appropriate controller. The job will prepare the disk with the correct partition and formatting for the testing. The test is destructive and therefore the disk cannot be the boot disk. It is important to minimize the amount of activity occurring on the drive outside of the logo test. Since this test has performance elements, outside activity may affect the results. The PSID for the drive is required to be entered at runtime as this value cannot be obtained programmatically.

## Troubleshooting


-   Check WTT Trace:

    -   View Task Log of Execute EHDD Test.

    -   Open the log file EHDDLogoTest.wtl.

    -   Check for messages that may solve the issue.

-   Check and Replay TCG Command Trace:

    -   All of the commands sent to the driver are logged in case of an error. When an error is encountered, the trace, since the previous revert, is saved with the .error extension in the folder where the test is run from.

    -   Open in a text editor the FullCommandoutput\#.txt.error with the highest number.

    -   Look for the reason for the failure.

    -   The SerializedCommands\#.error file can be played back to reproduce the error observed.

    -   Determine if this is a consistent repro by replaying the error file. EX: EhddLogoTest.exe /DeviceID "\\\\.\\physicaldrive1" /PSID "G98D72LDPW2DF9HDN30HG0G30H409HG4" /Playback SerializedCommands1.error

-   Could not start logging for EhstorTCGDrvTrace:

    -   If a previous run of the test gets interrupted prematurely, it is possible that the trace log will persist beyond the life of the binary.

    -   You will see the following error:

        Executing "cmd.exe /c logman.exe start EhstorTcgDrvTrace -ets -p {aa3aa23b-bb6d-425a-b58c-1d7e37f5d02a} -ft 1 -rt -o perflog.etl"Command execution exited with code: -2144337737 Could not start logging for EhstorTcgDrvTrace

    -   Open an elevated cmd window and right-click cmd.exe (C:\\Windows\\System32\\cmd.exe) and choose **Run as administrator**.

    -   Run logman –query –ets

    -   Run logman –stop –ets EhstorTcgDrvTrace

For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


The job takes in the device instance ID of the device under test and the PSID of the device. The job converts the device instance ID to a physical drive number in order to run the testing on that device. The job partitions and formats the drive to get it into the configuration needed for testing. The EhddLogoTest will run through a series of test cases each mapped to items in the requirements. The test cases are self-contained and results from one test case should not affect other test cases as the drive is reverted and activated between each test case. The following is a list of tests cases:

-   ATA Identify

-   Band

-   Com Packet Size

-   Encryption Mode

-   Fixed ACL Mode

-   Fuzz

-   Key Length

-   Metadata

-   Modifiable Common Name

-   Opal Version

-   Query Silo

-   Range Crossing

-   Secret Protect

-   SID Disable

-   TCG Stack Reset

-   TPer Reset

-   Unauthenticated Erase

Each of these test cases can be run on the command line using the test in standalone mode for further testing or debugging. The Fuzz test case has an optional argument for the number of fuzz iterations when running the test standalone.

During testing, the commands being sent to the drive are logged and if an error occurs this log is saved both in plaintext (FullCommandoutput\#.txt.error) and in a replay file (SerializedCommands\#.error). The log is reset every time a revert occurs as the commands, since the last revert should be sufficient to repro the failure. The test can be initiated with the playback argument to replay the series of commands leading up to the failure.

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
<td><p>PSID</p></td>
<td><p>The PSID of the device.</p></td>
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
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>EhddLogoTest</p></td>
<td><p>The binary for the test.</p></td>
</tr>
<tr class="even">
<td><p>/DeviceID</p></td>
<td><p>The EHDD device drive letter.</p>
<p>Example: /DeviceID \\\\.\\PhysicalDrive1</p></td>
</tr>
<tr class="odd">
<td><p>/PSID</p></td>
<td><p>The PSID of the device.</p>
<p>Example: /PSID VUTSRQPONMLKJIHGFEDCBA9876543210</p></td>
</tr>
<tr class="even">
<td><p>/Seed</p></td>
<td><p>Seed value for generating random test data.</p>
<p>Example: /Seed 1000</p></td>
</tr>
<tr class="odd">
<td><p>/RunTestCaseType</p></td>
<td><p>Runs only the specified category of test cases: device, profile, or scenario.</p>
<p>Example: /RunTestCaseTypes device</p></td>
</tr>
<tr class="even">
<td><p>/RunTestCase</p></td>
<td><p>Runs only the specified test case: ATAIdentify, Band, ComPacketSize, EncryptionMode, FixedACLMode, Fuzz, KeyLength, Metadata, ModifiableCommonName, OpalVersion, QuerySilo, RangeCrossing, SecretProtect, SIDDisable, TCGStackReset, TPerReset, or UnauthenticatedErase.</p>
<p>Example: /RunTestCase Band</p></td>
</tr>
<tr class="odd">
<td><p>/FuzzIterations</p></td>
<td><p>Number of iterations to run the fuzz scenario. Only valid if running the fuzz scenario.</p>
<p>Example: /FuzzIterations 1000</p></td>
</tr>
<tr class="even">
<td><p>/SkipManualTestCases</p></td>
<td><p>Skip test cases that needs manual interaction.</p>
<p>Example: /SkipManualTestCases</p></td>
</tr>
<tr class="odd">
<td><p>/Debugger</p></td>
<td><p>Prompts to attach debugger which gives time to allow the debugger to be attached before further executing the program.</p>
<p>Example: /Debugger</p></td>
</tr>
<tr class="even">
<td><p>/Verbosity</p></td>
<td><p>Logging verbosity. Logging Verbosity Levels: Minimal, Default, or Verbose.</p>
<p>Example: /Verbosity Verbose</p></td>
</tr>
<tr class="odd">
<td><p>/Playback</p></td>
<td><p>Playback a previously recorded command log file.</p>
<p>Example: /Playback RecordedCommand.err</p></td>
</tr>
<tr class="even">
<td><p>/Log</p></td>
<td><p>Log name</p>
<p>Default value: LogoTest.wtl</p>
<p>Example: /Log mytestlog.wtl</p></td>
</tr>
<tr class="odd">
<td><p>/cmdPerfTraceAnalysis</p></td>
<td><p>Run command performance analysis :Never, OnPassed, or Always.</p>
<p>Example: /cmdPerfTraceAnalysis Always</p></td>
</tr>
<tr class="even">
<td><p>/cmdPerfTraceLogFile</p></td>
<td><p>Performance output trace log commandText.</p>
<p>Default value: perf-tracelog.etl</p>
<p>Example: /cmdPerfTraceLogFile perf-tracelog.etl</p></td>
</tr>
</tbody>
</table>

 

### Command usage

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
<td><p><strong>EhddLogoTest.exe /DeviceID ”[DiskDeviceObjLink]” /PSID “[PSID]”</strong></p></td>
<td><p>Runs the test for the specified device instance ID and PSID.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/?**.

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>EhddFuzzer.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\ehdd</p></td>
</tr>
<tr class="even">
<td><p>EhddInterop.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\ehdd</p></td>
</tr>
<tr class="odd">
<td><p>EhddLogoTest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\ehdd</p></td>
</tr>
<tr class="even">
<td><p>EhddModularTestCase.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\ehdd</p></td>
</tr>
<tr class="odd">
<td><p>EhddTestCases.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\ehdd</p></td>
</tr>
<tr class="even">
<td><p>EhddTestHarness.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\ehdd</p></td>
</tr>
<tr class="odd">
<td><p>EhddTestLib.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\ehdd</p></td>
</tr>
<tr class="even">
<td><p>EhddTraceLib.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\ehdd</p></td>
</tr>
<tr class="odd">
<td><p>Tcglibutil.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\ehdd</p></td>
</tr>
<tr class="even">
<td><p>StorageDevices.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\ehdd</p></td>
</tr>
</tbody>
</table>

 

 

 






