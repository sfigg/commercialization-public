---
author: joshbax-msft
title: Content Protection- Playing H.264 + AAC media file protected environment. HCK test - Device Test.
description: Content Protection- Playing H.264 + AAC media file protected environment. HCK test - Device Test.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3a3ae44e-5b46-4d51-8038-a813897ce8ce
---

# Content Protection- Playing H.264 + AAC media file protected environment. HCK test - Device Test.


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
<td><p>Device.Graphics.WDDM12.Render.PremiumContentPlayback</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
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


This test requires an audio device (speaker) and a display device (monitor).

The display driver installed in the system must be PVP-OPM (Protected Video Path- Output Protected Management)-compliant. The Windows Hardware Certification Kit (Windows HCK) test [Verify PVP-OPM Handshake with the display driver](verify-pvp-opm-handshake-with-the-display-driver-60f7c5f0-a5d7-47a4-ba03-4e2549b788c2.md) should capture any PVP-OPM issues that exist with the display driver.

## Troubleshooting


 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Content%20Protection-%20Playing%20H.264%20+%20AAC%20media%20file%20protected%20environment.%20HCK%20test%20-%20Device%20Test.%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




