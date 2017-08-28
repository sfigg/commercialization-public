---
title: Troubleshooting Device.Streaming Testing
Description: Troubleshooting Device.Streaming Testing
ms.assetid: e950456f-4593-435b-88ac-8f705dc48c78
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshooting Device.Streaming Testing

To troubleshoot issues that occur with Device.Streaming tests, follow these steps:

1.  Review the following Windows Hardware Lab Kit (Windows HLK) topics:

    -   <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>

    -   <xref rid="p_hlk_test.hmft_testing_prerequisites">HMFT Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.webcam_testing_prerequisites">Webcam Testing Prerequisites</b>

2.  Review the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=236110">Windows HLK release notes</b> for current test issues.

3.  For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

## Specific information about HMFT testing

The Hardware Media Foundation Transform (HMFT) decoding and encoding tests require the following:

-   **Supplemental Content for Windows HLK Tests for HMFT Multimedia Tests**: Download and install the Supplemental Content for Windows HLK Tests for HMFT Multimedia Tests from the <xref hlink="http://msdn.microsoft.com/en-us/windows/hardware/hh852358">Windows Dev Center</b>. For more information on installing and configuring the supplemental content, see <xref rid="p_hlk_test.hmft_testing_prerequisites">HMFT Testing Prerequisites</b>.

-   Standard content files included with the Windows HLK.

If the supplemental content is not available on the client computers, ensure that the ContentSource parameter is configuring correctly when the HMFT tests are run.

## Troubleshooting Webcam video captures

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description</th>
<th>Solution/Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>During setup, the test cannot find the Region of Interest (ROI).</p></td>
<td><p>The test looks for ROI markers (black and white circles) at known locations on the test. If the test cannot identify ROI markers, then the test cannot run correctly. Failure to detect ROI can be caused by a poorly aimed camera or unusable video capture from the camera (for example, the room is too dark).</p></td>
<td><p>Reposition the camera according to test procedure and make sure that the camera provides a usable image under test lighting conditions.</p></td>
</tr>
<tr class="even">
<td><p>During setup, the ROI does not fit in the camera view.</p></td>
<td><p>The test looks for ROI markers (black and white circles) at known locations on the test. If the test cannot identify ROI markers, then the test cannot run correctly. Smaller field of view cameras (for example, rear facing cameras) might need to be positioned farther than 0.5 m from the test target to capture the required ROI.</p></td>
<td><p>Reposition the camera and confirm that the camera provides a usable image under test lighting conditions. To avoid inaccurate measurement of the field of view requirement, enter the new distance into the test application if you adjust the position.</p></td>
</tr>
</tbody>
</table>

## Potential failure root causes and recommendations for improvement for webcam video captures

## Image acuity

<mark type="bullet_intro">Spatial resolution</b>

Spatial resolution is measured by using the modulus transfer function (spatial frequency response). Specifically, the metric MTF30 is used, which is the number of cycles/pixels by which a MTF=0.3 is achieved.

When the MTF30 is below 0.3, the image is too soft or fuzzy. Although this issue can be caused by poor quality optics, it is usually caused by poor image signal processing (image scaling, demosaicing, etc.). When the MTF30 is above 0.8, the image can be too aliased. This issue is often caused by poor quality image signal processing, especially scaling (for example, nearest neighbor interpolation instead of bi-cubic interpolation with anti-aliasing).

<mark type="bullet_intro">Focus range (depth of field)</b>

The focus range requirement is for the camera to focus on objects at a distance of 0.3m to infinity, whether or not autofocus is used. The MTF30 spatial resolution metric determines the focus range. If this metric fails on a manual focus camera, a design issue might be the cause; for example, the theoretical depth of field is &gt; 0.3m to infinity when focused on a target distance of 0.5m for notebooks/tablets, or to 0.7m for all-in-ones. If the target distance is correct, you might need to change the optics to achieve the correct depth of field.

If an autofocus lens is used and fails this metric, an issue in the autofocus algorithm is the most likely cause.

## Noise

<mark type="bullet_intro">Spatial signal to noise ratio</b>

Spatial noise measures the spatial variation in a single image by using a neutral gray (0.7 density) patch in the test chart. If this metric fails, it is most likely due to a poor quality sensor (insufficient sensitivity) or insufficient image de-noising. Image sensors should be selected that have a SNR10 (the lux level required to achieve an SNR=10 on a 0.7 density patch with no de-noising) of &lt; 50 lux. Some level of image de-noising is acceptable, but should not significantly degrade the texture acutance. A method of measuring texture acutance (independent of Windows HLK) is provided in Lync Logo Video Capture specification (Rev G). For more information about the Lync Logo specifications, see <xref hlink="http://go.microsoft.com/fwlink/?LinkID=290891">USB peripherals and Lync PC test specifications</b>.

<mark type="bullet_intro">Temporal signal to noise ratio</b>

Temporal noise measures the temporal variation in two images by using a neutral gray (0.7 density) patch in the test chart. If this metric fails, it is most likely due to a poor quality sensor (insufficient sensitivity), poor automatic gain (AGC) and automatic exposure control (AEC), poor power-line frequency control, or insufficient image de-noising. An unstable AEC/AGC control can cause visible flickering. The power-line frequency control is used to detect 50/60 Hz lighting. Adjust the exposure; if this does not work well, flickering (using rolling flickering) is apparent in the video.

