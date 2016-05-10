---
title: Cortana Device Recommendation
description: Provides guidance and recommendations for the design and development of audio input devices intended for use with Microsoft’s Speech Platform.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 61778C2C-F074-47CD-AC48-9AD57AABC282
---

# Cortana Device Recommendation


## Section 0: Document


**Disclaimer:** This document is provided “as-is.” Information and views expressed in this document, including URL and other Internet website references, may change without notice. Some information relates to pre-released products which may be substantially modified before commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. You bear the risk of using it.

Some examples depicted herein are provided for illustration only and are fictitious. No real association or connection is intended or should be inferred.

All recommendations and criteria within this document are approximate guidelines only, and not guarantees of speech recognition performance for all devices under real-world conditions. Speech recognition is a complex machine learning process, imperfect by nature. It is not guaranteed that Cortana and Speech Recognition will work well for your device, even if all Premium recommendations are met.

### Definitions

For a comprehensive list of relevant terms, reference [(ITU-p.10)](https://www.itu.int/rec/T-REC-P.10-200607-I/en).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Title</th>
<th>Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ADC</p></td>
<td><p>Analog to Digital Converter (or A/D)</p></td>
</tr>
<tr class="even">
<td><p>AEC</p></td>
<td><p>Acoustic Echo Canceller</p></td>
</tr>
<tr class="odd">
<td><p>AGC</p></td>
<td><p>Automatic Gain Control</p></td>
</tr>
<tr class="even">
<td><p>ASR</p></td>
<td><p>Automatic Speech Recognition</p></td>
</tr>
<tr class="odd">
<td><p>BPF</p></td>
<td><p>Band Pass Filtering</p></td>
</tr>
<tr class="even">
<td><p>Capture (or Send)</p></td>
<td><p>The input (near-end) speech signal</p></td>
</tr>
<tr class="odd">
<td><p>dB SPL</p></td>
<td><p>Decibel sound pressure level = <img src="images/speechplatformequation14.png" alt="Speech platform equation" /> where p<sub>ref</sub>=20 micropascal. 0 dBPa corresponds to 94 dBSPL</p></td>
</tr>
<tr class="even">
<td><p>dBFS (or dBov)</p></td>
<td><p>Decibel full scale = <img src="images/speechplatformequation15.png" alt="Speech platform equation" />where S<sub>ref</sub>= the RMS of a full scale digital sine wave</p>
<p>The signal level of a digital signal relative to its overload or maximum level is given by dBov. This is also commonly referred to as dBFS (Full Scale).</p>
<p>For example, a rectangular function with only the positive or negative maximum number has a level of 0 dBov. For a maximum scale digital sine signal the peak level is 0 dBov and RMS is -3.01 dBov. (ITU-T G.100.1).</p></td>
</tr>
<tr class="odd">
<td><p>DI</p></td>
<td><p>Directivity Index (For more information, see Appendix A within this document.)</p></td>
</tr>
<tr class="even">
<td><p>DRC</p></td>
<td><p>Dynamic Range Compression</p></td>
</tr>
<tr class="odd">
<td><p>DSP</p></td>
<td><p>Digital Signal Processing</p></td>
</tr>
<tr class="even">
<td><p>DUT (or DRP)</p></td>
<td><p>Device Under Test (or Device Reference Point)</p></td>
</tr>
<tr class="odd">
<td><p>FIR</p></td>
<td><p>Finite Impulse Response</p></td>
</tr>
<tr class="even">
<td><p>HATS</p></td>
<td><p>Head and Torso Simulator - described in ITU-T Recommendation P.58 [15]</p></td>
</tr>
<tr class="odd">
<td><p>IHV</p></td>
<td><p>Independent Hardware Vendor</p></td>
</tr>
<tr class="even">
<td><p>IIR</p></td>
<td><p>Infinite Impulse Response</p></td>
</tr>
<tr class="odd">
<td><p>MRP</p></td>
<td><p>Mouth Reference Point is a point 25mm in front of the lip plane of the artificial mouth. This is a point where the speech level is calibrated before measurements for normal, loud and quiet speech</p></td>
</tr>
<tr class="even">
<td><p>NG</p></td>
<td><p>Ambient Noise Gain (For more information, see Appendix A within this document.)</p></td>
</tr>
<tr class="odd">
<td><p>NGA</p></td>
<td><p>A-Weighted Ambient Noise Gain (For more information, see Appendix A within this document.)</p></td>
</tr>
<tr class="even">
<td><p>Normal-band</p></td>
<td><p>Speech signal with a nominal pass-band of 300-3400 Hz (ITU-p.10 N-3)</p></td>
</tr>
<tr class="odd">
<td><p>Render (or Receive)</p></td>
<td><p>The output (far-end) speech and/or other rendered audio signal</p></td>
</tr>
<tr class="even">
<td><p>TCLw</p></td>
<td><p>Terminal Coupling Loss (weighted)</p></td>
</tr>
<tr class="odd">
<td><p>THD+N</p></td>
<td><p>Total Harmonic Distortion including Noise = ((signal-f₀))⁄f₀¹</p></td>
</tr>
<tr class="even">
<td><p>Wide-band</p></td>
<td><p>Speech signal with a nominal pass-band of 100-7000 Hz (ITU-p.10 W-3)</p></td>
</tr>
<tr class="odd">
<td><p>ƒ₀</p></td>
<td><p>Fundamental frequency</p></td>
</tr>
</tbody>
</table>

 

¹![speechplatformequation1](images/speechplatformequation1.png)where the “—“ is accomplished via notch filtering

## Section 1: Summary and Outline


The Speech Platform is used to power all of the speech experiences in Windows 10, such as Cortana and Dictation. This document provides guidance and recommendations for the design and development of audio input devices intended for use with Microsoft’s Speech Platform.

Guidance provided in this document is limited to only those design parameters that have direct influence on 1) speech recognition accuracy and 2) behavior of the underlying speech processing algorithms. This document is not part of a Windows Certification Program, nor are the recommendations within required for device certification. The recommendations are intended only as helpful guidelines and best practices for device design.

