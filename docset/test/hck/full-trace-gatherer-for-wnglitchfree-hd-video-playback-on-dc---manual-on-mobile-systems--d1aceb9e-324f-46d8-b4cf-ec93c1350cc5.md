---
author: joshbax-msft
title: Full Trace Gatherer for WNGlitchfree HD Video Playback on DC ( Manual on mobile systems )
description: Full Trace Gatherer for WNGlitchfree HD Video Playback on DC ( Manual on mobile systems )
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e1e296f9-fa8a-407b-91fb-bd224dda1546
---

# Full Trace Gatherer for WNGlitchfree HD Video Playback on DC ( Manual on mobile systems )


This test makes it easier to gather full traces for WNGlitchFree HD Video Playback on DC. It will persist and save all the generated ETW traces into the .hckx file, to be shared for investigation.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.VideoPlayback.WNGlitchfreeHDVideoPlayback</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

In addition, perform the following steps:

1.  Make sure that the Video and Music apps are installed on the system. You can get both apps from the Store.

2.  Make sure the .mp4 and .wmv extensions are registered to the Video app. To do this, right-click a sample file that has the appropriate extension, click **Properties**, click **Open with**, and select the Video app.

3.  Make sure the .m4a and .wma files are registered to the Music app. To do this, right-click a sample file that has the appropriate extension, click **Properties**, click **Open with**, and select the Music app.

This test requires manual intervention if the mobile system is plugged into an AC power source when the test starts.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

## More information


This test will run the same scenario as WNGlitchFree HD Video Playback on DC, but it will generate, persist and copy the full ETW traces into the final .hckx file to be shared for investigation.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Full%20Trace%20Gatherer%20for%20WNGlitchfree%20HD%20Video%20Playback%20on%20DC%20%28%20Manual%20on%20mobile%20systems%20%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




