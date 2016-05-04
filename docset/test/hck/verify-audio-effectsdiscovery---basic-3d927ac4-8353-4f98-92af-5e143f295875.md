---
author: joshbax-msft
title: Verify Audio EffectsDiscovery - Basic
description: Verify Audio EffectsDiscovery - Basic
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 78edcd79-fa31-4b58-9295-2c7c92fde6e4
---

# Verify Audio EffectsDiscovery - Basic


-   Test1/Test2

    Use WinRT APIs to check for the existence of raw mode support on a capture or render audio device. To support raw mode, the driver must support the new DDI for audio signal processing modes.

-   Test3/Test4

    Check for effects that are turned on by default in capture or render device on raw or default streams. On raw streams, the only expected effects are endpoint mode effects such as speaker compensation or speaker protection. On render stream of the **Communication** category, no effects are expected other than endpoint effects. The presence of effects in the **Other** category can also fail the test.

-   Test 5/Test 6

    In this test, all effects are disabled and then raw and default streams are queried to ensure that no effects other than must-have effects are on in the pipeline. Must-have effects include endpoint effects that cannot or should not be turned off.

-   Manual tests:

    This test ensures that when each of the effects on the UI (Windows Store App UI, or Enhancements tab in Sound Control panel) is enabled, the effects list shows up correctly.

    The test will iterate through each render/capture device and show the initial list of default effects on raw and default streams. It then prompts you to enable the effects on the UI. You can enable the effects one at a time or all at once. You should pay attention to the list of effects displayed as they choose each option. This should be repeated for each device. After the tests are done, you should press **Enter** to proceed. You are asked if the list of effects displayed is accurate. You can select **Y** or **N** as answer.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Audio.Base.AudioProcessing</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Audio Device Testing Prerequisites](audio-device-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Audio Testing](troubleshooting-audio-testing.md).

 

 






