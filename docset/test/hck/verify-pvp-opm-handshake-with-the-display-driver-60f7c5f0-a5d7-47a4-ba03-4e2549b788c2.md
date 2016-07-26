---
author: joshbax-msft
title: Verify PVP-OPM Handshake with the display driver
description: Verify PVP-OPM Handshake with the display driver
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b60c0020-b785-45f9-a3dd-122b898dfe09
---

# Verify PVP-OPM Handshake with the display driver


This test verifies if the display drivers are PVP-OPM (Protected Video Path – Output Protection Management) compliant, which is required for playback of premium video content. For more information on how to get the display driver PVP-OPM compliant see, [Code Signing for Protected Media Components in Windows Vista](http://msdn.microsoft.com/windows/hardware/gg487338.aspx).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM12.Render.PremiumContentPlayback System.Fundamentals.Graphics.PremiumContentPlayback</p>
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
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

If the test says the display driver is not PVP-OPM compliant but it is, you must contact Microsoft to get a PVP-OPM certificate.

 

 






