---
author: joshbax-msft
title: Sensor ReadyState Verification Test (System)
description: Sensor ReadyState Verification Test (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 17be7d6b-0e16-4279-9d5e-0f4664099c79
---

# Sensor ReadyState Verification Test (System)


This is a system-specific implementation of an existing test. For more information on this test, see [Sensor ReadyState Verification Test](sensor-readystate-verification-test-aef2e82f-79d1-4795-afbb-5efa7ac1351a.md).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Sensor.Base.GNSSTestProperties System.Client.Sensor.Base.SupportDataTypesAndProperties System.Client.Sensor.HumanProximitySensor</p>
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
<td><p>Basic Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

If a GPS sensor exists in the system, make sure that you are running the tests in an environment in which you can receive a GPS signal.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

 

 






