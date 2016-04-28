---
author: joshbax-msft
title: Round Trip Test (Manual) - Certification
description: Round Trip Test (Manual) - Certification
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 66f6ff9e-4bf0-4536-ae18-257d390442ff
---

# Round Trip Test (Manual) - Certification


This manual test verifies the full-duplex requirement for audio devices.

This test verifies that an audio device can stream end to end by using the following verification mechanisms:

-   The first mechanism operates on device jack pairs, rendering to one endpoint and simultaneously capturing from another. If the captured buffer contains the signal that was rendered, the test passes.

-   The second mechanism uses an in-air process to verify the functionality of endpoints.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Audio.Base.BasicDataFormats Device.Audio.Base.ExposedAudioEndpointsAreFunctional Device.Audio.Base.JackDetection Device.Audio.Base.ProperUSBDescriptors Device.Audio.Base.TimeSynchronizedSampleRates Device.Audio.Base.TipRing Device.Audio.UAACompliance.UAA Device.Audio.USB.USB</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Audio Device Testing Prerequisites](audio-device-testing-prerequisites.md).

In addition, this test requires the following hardware:

-   For loopback tests, loopback cables must be plugged into all jacks that you are testing. These cables link render jacks to capture jacks.

-   For in-air tests, a microphone or other active capture source must be attached to all capture endpoints. (An example of an active capture source is an S/PDIF cable that is attached to an audio/video receiver \[AVR\] that is actively playing back audio.) Speakers or headphones must be attached to all render endpoints.

Before you run this test, note the following:

-   In loopback mode, the test verifies end-to-end streaming by using a hardware loopback cable. This cable must be connected before you run the test. This is usually a regular 3.5-mm audio cable that is plugged into both audio jacks. The test sends a signal out a render endpoint. The hardware cable then conveys this signal to the capture endpoint. The test captures this signal and compares it to the signal that was rendered.

-   In in-air mode, the test verifies basic functionality for all endpoints on the system. In the case of render endpoints, a sound file that contains a number from 1 through 9 is played back, and the test prompts you to correctly identify the number. For capture endpoints, the test prompts you to make noise. If the amplitude of the captured sound information is above the required threshold, the test passes.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Audio Testing](troubleshooting-audio-testing.md).

If you do not adjust the setting of the volume to unity gain (playback to 100 percent and recording to 0 percent), you may receive a failure for the external microphone. You can change the setting of the volume to unity gain for the test for a no-loopback-detected failure of the external microphone only.

## More information


For loopback tests, the test checks each render device/capture device pair for the presence of a loopback signal. If the test cannot find a loopback signal, the test will fail. In this case, you can check the ShellRunner.wtl log file to determine which endpoints were tested.

If the test reports that it could not find a loopback, the reasons may include the following:

-   No loopback cable is connected for that type of device.

-   The render endpoint that is in use is not working.

-   The capture endpoint that is in use is not working.

-   The loopback volume is too low or too distorted to detect a signal.

For in-air render tests, the test plays back a sound file to each render endpoint that you are testing. In each case, the test prompts you to identify the word that is spoken in the file from a list of possible choices. If you select the incorrect word, or if the test encounters an error while it is rendering audio, the test will fail. In this case, you can check the ShellRunner.wtl log file for more information about the failure.

If you cannot hear the word that the test plays back, the reasons may include the following:

-   No speakers or headphones are attached to the endpoint.

-   The endpoint is muted, or the endpoint volume is set too low.

-   The endpoint is not working.

For in-air capture tests, the test records data from each capture endpoint on the system. If the recorded audio is not loud enough, the test prompts you to make noise. If the test still cannot identify any recorded sound, or the test encounters an error at any point while it is capturing audio, it will fail. In this case, you can check the ShellRunner.wtl log file for more information about the failure.

If the test cannot detect recorded sound, the reasons may include the following:

-   No microphone or active audio source is attached to the endpoint.

-   The endpoint is muted, or the endpoint volume is set too low.

-   The endpoint is not working.

An acoustic echo cancelling (AEC) algorithm can negate the signal used for in-air roundtrip testing. If your product implements an AEC and you’re seeing failures in this test, using an external audio device (such as the USB speakerphone needed for the WHCK Communications Audio Fidelity Test) as the control will workaround this issue. This entails using the external device to capture the render endpoints under test and to produce the signal for the capture endpoints under test.

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ShellRunner</strong></p></td>
<td><p>Without any options, the test enumerates devices.</p></td>
</tr>
<tr class="even">
<td><p><strong>-c &lt;filename&gt;.pro</strong></p></td>
<td><p>This option starts the application and runs the test cases that are specified in the <em>&lt;filename&gt;</em>.pro file.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-h [string]</strong></p></td>
<td><p>This option specifies the Plug and Play (PnP) ID of the device to be tested.</p></td>
</tr>
<tr class="even">
<td><p><strong>Logo_win7_roundtrip.pro</strong></p></td>
<td><p>This is the .profile file of test cases to be run for Windows 7.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Logo_Vista_Roundtrip.pro</strong></p></td>
<td><p>This is the .profile file of test cases to be run for Windows Vista.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ShellRunner.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\Common\WDK\</p></td>
</tr>
<tr class="even">
<td><p>Roundtrip.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\\multimediatest\AVCore\Audio\bin\</p></td>
</tr>
<tr class="odd">
<td><p>Audiostreaming.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\bin\</p></td>
</tr>
<tr class="even">
<td><p>Sndanlyz.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\common\</p></td>
</tr>
<tr class="odd">
<td><p>Logo_win7_roundtrip.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\Profiles\</p></td>
</tr>
<tr class="even">
<td><p>Logo_Vista_Roundtrip.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\Profiles\</p></td>
</tr>
<tr class="odd">
<td><p>S98wtt_u.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\common\</p></td>
</tr>
</tbody>
</table>

 

**Note**  
ShellRunner.exe is the shell test binary, Roundtrip.dll is the test binary, Audiostreaming.dll is the streaming helper binary, and Sndanlyz.dll is the analysis helper binary.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Round%20Trip%20Test%20%28Manual%29%20-%20Certification%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




