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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WDDM%20CCD%20Test%20for%20verifying%20only%20one%20internal%20target%20active%20on%20GPU%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




