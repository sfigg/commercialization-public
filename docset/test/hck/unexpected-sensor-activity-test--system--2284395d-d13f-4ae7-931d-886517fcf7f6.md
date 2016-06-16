---
author: joshbax-msft
title: Unexpected Sensor Activity Test (System)
description: Unexpected Sensor Activity Test (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9420be0b-a993-431c-a0f1-ad056eb1a790
---

# Unexpected Sensor Activity Test (System)


This manual tests monitors for sensor activity when such activities are not expected (for example, no subscribed clients). The monitoring happens over a five minute window, after which the events and the source sensor devices from which the events emanated are listed.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Sensor.Integrated</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

Test instructions:

1.  The test prompts you to close any sensor application or service, which may be running in the background.

2.  The test begins the monitoring phase, during which you are encouraged to perform any action that can cause sensor activities, such as the following:

    -   Try to change screen orientation.

    -   Expose the system to clear skies or GPS repeaters, in an effort to get the GPS fix.

    -   Uncover or expose the ALS aperture to a bright light source.

3.  At the end of the monitoring period, you are prompted to replace the system under test to the test environment, possibly to resume the network connection.

4.  Any and all unexpected sensor activities are listed along with their respective source sensor device. If no sensor activity is detected, the test passes.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

 

 






