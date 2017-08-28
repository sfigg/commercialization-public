---
title: Audio Codec - Lullaby Test - Certification - Desktop
Description: Audio Codec - Lullaby Test - Certification - Desktop
ms.assetid: 1dd9c51c-4c6c-4fcc-a9e8-fdb4b03a54b5
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Audio Codec - Lullaby Test - Certification - Desktop

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/1dd9c51c-4c6c-4fcc-a9e8-fdb4b03a54b5">http://msdn.microsoft.com/en-us/library/windows/hardware/1dd9c51c-4c6c-4fcc-a9e8-fdb4b03a54b5</b>


</conditional_block>

This automated test verifies audio during power-state transitions. The test plays audio before, during, and after transitions into sleep and hibernate power states to verify the integrity of the audio pipeline.

Specifically, the test uses the Microsoft® DirectSound® and Wave APIs to play audio, calls Advanced Configuration and Power Interface (ACPI) functions to put the computer into a low-power state, and awakens the computer by using a wait able timer event. The test then verifies that audio still plays correctly.

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
<li>Device.Audio.Base.PowerManagement</li>
<li>Device.Audio.Base.JackDetection</li>
<li>Device.Audio.Base.Endpoints</li>
<li>Device.Audio.HardwareAudioProcessing.AudioHardwareOffloading</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_server"></tla> x64</li>
<li><tla rid="win_threshold_desktop"></tla> ARM64</li>
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
<td>Development</td>
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

-   <xref rid="p_hlk_test.device_audio_additional_documentation">Device.Audio additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.audio_device_testing_prerequisites">Audio Device Testing Prerequisites</b>.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_audio_testing">Troubleshooting Audio Testing</b>.

The test returns FAIL if it does not detect an audio device, if it cannot set the power state of the computer, or if the audio pipeline is in an inconsistent state. For specific information about failures, review the test results in the generated log file.

Depending on BIOS, the test might require user intervention. If BIOS does not support wake from sleep and wake from hibernate, you must bring the computer out of sleep states for the test to continue.

## More information

## Command syntax

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
<td><p><strong>Lullaby</strong></p></td>
<td><p>Without any options, the test opens the GUI.</p></td>
</tr>
<tr class="even">
<td><p><strong>-c [string]</strong></p></td>
<td><p>This option starts the application and runs the test cases that are specified in the .pro file that <strong>[string]</strong> specifies.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-h [string]</strong></p></td>
<td><p>This option specifies the Plug and Play (PnP) ID of the device for the test cases to use. The default value is all devices.</p></td>
</tr>
</tbody>
</table>

>[!NOTE]
For command-line help for this test binary, type **/h**


## File list

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
<td><p>DevIDParse.vbs</p></td>
<td><p><placeholder>&lt;testbinroot&gt;</placeholder>\nttest\multimediatest \avcore\audio\scripts\</p></td>
</tr>
<tr class="even">
<td><p>Lullaby.exe</p></td>
<td><p><placeholder>&lt;testbinroot&gt;</placeholder>\nttest\multimediatest\avcore\audio\wdk</p></td>
</tr>
<tr class="odd">
<td><p>Logo_win7_lullaby.pro</p></td>
<td><p><placeholder>&lt;testbinroot&gt;</placeholder>\nttest\multimediatest\AVCore\Audio\Profiles\</p></td>
</tr>
<tr class="even">
<td><p>Logo_vista_lullaby.pro</p></td>
<td><p><placeholder>&lt;testbinroot&gt;</placeholder>\nttest\multimediatest\AVCore\Audio\Profiles\</p></td>
</tr>
<tr class="odd">
<td><p>S98wtt.dll</p></td>
<td><p><placeholder>&lt;testbinroot&gt;</placeholder>\nttest\multimediatest\common\</p></td>
</tr>
</tbody>
</table>

## Parameters

| Parameter name                                   | Parameter description                   |
|--------------------------------------------------|-----------------------------------------|
| <mark type="bullet_intro">LLU\_NetAccessOnly</b> | Name of machine's LLU for copying files |
| <mark type="bullet_intro">TestExe</b>            | Name of test executable                 |
| <mark type="bullet_intro">TestExePath</b>        | Partial path of the test executable     |
| <mark type="bullet_intro">WDKDeviceID</b>        | Device ID string                        |
| <mark type="bullet_intro">TestPro</b>            | Name of test profile                    |