### Speech Recognition in Windows 10

Device manufacturers are encouraged to integrate and tune speech enhancement processing into their device in order to optimize performance relative to the [Speech Recognition test criteria](speechplatformdevicestestsetup-003.md).

For devices without integrated speech enhancement processing, Microsoft provides default processing in Windows 10. The speech enhancement processing from Microsoft does not need device specific tuning by the IHV.

The Microsoft speech enhancement pipeline includes the following functionality – tuned for high quality speech recognition:

-   Wideband Processing (16 kHz)

-   Echo Cancellation

-   Microphone Array support and Beamforming

-   Stationary Noise Suppression

The Microsoft speech enhancement pipeline will be used if the audio driver does not expose a microphone geometry and audio signal processing for speech. To utilize 3rd party enhancements, the microphone geometry must be provided, support “speech” signal processing mode on the audio input, and ensure that the effects provided by the audio driver or its software APOs include at least noise suppression and echo cancellation.

### Device Recommendations

Recommendations within this document are discussed in three segments:

1.  Device.SpeechRecognition (For more information, see Section 2 within this document.)

2.  Device.Audio (For more information, see Section 3 within this document.)

3.  Device.Audio.Acoustics (For more information, see Section 4 within this document.)

### Device.SpeechRecognition

This section defines the speech recognition performance requirements to ensure a high quality speech experience. All devices should be tested against these performance requirements.

### Device.Audio

This section provides guidelines in order to function optimally with the host OS in terms of software interfaces, communication protocols, and data formats. All devices should be tested against these guidelines.

### Device.Audio.Acoustics

This section provides recommendations and best practices for acoustic and related properties of device design. This section is most relevant for devices that will use Microsoft’s speech enhancement processing.

Good component selection, acoustic design and mechanical integration is important to capture the best possible audio to give a good experience rather than relying on the speech enhancement pipeline. Devices that do not perform speech enhancement processing on device (i.e. use the default speech enhancement pipeline provided in the OS) are recommended to follow Premium recommendations under Device.Audio.Acoustics in order to maximize chances of meeting the Device.SpeechRecognition experience requirements, and working well with the OS speech enhancement pipeline.

### Performance Levels

Functional guidelines within this document will at times be split into two levels – Standard and Premium. This distinction is made to acknowledge that there are a range of devices targeting speech functionality, spanning price targets and operational envelopes. Microsoft recommends that all devices target Premium guidelines when specified.

A device must meet Premium recommendations in all categories in order to be considered a Premium device. The Premium and Standard categories are not part of the Windows Certification Program – rather informed best practices and guidelines.

### <a href="" id="premium-"></a>Premium

Device meets recommended functional guidelines for working great with Speech Recognition. The device will work well in more challenging conditions, such as increased noise levels or from a greater distance. As the user can interact with the device from greater than 1m, this will enable natural interactions using speech. The user will also be able to use the device in challenging noise environments, either from ambient noise or due to device playback, and this will enable natural interaction like ‘Hey Cortana, next track.’

### <a href="" id="standard-"></a>Standard

Device meets basic functional guidelines for working with Speech Recognition. The device will work well in ambient conditions.

![premium and standard](images/speechplatform1.png)

### Difference between Speech Recognition and Telephony

This document only contains recommendations for use of the speech platform, however many devices that target Speech Recognition functionality will also target Telephony usage. The similarities are evident – both scenarios use devices with microphones to pick up human speech, audio processing pipelines to remove noise from the environment and enhance human speech, and consuming applications that rely on a clear speech signal in order to understand the speech.

