---
author: joshbax-msft
title: Webcam Glitch free record System Test - WNCameraRequirements (Manual)
description: Webcam Glitch free record System Test - WNCameraRequirements (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fe6e0e07-4da6-47be-bf2c-f6a6d79227f5
---

# Webcam Glitch free record System Test - WNCameraRequirements (Manual)


This set of tests validates all device cameras’ ability to record 720p 30frames per second to disk.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Webcam.Specification.WNCameraRequirements</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md) and [Webcam Testing Prerequisites](webcam-testing-prerequisites.md). These tests require the following machines:

-   Render Machine –machine that is used to render the test pattern (not part of the system that is being validated).

-   Capture Machine – machine that is being validated, that has at least one camera.

To run the tests:

1.  Copy the render app to the render machine:

    -   **\\\\**&lt;*HCKSERVER***&gt;\\Tests\\**&lt;*PLATFORM*&gt;\\**NTTEST\\multimediatest\\wmmftest\\Rbkwrgb.exe**

    -   **\\\\**&lt;*HCKSERVER***&gt;\\Tests\\**&lt;*PLATFORM***&gt;\\NTTEST\\multimediatest\\avcore\\audio\\bin\\audiostreaming.dll**

    -   **\\\\**&lt;*HCKSERVER***&gt;\\TaefBinaries \\**&lt;*PLATFORM*&gt;**\\wttlog.dll**

    -   **\\\\**&lt;*HCKSERVER*&gt;**\\Tests\\x86\\NTTEST\\multimediatest\\wmmftest\\testdata\\tools\\CalibrationImage.bmp**

2.  Start the test on the capture machine.

3.  Start the render app **Rbkwrgb.ex**e on the render machine. You should see a screen that is similar to *Figure 1 Render Machine Image*.

    ![render machine image](images/hck-winb-fig1-rendermachineimage1-webcam-glitchfree-system.png)

4.  On the capture machine:

    1.  Have the camera ready.

    2.  Start the capture app **Recana.exe**.

    3.  Look to the preview, and position all Helix points on the preview window by using the maximum of the preview window, as shown in Figure 2 Helix Points.

        ![helix points](images/hck-winb-fig2-helixpoints-webcam-glitchfree-system.png)

    4.  Make sure that the camera is stable.

    5.  Press **OK** to start the calibration.

5.  On the render machine:

    1.  Press any key to transition to Bar code mode. The barcode change should look like Figure 3 Barcode Change:

        ![barcode change](images/hck-winb-fig3-barcode-change-webcam-glitchfree-system.png)

    2.  Verify that an audible beep is played every second.

6.  On the capture machine:

    1.  Don’t touch the camera.

    2.  Wait for the focus to stabilize.

    3.  Press **OK** to start the capture and the analysis.

    4.  Wait approximately one minute.

7.  On the render machine:

    -   Press any key to stop the beep.

8.  Repeat steps 2 through 7 for each camera.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md) and [Troubleshooting Device.Streaming Testing](troubleshooting-devicestreaming-testing.md).

 

 






