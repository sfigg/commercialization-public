---
author: joshbax-msft
title: Full Trace Gatherer for Glitchfree HD Video Playback on Battery (DC) Power Source ( Manual on mobile systems )
description: Full Trace Gatherer for Glitchfree HD Video Playback on Battery (DC) Power Source ( Manual on mobile systems )
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fcde049f-2324-4d84-82f2-1831fb394281
---

# Full Trace Gatherer for Glitchfree HD Video Playback on Battery (DC) Power Source ( Manual on mobile systems )


This test makes it easier to gather full traces for GlitchFree HD Video Playback on DC. It will persist and save all the generated ETW traces into the .hckx file, to be shared for investigation.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.VideoPlayback.GlitchfreeHDVideoPlayback</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86)</p></td>
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

 

 