## Color quality

<mark type="bullet_intro">Luminance for a neutral gray patch (0.7 density)</b>

The automatic gain and exposure control should produce an image so that the neutral gray patch in the test chart has a luminance of 128 +/- 40 gray levels. If this fails and the luminance is &lt; 88, it is due to either a poor AEC/AGC or an image sensor that has low sensitivity. In most cases, you can resolve the issue by tuning the AEC/AGC. If the luminance is &gt; 168, an issue also exists with the AEC/AGC.

<mark type="bullet_intro">Color accuracy</b>

The color accuracy is measured by using the max and mean ΔC<sub>00</sub> with respect to the known colors in the ColorChecker test chart. When this metric fails, it can be an issue with the white balancing or color uniformity, both of which can be improved by tuning the image signal processing.

<mark type="bullet_intro">Gamma</b>

Gamma measures the nonlinear operation that is used to code luminance or tristimulus values in video or still images. When gamma is &gt; 0.75, images can look too saturated; when gamma is &lt; 0.4, images can look under-saturated. Both issues can be fixed by adjusting the gamma processing in the image signal processing.

## Geometry

<mark type="bullet_intro">Vertical field of view</b>

The vertical field of view requirement for user-facing cameras is ≥ 35INVALID USE OF SYMBOLS and for rear cameras it is ≥ 25INVALID USE OF SYMBOLS. When this test fails, it can be due to image cropping (not using the entire image sensor), which can be fixed in image signal processing. However, the problem is more likely due to the lens design. In this case, a new or modified lens is required.

## Timing

<mark type="bullet_intro">Frame rate</b>

The video frame rate must be ≥ 14 FPS in 20 lux of light and ≥ 29 FPS in 80 lux of light. If the frame rate is less than these requirements, you can usually fix it by tuning the automatic exposure and gain control.

<mark type="bullet_intro">Latency</b>

Video latency measures the time for photons into the camera to photons out of the display. The video latency requirement is ≤ 80ms for MIPI cameras and ≤ 120ms for USB cameras; this failure is often due to low frame rates or image signal processing that uses one or more frame buffers. You can resolve both issues by improving the image signal processing of the camera.

<mark type="bullet_intro">Audio/video synchronization</b>

Audio/video synchronization measures the time difference between captured audio and captured video. A failure of this metric is often caused by failure of video latency or audio latency. For more information, see <xref rid="p_hlk_test.8b2c652c-71c3-4f8b-a1d2-dc40cb660168">Communications Audio Fidelity Test (System, Manual)</b>.

<mark type="bullet_intro">Time to capture and deliver first photo or video frame</b>

The first video and photo frames must be captured within 500ms of starting the video or taking a photo. The most common reason for failing this requirement is slow automatic exposure and gain control convergence, which you can improve by tuning the AEC/AGC.

<mark type="bullet_intro">Time to deliver a photo in subsequent requests (steady state)</b>

Subsequent photo images must be captured within 250ms (without flash) and 500ms (with flash). A common reason for failing this requirement is slow automatic exposure and gain control convergence, which you can improve by tuning the AEC/AGC.

<mark type="bullet_intro">Time to change resolutions (any media type)</b>

The time to change resolutions (e.g. 720p to 360p) must be ≤ 250ms. A common reason for failing this requirement is slow automatic exposure and gain control convergence, which you can improve by tuning the AEC/AGC.

<mark type="bullet_intro">Time to switch cameras</b>

The time to change cameras (for example, from the front camera to the rear camera) must be ≤ 750ms. A common reason for failing this requirement is slow automatic exposure and gain control convergence, which you can improve by tuning the AEC/AGC.

<mark type="bullet_intro">Glitch free/jitter</b>

The video is glitch free if it has a maximum inter-frame time ≤ 133ms at 20 lux, max inter-frame time ≤ 66ms at 80 lux, and jitter ≤ 7ms (measured at the video renderer). The most common cause for failing both max inter-frame times and jitter is not achieving the target frame rates. For example, a 24 FPS video camera will fail both maximum inter-frame time and jitter requirements. In these cases, you should adjust the frame rate to target 15 FPS at 20 lux and 30 FPS at 80 lux.

## Other

<mark type="bullet_intro">CPU usage</b>

When the system is capturing and rendering video, the CPU usage must be ≤ 5%. A common cause of failure is when the CPU is used for image signal processing. All critical ISP should be offloaded to not use the CPU or optimized to use ≤ 5%.

<mark type="bullet_intro">Anti-flicker solution</b>

Imaging in 50 or 60 Hz lighting with the wrong exposure (powerline frequency) mode can result in flicker that significantly degrades SNR. Manual power-line frequency control is required and tested for. The most common failure is not supporting manual power-line frequency control.

<seealso> <xref rid="p_hlk_test.device_streaming_tests">Device.Streaming Tests</b> <xref rid="p_hlk.troubleshooting_windows_hlk">Troubleshooting Windows HLK</b> </seealso>



