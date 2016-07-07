---
author: joshbax-msft
title: Radio Manager - Verify Radio State
description: Radio Manager - Verify Radio State
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e5f2da37-4a39-429c-ba32-b3b6bcda2584
---

# Radio Manager - Verify Radio State


This automated series of tests verify radio state notifications and ensure the radio state persists across various scenarios.

**Important**  
You **must** run this test for **each** Radio Manager that is installed on the system and package the results together. For example, if a machine has a GPS radio manager and an NFC radio manager, you must run this test twice; once to test the NFC radio manager and second time to test the GPS radio manager.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.RadioManagement.RadioMaintainsState System.Client.RadioManagement.RadioManagerCOMObject</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

In addition, input the following parameters before running this test:

-   **RadioMgrSignature** – The Radio Manager Signature GUID as registered with the Radio Management APIs. This parameter MUST be in GUID format – {12345679-1234-1234-1234-1234567890AB} (curly braces included).

-   **RadioInstanceID** – The Radio Instance ID of the radio under test. This could be in a GUID format or device path string, depending on the implementation of the Radio Manager.

**Important**  
If the **RadioMgrSignature** and **RadioInstanceID** parameters are not given values (empty strings), the tests run in a 'Not Implemented' mode. This means the system does not have a third-party Radio Manager installed. In this case, the test will pass if a third-party Radio Manager is not detected. The test will fail if a third-party Radio Manager is detected and the parameters are empty.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

The tests provide logs which describe what action caused a failure, along with any related HRESULT values to assist in debugging issues.

## More information


This test job runs several different tests which make sure the Radio Manager properly manages the radio state across various events, such as turning Airplane Mode on and off, sleep/resume, or reboot.

Tests that run in this job:

-   RadioMgrLogoTests::VerifyOnOffNotifications

-   RadioMgrLogoTests::VerifyAirplaneModePreviousStateOn

-   RadioMgrLogoTests::VerifyAirplaneModePreviousStateOff

-   RadioMgrLogoTests::VerifyRebootAndMaintainState

-   RadioMgrLogoTests::VerifySleepAndMaintainState

Certain tests require user action and will prompt you for actions, however **VerifyRebootAndMaintainState** doesn't. This test works in two parts. The first time VerifyRebootAndMaintainState runs, it changes the radio state, sets a flag to check for a reboot and that the state has changed. You MUST do the following when running this test outside of the Kit (command prompt):

1.  Run VerifyRebootAndMaintainState

2.  Reboot the machine

3.  Run VerifyRebootAndMaintainState again

After VerifyRebootAndMaintainState runs a second time, it resets the flags so the sequence can be run again.

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>TE.exe RadioLogoTest.dll /name:&lt;test_name&gt; /p:RadioMgrSignature=&lt;RadioMgrSignature&gt; /p:RadioInstanceID=&lt;RadioInstanceID&gt;</strong></p></td>
<td><p>Runs the test. For example:</p>
<p><strong>TE.exe RadioLogoTest.dll /name:RadioMgrLogoTests::VerifyOnOffNotifications /p:RadioMgrSignature={12345679-1234-1234-1234-1234567890AB} /p:RadioInstanceID={12345679-1234-1234-1234-1234567890AB}</strong></p></td>
</tr>
</tbody>
</table>

 

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
<td><p>RadioLogoTest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\nettest\netui\RadioManagement\Logo</p></td>
</tr>
<tr class="even">
<td><p>*TAEF files</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\..\..\TaefBinaries\&lt;architecture&gt;</p></td>
</tr>
</tbody>
</table>

 

 

 






