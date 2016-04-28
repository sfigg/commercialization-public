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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20HID%20Radio%20Button%20-%20Verify%20HID%20Usages%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




