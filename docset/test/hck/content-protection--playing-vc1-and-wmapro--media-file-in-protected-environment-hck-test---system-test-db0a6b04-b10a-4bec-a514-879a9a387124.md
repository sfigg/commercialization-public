---
author: joshbax-msft
title: Content Protection- Playing VC1 and WMAPro media file in protected environment. HCK test - System Test.
description: Content Protection- Playing VC1 and WMAPro media file in protected environment. HCK test - System Test.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 26e94720-2630-4b11-bf10-200490511c8b
---

# Content Protection- Playing VC1 and WMAPro media file in protected environment. HCK test - System Test.


This test verifies premium content playback of audio/video in a protected environment process. The executable and the modules that are loaded into the protected process environment must be PE (Protected Environment)-signed. For more information about PE signing, see [Code Signing for Protected Media Components](http://go.microsoft.com/fwlink/p/?linkid=301493).

**Note**  
If the modules (user-mode display drivers) that are needed for playback are not PE-signed, the test will fail.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.Graphics.PremiumContentPlayback</p>
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
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


This is a system-specific implementation of the following test: [Content Protection- Playing VC1 + WMAPro media file protected environment. HCK test - Device Test.](content-protection--playing-vc1---wmapro--media-file-protected-environment-hck-test---device-test-b503f45b-16ce-46ce-9d6a-a9663ca4bcf1.md).

This test requires an audio device (speaker) and a display device (monitor).

The display driver installed in the system must be PVP-OPM (Protected Video Path- Output Protected Management)-compliant. The Windows Hardware Certification Kit (Windows HCK) test [Verify PVP-OPM Handshake with the display driver](verify-pvp-opm-handshake-with-the-display-driver-60f7c5f0-a5d7-47a4-ba03-4e2549b788c2.md) should capture any PVP-OPM issues that exist with the display driver.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

 

 