The differences lie in who or what consumes the speech signal. Telephony has a human consumer, for whom perceptual voice quality and speech intelligibility are paramount. Speech recognition has an algorithmic consumer, where machine learning trained on specific features of the speech signal determine what is recognized, and where those features do not necessarily align to perceptual norms.

Perceptual voice quality is often correlated with speech recognition accuracy, but this is not always the case. This document focuses on methods of evaluating and maximizing speech recognition accuracy. It is recommended to support the “speech” signal processing mode and to tune that mode specifically for speech recognition.

Passing [Skype/Lync audio certification](http://technet.microsoft.com/office/dn788953) is a strong indicator of good device audio performance.

## Section 2: Device.SpeechRecognition Recommendations


Recommendations in this section are made regarding the target speech recognition accuracy for devices in various environments. All recommendations represent the minimum bar for acceptable user experience in each scenario. Test conditions and steps are specified in the [Test Setup](../fixme/speechplatformdevicestestsetup-003.md).

It is important that a device meets the recommendations in this section in order to:

-   Ensure the device will work well with speech recognition in various environments

-   Ensure the device will work within the operational boundaries of the Microsoft speech enhancement pipeline (for those devices not using their own speech enhancement pipeline)

The targets are speech accuracy; the speech level is 89 dB SPL @ MRP.

All three tests must reach **Standard** to be classified as **Standard**.

### Device.SpeechRecognition.Quiet

The quiet tests represent an ideal environment with minimal ambient noise (noise floor &lt; 35 dBA SPL).

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Quiet</th>
<th>Premium</th>
<th>Standard</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>&lt;= 35 dBA SPL</p></td>
<td><p>95%</p></td>
<td><p>90%</p></td>
</tr>
</tbody>
</table>

 

### Device.SpeechRecognition.AmbientNoise

The ambient noise tests represent various levels and types of noisy environments, e.g. [Café & Pub](http://go.microsoft.com/fwlink/p/?linkid=528451).

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Ambient Noise @ DUT</th>
<th>Premium</th>
<th>Standard</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>&gt;= 57 dBA SPL</p></td>
<td><p>90%</p></td>
<td><p>85%</p></td>
</tr>
</tbody>
</table>

 

### Device.SpeechRecognition.EchoNoise

The echo noise tests represent various levels and types of render playback scenarios (e.g. media playing).

The level is calibrated at the listener position (LRP).

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Echo Noise @ LRP</th>
<th>Premium</th>
<th>Standard</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>&gt;= 70 dBA SPL</p></td>
<td><p>90%</p></td>
<td><p>85%</p></td>
</tr>
</tbody>
</table>

 

### Device.SpeechRecognition.DefaultMicGain

In order to ensure the best user experience and to maximize Windows speech accuracy, the microphone gain setting should be set to an optimal level used to pass the above tests. The resulting gain setting can then be set in a registry key as follows:

|             |                                                                                           |
|-------------|-------------------------------------------------------------------------------------------|
| Name        | **HKLM\\SOFTWARE\\Microsoft\\Speech\_OneCore\\AudioInput\\MicWiz\\DefaultDefaultMicGain** |
| Type        | REG\_DWORD                                                                                |
| Data        | 0-10000 decimal, 0-0x2710 Hex                                                             |
| Description | Percentage of max gain multiplied by 100                                                  |

 

This key is to set by the IHV for devices that have an integrated mic array that meet or exceed the Standard metrics for all three tests.

**Examples**

This example sets the MicGain as 42.00% which is 0x1068:

\[HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Speech\_OneCore\\AudioInput\\MicWiz\]

"DefaultDefaultMicGain"=dword:00001068

This example sets the MicGain as 64.50% which is 0x1932:

\[HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Speech\_OneCore\\AudioInput\\MicWiz\]

"DefaultDefaultMicGain"=dword:00001932

**Conditions**

-   The regkey is only applicable to integrated mic arrays and should not be implemented when external mics are being used.
-   The regkey should not be implemented in devices that do not meet or exceed the Standard metrics for all three tests.

## Section 3: Device.Audio HLK Recommendations


Recommendations in this section are made regarding the software and hardware interfaces, communication protocols, and data formats of the device.

It is important that a device meets the recommendations in this section in order to:

-   Ensure the device will work within the Windows Audio pipeline framework

-   Ensure the device will work within the operational boundaries of the Microsoft speech enhancement pipeline (for those devices not using their own speech enhancement pipeline)

Devices intended to use speech recognition functionality must meet all Device.Audio Requirements found under the [Windows Hardware Certification Requirements](http://msdn.microsoft.com/library/windows/hardware/jj134354.aspx).

The most relevant Device.Audio requirements for Speech Recognition functionality will be called out in the following sections.

### Device.Audio.Base.AudioProcessing

Drivers must expose all audio effect via the FXStreamCLSID, FXModeCLSID, and FXEndpointCLSID APOs (or proxy APOs). The APOs must send an accurate list of effects that are enabled to the system when queried. Drivers must support APO change notifications and only notify the system when an APO change has occurred.

There should be no undiscoverable nor uncontrollable hardware, firmware or 3rd party software-based BPF, AGC, DRC, AEC, Beam Forming, Noise suppression or anything else that alters the audio samples (e.g. non-linear processing) from/to the device.

The Driver Configuration Verification tool can be used for verification on the device.

### Device.Audio.Base.StreamingFormats

Speech recognition functions under all audio capture and render streaming formats defined in the StreamingFormats HLK, with the optimum being 16 kHz with 24 bit capture and mono render. Note that whilst the mono render is optimal for echo cancellation performance it is understood that it is not ideal for media applications, so this recommendation is included for devices in which the primary or exclusive functionality is speech input. The echo canceller will work with all render formats and devices will typically have stereo or greater render capability.

### Device.Audio.Base.SamplePositionAccuracy

It is important that render and capture audio signals are both 1) sampled accurately and 2) time-stamped accurately.

Accurate sampling at the ADC and DAC ensure a faithful reproduction of the audio signal, which supports good speech quality (sample error adds noise to the signal) and accurate echo cancellation (sample error adds noise to the echo estimate and creates signal mis-alignment).

Accurate timestamps ensure that capture and render signals can be synchronized for echo cancellation.

All capture channels must be synchronized (t0 sample aligned). This includes all ADCs initialized at the exact same point in time, as well as any buffers being aligned and free of data. This is critical for beamforming and sound source localizer performance, which relies on sub-sample alignment to estimate the location of a sound source(s).

Drift is defined in [Appendix A: Calculations](../fixme/speechplatformdevicestestsetup-003.md#appendix-a--calculations) as the absolute clock drift with reference to the ground truth clock. However, the drift as seen by the echo canceller is actually the relative drift between the capture and render paths.

![an equation](images/speechplatformequation2.png)

Devices with built-in capture and render paths can negate this relative drift by deriving both capture and render clocks from the same master clock source. In this way, even in the presence of absolute drift in the master clock, the relative drift between the capture and render clocks is 0%.

### Device.Audio.USB.USB

All USB audio input devices must properly set descriptor according to the [USB Device Class spec](http://www.usb.org/developers/docs/devclass_docs/).

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Terminal Type</th>
<th>Code</th>
<th>I/O</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Input Undefined</p></td>
<td><p>0x0200</p></td>
<td><p>I</p></td>
<td><p>Input Terminal, undefined Type.</p></td>
</tr>
<tr class="even">
<td><p>Microphone</p></td>
<td><p>0x0201</p></td>
<td><p>I</p></td>
<td><p>A generic microphone that does not fit under any of the other classifications.</p></td>
</tr>
<tr class="odd">
<td><p>Desktop Microphone</p></td>
<td><p>0x0202</p></td>
<td><p>I</p></td>
<td><p>A microphone normally placed on the desktop or integrated into the monitor.</p></td>
</tr>
<tr class="even">
<td><p>Personal microphone</p></td>
<td><p>0x0203</p></td>
<td><p>I</p></td>
<td><p>A head-mounted or clip-on microphone.</p></td>
</tr>
<tr class="odd">
<td><p>omni-directional microphone</p></td>
<td><p>0x0204</p></td>
<td><p>I</p></td>
<td><p>A microphone designed to pick up voice from more than one speaker at relatively long ranges.</p></td>
</tr>
<tr class="even">
<td><p>microphone array</p></td>
<td><p>0x0205</p></td>
<td><p>I</p></td>
<td><p>An array of microphones designed for directional processing using host-based signal processing algorithms.</p></td>
</tr>
<tr class="odd">
<td><p>processing microphone array</p></td>
<td><p>0x0206</p></td>
<td><p>I</p></td>
<td><p>An array of microphones with an embedded signal processor.</p></td>
</tr>
</tbody>
</table>

 

### Driver Guidelines

Roadmap for developing WDM Audio Drivers: [http://www.microsoft.com/whdc/device/audio/wavertport.mspx](http://go.microsoft.com/fwlink/p/?linkid=528454).

## Section 4: Device.AudioAcoustics Recommendations


Recommendations in this section are made regarding the acoustic and related properties of the device, such as microphone and loudspeaker placement, microphone responses, received noise from the device, and so on. Microphone selection, placement, integration, and array design are some of the most important factors to support quality speech recognition performance.

The recommendations and tests are relative to the signal before the speech enhancement processing but after microphone equalization and fixed microphone gain.

It is important that a device meets the recommendations in this section in order to:

-   Ensure the device will work within the operational boundaries of the Microsoft speech enhancement pipeline (for those devices not using their own speech enhancement pipeline).

-   Ensure the device will work within the operational boundaries of Microsoft’s speech recognition applications such as Cortana.

-   Ensure the device has similar characteristics to other speech input devices intended for use with speech recognition applications.

### Device.Audio.Acoustics.MicArray

A microphone array plays a fundamental role in enabling the speech enhancement pipeline to remove localized noise in the form of:

-   ambient noise

-   receive (echo) noise

-   room reverberation

-   device generated self-noise (such as fans)

Note that good mic array design is a function of many parameters other than just the number of mics, and is highly dependent on the device integration and usage. For design considerations and implementation guidelines (and many other very informative best practices), refer to [Microphone Array Support in Windows](http://msdn.microsoft.com/library/windows/hardware/dn613960.aspx).

The audio driver must implement the [KSPROPERTY\_AUDIO\_MIC\_ARRAY\_GEOMETRY](https://go.microsoft.com/fwlink/p/?linkid=528456) property. Then the System.Devices.MicrophoneArray.Geometry property can be accessed via the Windows.Devices.Enumeration API. The USB audio driver will support this property for USB microphone arrays that have the appropriate fields set in the USB descriptor.

The Driver Configuration Verification tool can be used for verification on the device.

For devices that will use the Microsoft speech enhancement pipeline, the following array geometries are recommended and known to work well. However, the Microsoft speech enhancement is capable of working with any array type specified in the microphone array descriptor.

![recommended mic array geometries](images/recommendedmicarrays.png)

With the following theoretical performance properties:

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th>Microphone Array</th>
<th>Mics</th>
<th>Type</th>
<th>NG (dB)</th>
<th>NGA (dB)</th>
<th>DI (dB)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Linear (small)</p></td>
<td><p>2</p></td>
<td><p>uni-directional</p></td>
<td><p>-12.7</p></td>
<td><p>-6.0</p></td>
<td><p>7.4</p></td>
</tr>
<tr class="even">
<td><p>Linear (big)</p></td>
<td><p>2</p></td>
<td><p>uni-directional</p></td>
<td><p>-12.9</p></td>
<td><p>-6.7</p></td>
<td><p>7.1</p></td>
</tr>
<tr class="odd">
<td><p>Linear (4 el A)</p></td>
<td><p>4</p></td>
<td><p>uni-directional</p></td>
<td><p>-13.1</p></td>
<td><p>-7.6</p></td>
<td><p>10.1</p></td>
</tr>
<tr class="even">
<td><p>4 L-shaped (rotatable)</p></td>
<td><p>4</p></td>
<td><p>uni-directional</p></td>
<td><p>-12.9</p></td>
<td><p>-7.0</p></td>
<td><p>10.2</p></td>
</tr>
<tr class="odd">
<td><p>5 (4 el B)</p></td>
<td><p>4</p></td>
<td><p>omni</p></td>
<td><p>-12.9</p></td>
<td><p>-7.3</p></td>
<td><p>9.9</p></td>
</tr>
</tbody>
</table>

 

### Microphone Array Descriptor

The device must describe its microphone type and geometry using the mic array descriptor. The mic array descriptor is used to parameterize beamformer and sound source localizer behavior in the Microsoft, and 3rd party, speech enhancement pipelines.

Custom descriptors unlike the defaults in the previous sub-section may be defined and supported via the microphone array descriptor.

Further information on the microphone array descriptor:

-   [Microphone Array Geometry Property](http://go.microsoft.com/fwlink/p/?linkid=528457)
-   [Microphone Array Geometry Descriptor Format](https://go.microsoft.com/fwlink/p/?linkid=528458)
-   [KSPROPERTY\_AUDIO\_MIC\_ARRAY\_GEOMETRY](https://go.microsoft.com/fwlink/p/?linkid=528459)
-   [KSAUDIO\_MIC\_ARRAY\_GEOMETRY structure](https://go.microsoft.com/fwlink/p/?linkid=528460)
-   [KSAUDIO\_MICROPHONE\_COORDINATES structure](https://go.microsoft.com/fwlink/p/?linkid=528461)

### Device.Audio.Acoustics.MicSensitivity

The microphone sensitivity recommendation ensures that adequate levels of speech input can be supported without saturating the digital audio input path (i.e. clipping), as well as ensuring that the input speech signal is at a high enough level to be recognized.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Microphone + Digital Interface</th>
<th>Recommendation</th>
<th>Test Signal</th>
<th>DUT Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Max Level</p></td>
<td><p>≤ -20 dBFS RMS</p>
<p>100-8000Hz</p></td>
<td><p>Continuous Log Sweep 3 sec</p>
<p>94 dB SPL @ MRP (“loud”)</p></td>
<td><p>Closest MRP to DUT supported scenario (IHV defined)</p></td>
</tr>
<tr class="even">
<td><p>Min Level</p></td>
<td><p>≥ -55 dBFS RMS</p>
<p>100-8000Hz</p></td>
<td><p>Continuous Log Sweep 3 sec</p>
<p>69 dB SPL @ MRP (“quiet”)</p></td>
<td><p>Furthest MRP to DUT supported scenario</p></td>
</tr>
</tbody>
</table>

 

The Max recommendation is set to be able to support speech input levels considered to be “Loud” (70 dB SPL RMS @ 1m with a crest factor of 12), where the -20 dBFS threshold has been measured against the log sweep test signal played back at 94 dB SPL @ MRP to correlated with real speech at the target level. Note: This threshold and input signal were selected to simplify testing for typical audio generator/analysis test setups.

The Min recommendation is set to be able to support speech input levels considered to be “quiet” (55 dB SPL RMS @ 1m with a crest factor of 12), where the -55 dBFS threshold has been measured against the log sweep test signal played back at 69 dB SPL @ MRP to correlate with real speech at the target level.

If the received levels across the above scenarios do not fit within the Max and Min thresholds by simple linear gain adjustment, then device specific AGC should be included to adjust speech levels to fit within the thresholds.

Matching of microphone sensitivity across all microphones in the array is important, and should be within +/- 3 dB for **Standard** and +/- 1 dB for **Premium**. The system level performance in specified and tested in Device.Audio.Acoustics.MicMagnitudeResponse. MEMS microphones have low manufacturing tolerances, and are recommended for best microphone-to-microphone matching characteristics.

Note that if MEMs microphones are not used, then the sensitivity will change during assembly, and it will also change during use due to environmental conditions.

### Device.Audio.Acoustics.MicIntegration

Careful mechanical integration of the microphone is important and is a common source of failure.

The microphones must be integrated to ensure a good acoustic seal between the microphone and the device chassis, and if appropriate, along the microphone porting tube. It is also important to minimize the acoustic noise and vibration between the system and the microphone. Two typical solutions are to use a rubber boot or a gasket.

Whichever method is chosen, check that the acoustic seal is sufficient across all production tolerances and over both environmental and lifetime changes.

### Device.Audio.Acoustics.MicPlacement

In general, follow these guidelines for placing the microphone array:

-   As far as possible from noise sources such as loudspeakers, fans, keyboards, hard drives, and the user’s hands.

-   As close as possible to the speaker’s mouth.

### Device.Audio.Acoustics.MicSelfNoise

Microphone components are also a source of noise, called self-noise or equivalent-noise. It can be caused by a variety of sources, but it is created internally in the microphone and is effectively independent of the SPL. The equivalent noise represents the lowest point of the microphone's dynamic range, and is particularly important for good beam-forming performance. Use of a high quality microphone will minimize the microphone internal noise.

Microphones with an SNR of at least 61 dB nominal is recommended for **Standard** and 63 dB for **Premium**.

### Device.Audio.Acoustics.MicReceivedNoise

The two main sources of received noise are acoustic noise and electrical noise. Acoustic noise may be generated from outside the device, or be generated internally in the device due to fans, hard disks, and so on. The acoustic noise can also be transmitted through the device mechanics.

Electrical noise can be minimized by using digital microphones rather than analog microphones.

### Device.Audio.Acoustics.MicMagnitudeResponse

The **Premium** and **Standard** masks apply to all device tiers under Device.Audio.Acoustics.Bandwidth. For example, a device can have **Standard** bandwidth (narrow-band) and a **Premium** magnitude response within that band.

The microphone magnitude response tolerance mask is important for a couple reasons:

-   Reduces variance between microphones in an array due to channel responses

-   Reduces variance between devices due to channel responses

Which leads to the following outcomes:

-   Less variability in data used to train speech acoustic models

-   More consistent beam-forming performance in the speech enhancement pipeline

-   Less energy from low frequency, lower SNR regions -&gt; less noise in signal and lower likelihood of saturation due to low frequency noise

-   More natural sounding voice for perceptual applications

With these considerations in place, Microsoft encourages meeting the below response masks (with “flat” being the ideal target) in order to drive response convergence across devices, vis-à-vis acoustic models, over time.

![microphone magnitude response limits](images/speechplatform3.png)

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>Premium</th>
<th>Premium</th>
<th>Standard</th>
<th>Standard</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Frequency (Hz)</td>
<td>Upper Limit (dB)</td>
<td>Lower Limit (dB)</td>
<td>Upper Limit (dB)</td>
<td>Lower Limit (dB)</td>
</tr>
<tr class="even">
<td><p>200</p></td>
<td><p>3</p></td>
<td><p>-6</p></td>
<td><p>6</p></td>
<td><p>-9</p></td>
</tr>
<tr class="odd">
<td><p>300</p></td>
<td><p>3</p></td>
<td><p>-3</p></td>
<td><p>6</p></td>
<td><p>-6</p></td>
</tr>
<tr class="even">
<td><p>5000</p></td>
<td><p>3</p></td>
<td><p>-3</p></td>
<td><p>6</p></td>
<td><p>-6</p></td>
</tr>
<tr class="odd">
<td><p>6300</p></td>
<td><p>3</p></td>
<td><p>-3</p></td>
<td><p>6</p></td>
<td><p>-6</p></td>
</tr>
<tr class="even">
<td><p>7000</p></td>
<td><p>3</p></td>
<td><p>-3</p></td>
<td><p>6</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

All microphones must fit within the mask concurrently. The mask is floating – absolute gain is not a factor.

### Device.Audio.Acoustics.MicPhaseResponseMatching

The microphone phase response matching limit is important to ensure that the temporal relationship between signals received via microphone elements in an array is consistent with the physical geometry of the microphone elements in the array.

This is important for beam-former and sound source localizer processing in the Microsoft speech enhancement pipeline, which use the relative delay between speech signals from each microphone channel in order to:

-   Estimate the direction of localized sound

-   Suppress noises that do not come from the listening direction.

![microphone phase response matching limit](images/speechplatform4.png)

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>Premium</th>
<th>Standard</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Frequency (Hz)</td>
<td>Upper Limit (deg)</td>
<td>Upper Limit (deg)</td>
</tr>
<tr class="even">
<td><p>200</p></td>
<td><p>20</p></td>
<td><p>30</p></td>
</tr>
<tr class="odd">
<td><p>1000</p></td>
<td><p>20</p></td>
<td><p>30</p></td>
</tr>
<tr class="even">
<td><p>4000</p></td>
<td><p>20</p></td>
<td><p>30</p></td>
</tr>
<tr class="odd">
<td><p>7000</p></td>
<td><p>25</p></td>
<td><p>30</p></td>
</tr>
</tbody>
</table>

 

### Device.Audio.Acoustics.MicDistortion

Requirement extends up to ½ the effective bandwidth, at which point the first harmonic is beyond the nyquist rate.

The mic distortion and noise limit is important to meet for a couple reasons:

-   Ensure the voice is relatively undistorted before entering the speech recognizer

-   Keep non-linearities on the echo path minimal for good echo cancellation performance

The distortion is recommended to be measured using SDNR (pulsed noise signal-to-distortion-and-noise ratio), although THD targets are also given. More information about the SDNR test method can be found from IEEE 269-2010 Annex L.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>Premium</th>
<th>Premium</th>
<th>Standard</th>
<th>Standard</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Frequency</td>
<td>THD</td>
<td>SDNR</td>
<td>THD</td>
<td>SDNR</td>
</tr>
<tr class="even">
<td><p>250</p></td>
<td><p>2.50%</p></td>
<td><p>&gt;= 32</p></td>
<td><p>3.20%</p></td>
<td><p>&gt;= 30</p></td>
</tr>
<tr class="odd">
<td><p>1000</p></td>
<td><p>2.50%</p></td>
<td><p>&gt;= 32</p></td>
<td><p>3.20%</p></td>
<td><p>&gt;= 30</p></td>
</tr>
<tr class="even">
<td><p>4000</p></td>
<td><p>2.50%</p></td>
<td><p>&gt;= 32</p></td>
<td><p>3.20%</p></td>
<td><p>&gt;= 30</p></td>
</tr>
<tr class="odd">
<td><p>5000</p></td>
<td><p>4.00%</p></td>
<td><p>&gt;= 28</p></td>
<td><p>4.00%</p></td>
<td><p>&gt;= 28</p></td>
</tr>
<tr class="even">
<td><p>6000</p></td>
<td><p>6.30%</p></td>
<td><p>&gt;= 24</p></td>
<td><p>6.30%</p></td>
<td><p>&gt;= 24</p></td>
</tr>
</tbody>
</table>

 

### Device.Audio.Acoustics.MicBandwidth

The sample rate of the capture signal is the primary factor in determining the effective bandwidth of the speech signal. As the speech platform uses 16 kHz acoustic models in the speech recognizer, a 16 kHz minimum sample rate is recommended. 300 Hz is the effective lower end of the speech recognizer, however 200 Hz is the recommended acoustical limit for devices also targeting voice communications.

Filtering can also alter the effective bandwidth of the device; such as an analog FIR lowpass filter in the ADC, a digital band pass filter at a later stage in the pipeline, or even attenuation due to the response of the microphone element or electrical system. These factors should be considered during design.

The speech platform utilizes 8 kHz acoustic models only to provide support for legacy Bluetooth audio devices.

### Device.Audio.Acoustics.RenderDistortion

Note: Device.Audio.Acoustics.RenderDistortion only applies to devices with built-in loudspeakers.

The loudspeaker distortion limit is important to meet for the following reason:

-   Keep non-linearities on the echo path minimal for good echo cancellation performance

The distortion is recommended to be measured using SDNR (pulsed noise signal-to-distortion-and-noise ratio), although THD targets are also given. More information about the SDNR test method can be found from IEEE 269-2010 Annex L.

<table style="width:100%;">
<colgroup>
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>Premium</th>
<th>Premium</th>
<th>Premium</th>
<th>Premium</th>
<th>Standard</th>
<th>Standard</th>
<th>Standard</th>
<th>Standard</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>Level: -22dBFS</td>
<td>Level: -22dBFS</td>
<td>Level: -16dBFS</td>
<td>Level: -16dBFS</td>
<td>Level: -22dBFS</td>
<td>Level: -22dBFS</td>
<td>Level: -16dBFS</td>
<td>Level: -16dBFS</td>
</tr>
<tr class="even">
<td>Frequency</td>
<td>THD</td>
<td>SDNR</td>
<td>THD</td>
<td>SDNR</td>
<td>THD</td>
<td>SDNR</td>
<td>THD</td>
<td>SDNR</td>
</tr>
<tr class="odd">
<td><p>300</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
<td><p>NA</p></td>
<td><p>NA</p></td>
<td><p>NA</p></td>
<td><p>NA</p></td>
</tr>
<tr class="even">
<td><p>500</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
<td><p>NA</p></td>
<td><p>NA</p></td>
<td><p>NA</p></td>
<td><p>NA</p></td>
</tr>
<tr class="odd">
<td><p>600</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>10%</p></td>
<td><p>&gt;= 20</p></td>
<td><p>10%</p></td>
<td><p>&gt;= 20</p></td>
</tr>
<tr class="even">
<td><p>800</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>8%</p></td>
<td><p>&gt;= 22</p></td>
<td><p>8%</p></td>
<td><p>&gt;= 22</p></td>
</tr>
<tr class="odd">
<td><p>1000</p></td>
<td><p>4%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
</tr>
<tr class="even">
<td><p>1500</p></td>
<td><p>4%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
</tr>
<tr class="odd">
<td><p>3000</p></td>
<td><p>4%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
</tr>
<tr class="even">
<td><p>4000</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
</tr>
<tr class="odd">
<td><p>5000</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
</tr>
<tr class="even">
<td><p>6000</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>5%</p></td>
<td><p>&gt;= 26</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
<td><p>6.3%</p></td>
<td><p>&gt;= 24</p></td>
</tr>
</tbody>
</table>

 

### Device.Audio.Acoustics.RenderPlacement

To enable the acoustic echo canceller to work well, the device speakers should be placed at a maximum distance from the microphones, or place directivity nulls towards loudspeakers.

## References


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Title</th>
<th>Link</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Useful definitions and metrics</p></td>
<td><p>[http://www.rane.com/note145.html](http://go.microsoft.com/fwlink/p/?linkid=528462)</p></td>
</tr>
<tr class="even">
<td><p>Microphone Array Support in Windows</p></td>
<td><p>[http://msdn.microsoft.com/library/windows/hardware/dn613960.aspx](http://go.microsoft.com/fwlink/p/?linkid=528463)</p></td>
</tr>
<tr class="odd">
<td><p>ITU-p.10 Reference Terms</p></td>
<td><p>[https://www.itu.int/rec/T-REC-P.10-200607-I/en](https://go.microsoft.com/fwlink/p/?linkid=528464)</p></td>
</tr>
<tr class="even">
<td><p>3GPP Terminal acoustic characteristics</p></td>
<td><p>[http://www.3gpp.org/DynaReport/26131.htm](http://go.microsoft.com/fwlink/p/?linkid=528465)</p></td>
</tr>
<tr class="odd">
<td><p>ETSI UMTS Speech telephony terminal acoustic test specification</p>
<p>(3GPP TS 26.132 version 11.4.0 Release 11)</p></td>
<td><p>[http://www.etsi.org/deliver/etsi_ts/126100_126199/126132/11.04.00_60/ts_126132v110400p.pdf](http://go.microsoft.com/fwlink/p/?linkid=528466)</p></td>
</tr>
<tr class="even">
<td><p>ETSI EG 202 396-1</p></td>
<td><p>[http://www.etsi.org/deliver/etsi_eg/202300_202399/20239601/01.02.02_60/eg_20239601v010202p.pdf](http://go.microsoft.com/fwlink/p/?linkid=528467)</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Cortana%20Device%20Recommendation%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




