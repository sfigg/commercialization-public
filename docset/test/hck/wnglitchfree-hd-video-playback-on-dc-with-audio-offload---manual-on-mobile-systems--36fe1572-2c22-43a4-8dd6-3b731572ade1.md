---
author: joshbax-msft
title: WNGlitchfree HD Video Playback on DC with Audio Offload ( Manual on mobile systems )
description: WNGlitchfree HD Video Playback on DC with Audio Offload ( Manual on mobile systems )
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0addd847-b49b-4bf7-82fa-eb7fa9d80b46
---

# WNGlitchfree HD Video Playback on DC with Audio Offload ( Manual on mobile systems )


The manual test verifies that a mobile system on DC power mode can play protected and unprotected High-Definition content with no perceivable glitch during playback on a system that supports audio offload.

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
<td><p>Certification</p></td>
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


The test first verifies that the system supports audio offload. If it doesn’t, the test passes automatically. Otherwise, the HCK GlitchFree test plays back two audio clips by using the inbox Music application. The content is played back while ETW logging is enabled in the background. After each scenario, the test post processes the ETW log and extracts metrics, which are used to determine whether the test passes or fails.

**Pass/Fail Criteria & Metric Details**

Glitch Metrics

-   Video Glitches - The Media Engine’s Video renderer (SVR) detects when a frame is rendered late and it fires a video glitch event. The goal for this metric is 0. Provider and event details:

    -   Microsoft-Windows-MediaEngine

    -   Channel - MediaFoundationMediaEngine – 16

    -   Level - win:Verbose – 5

    -   Task - VideoFrameGlitch - 23

-   Dropped Frames - The Media Engine fires frame drop events when the source drops a frame. When frames are dropped, the user experiences glitchy video. The goal is 0. Provider and event details:

    -   Microsoft-Windows-MediaEngine

    -   Channel - MediaFoundationMediaEngine – 16

    -   Level - win:Verbose – 5

    -   Task - DroppedFrame - 18

-   DWM Schedule Glitches – The desktop window manager (DWM) fires a glitch event when DWM samples are rendered late. The goal for this metric is 0. The test starts tracking this event 500ms after the first PresentedFrame event (Task ID 19, Event ID 115). The test stops tracking this event 66ms after the last instance of PresentedFrame event (Task ID 19, Event ID 115). Provider and event details:

    -   Microsoft-Windows-Dwm-Core

    -   Channel - Microsoft-Windows-Dwm-Core/Diagnostic – 16

    -   Level - win:Informational – 4

    -   Task - SCHEDULE\_GLITCH - 17

-   Audio Glitches – Audio glitches. Goal is 0.

    -   Audio Engine Provider: a6a00efd-21f2-4a99-807e-9b3bf1d90285:0x000000000000ffff:0x3

    -   ETW Classic event GUID: 2013DBB2-2F76-4B2C-950A-0C9DFAC62398

    -   Event details:

        -   Media: Audio Engine

        -   AE Events

        -   AE\_GLITCH

Total Device Creation time: The total device creation time must not exceed 50ms. Total device creation time is defined as DeviceCreation + CreateVideoDecoder, where the definition of those two metrics are:

-   DeviceCreation = The latency between the following two events

    -   Microsoft-Windows-Direct3D11 &gt; Channel - Microsoft-Windows-Direct3D11/PerfTiming – 18 &gt; Level - win:LogAlways – 0 &gt; Task - D3D11CoreCreateDevice - 8 &gt; Event Id - 20 (Version 0) Opcode - win:Start - 1

    -   Microsoft-Windows-Direct3D11 &gt; Channel - Microsoft-Windows-Direct3D11/PerfTiming – 18 &gt; Level - win:LogAlways – 0 &gt; Task - D3D11CoreCreateDevice - 8 &gt; Event Id - 21 (Version 0) Opcode - win:Stop - 2

-   CreateVideoDecoder = The latency between the first instance of the following two events:

    -   Microsoft-Windows-Direct3D11 &gt; Channel - Microsoft-Windows-Direct3D11/Logging – 17 &gt; Level - win:LogAlways – 0 &gt; Task - ID3D11VideoDevice\_CreateVideoDecoder - 911 &gt; Event Id - 1722 (Version 0) Opcode - win:Start - 1

    -   Microsoft-Windows-Direct3D11 &gt; Channel - Microsoft-Windows-Direct3D11/Logging – 17 &gt; Level - win:LogAlways – 0 &gt; Task - ID3D11VideoDevice\_CreateVideoDecoder - 911 &gt; Event Id - 1723 (Version 0) Opcode - win:Stop - 2

Driver Metrics- The ISR/DPC duration and ISR/DPC Storm tests aim at ensuring that device drivers are well behaved. The goal is to ensure that time critical multimedia threads can run on a regular basis, with limited interruptions from ISR/DPCs.

-   ISR/DPC duration: This check is designed to validate that individual ISR/DPC duration does not exceed a 3ms threshold.

-   ISR/DPC Storm: A cumulative duration of every ISR/DPC within a 10ms window must not exceed 4ms.

GPU VSync Cadence: This case ensures that the GPU DPC VSync cadence follows a well behaved pattern. Fluctuations in GPU DPC Vysnc frequency, during media playback can result in glitches during media playback. The test criteria establishes that the cadence fluctuation should not exceed +/- 50% of the average VSync cadence window. For instance, in a 60 Hz monitor, the expected VSync DPC cadence is 16.666 ms; consequently the test will fail if any VSync DPC is fired within less that 8.3 ms from the previous one or later than 24.9 ms from the previous one. When the duration between two vsyncs is greater than 24.9ms, this often results in a perceivable video glitch. When the distance between two vsyncs is less than 8.3ms, this is often caused by the driver double firing vsyncs, or vsyncs that are a few microseconds (us) apart.

**How to enable verbose ETW logging for analysis**

To collect more verbose ETW logs, pass in -f to Nike.exe, which will enable more verbose ETW logging. To do this, follow these steps:

1.  Launch HCK Manager.

2.  Open **Explorers**, and then open **Job Explorer**.

3.  Navigate to **$\\MediaPerformance**.

4.  Select the job you want to edit and click **Edit Job**.

5.  Click the **Tasks** tab.

6.  Click the **Regular** tab.

7.  Double-click the **Run Test** task.

8.  Add **-f** to the end of the arguments that are passed into Nike.exe, then re-run the test. For example: `Nike.exe -0 3 -1 3 -2 3 -3 3 -4 0 -5 0 -6 0 -7 0 -8 0 -c 142 -i 3000 -s 4000 -n 10000 -g 0 –f1`

9.  Save the job and re-run.

**How to preserve the ETW logs by modifying the job in the HCK to Stop and Freeze:**

1.  Launch HCK Manager.

2.  Open **Explorers**, and then open **Job Explorer**.

3.  Navigate to **$\\MediaPerformance**.

4.  Select the job that you want to edit and click **Edit Job**.

5.  Click the **Tasks** tab.

6.  Click the **Regular** tab.

7.  Double-click the **Run Test** task.

8.  From the **Failure Action** menu, select **FailStopFreeze**.

9.  Run the test, and then copy all ETW and WTL logs under a path that is similar to the following: **c:\\wlk\\JobsWorkingDir\\Tasks\\**.

 

 






