---
author: joshbax-msft
title: WDDM CCD Test for verifying only one internal target active on GPU
description: WDDM CCD Test for verifying only one internal target active on GPU
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 23454ffd-cab7-4ca5-a63c-b6cf09a5ceac
---

# WDDM CCD Test for verifying only one internal target active on GPU


This automated queries all display devices and ensures that only one internal device is actively driving an output. Having two displays marked as internal is not supported.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Graphics.NoMoreThanOneInternalMonitor</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

## More information


In order for this test to complete successfully, the following must be true:

-   Windows must be able to drive any target from any source, although there may be constraints on which target may be driven in combination.

-   When Windows asks for the EDID, the driver must provide the most current EDID. If there's been an interruption (sleep/resume, PnP stop/start) in the drivers ability to detect connection state, the driver must re-query the display device.

-   For each DVI-I connector on the system, the graphics adapter or chipset driver must expose one target of type D3DKMDT\_VOT\_DVI and one target of type D3DKMDT\_VOT\_HD15.

-   The graphics adapter or chipset driver must not use D3DKMDT\_VOT\_OTHER as target type for any target type already defined in D3DKMDT\_VIDEO\_OUTPUT\_TECHNOLOGY.

-   The graphics adapter or chipset driver must accurately report the result of the connection state request based on the display device being physically connected. If the driver doesn't have this information it must return STATUS\_GRAPHICS\_UNKNOWN\_CHILD\_STATUS when the operating system invokes the DXGKDDI\_QUERY\_CHILD\_STATUS DDI. On systems with multiple GPUs, the laptop lid target must not be reported as 'connected' on more than one graphics adapter at any given time.

 

 






