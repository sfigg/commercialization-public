---
author: joshbax-msft
title: HID Radio Button - Verify HID Usages
description: HID Radio Button - Verify HID Usages
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7a26f0b2-ae49-4747-83ee-a7c9b20a6776
---

# HID Radio Button - Verify HID Usages


This manual test verifies that the HID driver for the hardware radio switch correctly implements the HID usage IDs described in the requirement.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.RadioManagement.HardwareButton System.Client.RadioManagement.RadioManagementAPIHID</p>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

In addition, input a value for following parameter before running the test:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>HardwareType</strong> – this parameter tells the tests which type of hardware button is installed on the system:</p></td>
<td><p><strong>TOGGLE_BUTTON</strong> – A system with a hardware radio button of TOGGLE type. This can be a Toggle Button with an LED, or a Toggle Button without an LED.</p>
<p><strong>TOGGLE_LED</strong> – A system that does not have a hardware radio button, but does have an LED which toggles on and off.</p>
<p><strong>AB_SLIDER</strong> – A system with a hardware A-B slider switch. This can be an A-B slider with an LED, or an A-B slider without an LED.</p>
<p><strong>No Value</strong> (empty string) – A system that does not have a hardware radio button, an LED, or an A-B slider switch. The tests ensure that a radio HID driver is not installed and, if so, will pass. If a radio HID driver is detected and the HardwareType parameter is an empty string, the test will fail.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

The tests provide logs which describe what action caused a failure, along with any related HRESULT values to assist in debugging issues.

## More Information


This test verifies the HID driver for the hardware radio switch correctly implements the HID usage IDs described in the requirement. The test prompts you to invoke the hardware radio switch and will pass/fail based on the HID usages it sees.

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
<td><p><strong>TE.exe HID_RadioLogoTest.dll /name:&lt;test_name&gt; /p:HardwareType=&lt;HardwareType&gt;</strong></p></td>
<td><p>Runs the selected test from the command line.</p>
<p>For example: <strong>TE.exe HID_RadioLogoTest.dll /p:HardwareType=AB_SLIDER /name: HidSwitchLogoTests::VerifyHidSwitchDriver</strong></p></td>
</tr>
<tr class="even">
<td><p><strong>TE.exe HID_RadioLogoTest.dll /list</strong></p></td>
<td><p>Shows the list of tests that are defined in the test dll:</p>
<p><strong>C:\Test&gt;TE.exe HID_RadioLogoTest.dll /list Test Authoring and Execution Framework v2.9 for x86</strong></p>
<p><strong>C:\Test\HID_RadioLogoTest.dll HidSwitchLogoTests HidSwitchLogoTests::VerifyHidSwitchDriver</strong></p></td>
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
<td><p>HID_RadioLogoTest.dll</p></td>
<td><p><em></em>&lt;testbinroot&gt;\nttest\nettest\netui\RadioManagement\Logo</p></td>
</tr>
<tr class="even">
<td><p>*TAEF files</p></td>
<td><p>&lt;testbinroot&gt;\..\..\TaefBinaries\&lt;architecture&gt;</p></td>
</tr>
</tbody>
</table>

 

 

 






