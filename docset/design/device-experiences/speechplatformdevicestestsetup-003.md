---
title: Cortana Device Test Setup
description: Provides test guidance of audio input devices intended for use with Microsoft’s Speech Platform.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7B5CB257-C27B-429D-82E9-1205DD4432FD
---

# Cortana Device Test Setup


## Section 0: Document


**Disclaimer:** This document is provided “as-is”. Information and views expressed in this document, including URL and other Internet website references, may change without notice. Some information relates to pre-released products which may be substantially modified before commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. You bear the risk of using it.

Some examples depicted herein are provided for illustration only and are fictitious. No real association or connection is intended or should be inferred.

All recommendations and criteria within this document are approximate guidelines only, and not guarantees of speech recognition performance for all devices under real-world conditions. Speech recognition is a complex machine learning process, imperfect by nature. It is not guaranteed that Cortana and Speech Recognition will work well for your device, even if all premium recommendations are met.

### Definitions

For a comprehensive list of relevant terms, reference (ITU-p.10): [https://www.itu.int/rec/T-REC-P.10-200607-I/en](https://go.microsoft.com/fwlink/p/?linkid=528464)

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
<td><p>Decibel sound pressure level = <img src="images/speechplatformequation14.png" alt="whatever" /> where p<sub>ref</sub>=20 micropascal. 0 dBPa corresponds to 94 dBSPL</p></td>
</tr>
<tr class="even">
<td><p>dBFS (or dBov)</p></td>
<td><p>Decibel full scale = <img src="images/speechplatformequation15.png" alt="whatever" />where S<sub>ref</sub>= the RMS of a full scale digital sine wave</p>
<p>The signal level of a digital signal relative to its overload or maximum level is given by dBov. This is also commonly referred to as dBFS (Full Scale).</p>
<p>For example, a rectangular function with only the positive or negative maximum number has a level of 0 dBov. For a maximum scale digital sine signal the peak level is 0 dBov and RMS is -3.01 dBov. (ITU-T G.100.1).</p></td>
</tr>
<tr class="odd">
<td><p>DI</p></td>
<td><p>Directivity Index (For more information, see [Appendix A: Calculations](speechplatformdevicestestsetup-003.md#appendix-a--calculations)).</p></td>
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
<td><p>Ambient Noise Gain (For more information, see [Appendix A: Calculations](speechplatformdevicestestsetup-003.md#appendix-a--calculations)).</p></td>
</tr>
<tr class="odd">
<td><p>NGA</p></td>
<td><p>A-Weighted Ambient Noise Gain (For more information, see [Appendix A: Calculations](speechplatformdevicestestsetup-003.md#appendix-a--calculations)).</p></td>
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


The Speech Platform is used to power all of the speech experiences in Windows 10 such as Cortana and Dictation. This document provides testing setup guidance and recommendations for the design and development of audio input devices intended for use with Microsoft’s Speech Platform.

The testing and test setup guidance provided in this document is limited to only those design parameters that have direct influence on 1) speech recognition accuracy and 2) behavior of the underlying speech processing algorithms. This document is not part of a Windows Certification Program, nor are the recommendations within required for device certification. The recommendations are intended only as helpful guidelines and best practices for device design.

## Section 2: Test Conditions


The test conditions define the environment parameters and equipment capabilities that should be used when measuring devices according to the Speech Platform Input Device Recommendations.

The test system and environment should be capable of fulfilling the standards for measurement accuracy defined by [ITU-T P.341](https://go.microsoft.com/fwlink/p/?linkid=528607) and [ITU-T P.58](https://go.microsoft.com/fwlink/p/?linkid=528608).

### Test Equipment Recommendations

The Skype/Lync recommended Head Acoustics equipment, or the Intel speech certification test equipment, may be used. Otherwise, the following list is an example of the required equipment.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Recommendations</th>
<th>Example</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Head and Torso Simulator (HATS) and/or Mouth Simulator</p></td>
<td><p>Compliant with ITU-T P.58</p>
<p>Compliant with ITU-T P.51</p></td>
<td><p>[B&amp;K 4128C](http://go.microsoft.com/fwlink/p/?linkid=528609)</p>
<p>[G.R.A.S. 44AB](http://aka.ms/gras44ab)</p>
<p>[B&amp;K 4227](http://aka.ms/bk4227)</p>
<p>or</p>
<p>[NT1 TalkBox](http://go.microsoft.com/fwlink/p/?linkid=528611)</p></td>
</tr>
<tr class="even">
<td><p>Amplifier (if HATS used)</p></td>
<td><p>Compatible with HATS used</p></td>
<td><p>B&amp;K Nexus</p>
<p>or</p>
<p>B&amp;K 2716C</p></td>
</tr>
<tr class="odd">
<td><p>Audio Generator/Analyzer</p></td>
<td><p>Fulfil test signal requirements</p></td>
<td><p>AP 585</p></td>
</tr>
<tr class="even">
<td><p>Room loudspeakers &amp; Stands</p></td>
<td></td>
<td><p>JBL LSR2325P &amp; SMS-6000</p></td>
</tr>
<tr class="odd">
<td><p>Reference Free Field Microphone Or Sound Level Meter</p></td>
<td><p>100 Hz – 12 kHz, &lt; 1% THD 94 dB SPL @ MRP, ±2 dB on axis response</p></td>
<td><p>DPA 4007</p>
<p>[B&amp;K 2240](http://go.microsoft.com/fwlink/p/?linkid=528612)</p>
<p>or</p>
<p>NTi Xl2 with M4260</p></td>
</tr>
<tr class="even">
<td><p>PC Audio Interface</p></td>
<td></td>
<td><p>RME 9632 or Roland Octa-Capture</p></td>
</tr>
</tbody>
</table>

 

### Test Room Recommendations

Devices can be tested against Device.SpeechRecognition and Device.Audio.DSPDevice.SpeechRecognition from Speech Platform Input Device Recommendations in an ETSI normal room. The availability of an anechoic chamber enables the tests in Device.Audio.Acoustics.Device.Audio.Acoustics. If an anechoic chamber is the only available test room, the use of acoustically reflective panels to increase reverberation is recommended when testing against Device.SpeechRecognition and Device.Audio.DSP.Device.SpeechRecognition. An alternative is to convert a meeting room to approximate an ETSI normal room in terms of reverberation and noise floor.

ETSI Normal room configuration is specified in [ETSI EG 202 396-1 (Section 6)](http://go.microsoft.com/fwlink/p/?linkid=528613) and it is recommended to follow the additional guidelines in the [Skype test specification](https://go.microsoft.com/fwlink/p/?linkid=528614), 5.8 Reverberant test environment.

Summary:

-   • Test room size should be in range between 2.7m X 3.7m and 3.5m X 4.4m

-   • Noise floor should target 28 dBSPL(A) and must be &lt; 35 dBSPL(A)

-   • Minimize unnatural acoustic reverberation. Reverberation time of the room should be less than 0.7 sec but higher than 0.4 sec in frequency range between 100Hz and 8kHz.

Anechoic or Semi-Anechoic Chamber is specified in [ITU-T P.341, Section 4](https://go.microsoft.com/fwlink/p/?linkid=528607).

### Test Signal, Files, Software Recommendations

The following test stimulus and software should be used to test against this specification.

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
<th>Stimulus</th>
<th>Length</th>
<th>Level</th>
<th>Frequencies</th>
<th>Other Parameters</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Input Sweep</p></td>
<td><p>3s</p></td>
<td><p>94 dB SPL @ MRP</p></td>
<td><p>100 – 12000 Hz</p></td>
<td><p>Continuous, Log Sweep</p></td>
</tr>
<tr class="even">
<td><p>Output Sweep</p></td>
<td><p>3s</p></td>
<td><p>20 dBV or -10 dBFS</p></td>
<td><p>20 – 12000 Hz</p></td>
<td><p>Continuous, Log Sweep</p></td>
</tr>
<tr class="odd">
<td><p>Speech Input</p></td>
<td><p>~ 20 min</p></td>
<td><p>89 dB SPL @ MRP</p></td>
<td><p>100 – 12000 Hz</p></td>
<td><p>LongCleanTalk-CortanaSubset_48k_24bit.wav</p></td>
</tr>
<tr class="even">
<td><p>Music File</p></td>
<td><p>~20 min</p></td>
<td><p>&gt;= 70 dBA SPL @LRP</p></td>
<td></td>
<td><p>Local playback for echo test</p></td>
</tr>
<tr class="odd">
<td><p>Ambient Noise</p></td>
<td><p>~20 min</p></td>
<td><p>&gt;= 57 dBA SPL @ DUT</p></td>
<td></td>
<td><p>Café, Pub from [ETSI ES 202 396-1](http://go.microsoft.com/fwlink/p/?linkid=528615)</p></td>
</tr>
<tr class="even">
<td><p>Calibration (mouth)</p></td>
<td></td>
<td></td>
<td><p></p></td>
<td><p>LongCleanTalk-Calibration.wav</p></td>
</tr>
</tbody>
</table>

 

The test suite software is available from Microsoft and the audio files are available from or specified by Microsoft.

The background noise files can be found at <http://docbox.etsi.org/stq/Open/EG%20202%20396-1%20Background%20noise%20database/Binaural_Signals/>.

### Test Position

**The DUT shall be placed relative to the MRP, during all tests, in what is deemed to be a typical (“normal”) scenario/use case. However the minimum distance for a typical tablet/laptop is to be 50cm.**

The IHV owns the scenarios for their device. The recommendations here are intended to provide the IHV with guidelines to validate their device against speech recognition functionality.

Scenario definition includes considerations like the following:

-   Distance of MRP to microphone (array)

-   Orientation of MRP to microphone (array)

-   Placement of the boom arm on headset devices

-   Coverage/pressure of the earpiece(s) on the ear simulators for headset devices

-   Location of loudspeaker(s) relative to the microphones and HATS

-   Device placement environment e.g. on a table, in free air, on a TV, on a HATS

For additional guidance on typical device usage modality and test setups, reference Section 5 in the [Skype/Lync Audio Specification](https://go.microsoft.com/fwlink/p/?linkid=528614).

The following diagram shows a typical test position setup for reference.

![typical test position setup](images/testpositionsetupv2.png)

### Test Room Setup Topology

![test room setup topology](images/testroomsetuptopologyv2.png)

Room and Test Setup for typical laptop and tablet case.

## Section 3: Test Steps


The following section contains example test steps to evaluate against the recommendations in this document. Exact steps may vary depending on the equipment and setup available to the tester.

Before beginning, refer to Section 2: Test Conditions for a list of reference equipment, files, and setup diagram.

### Initial Setup and Calibration

Complete these generic steps before proceeding with any of the individual tests:

1.  Prepare the normal ETSI room with any objects needed for test scenarios (e.g. Table, TV)

2.  Calibrate the reference mic sensitivity according to manufacturer guidelines

3.  Calibrate the HATS (or mouth simulator) to flat magnitude response according to manufacturer guidelines

4.  Calibrate the speech level of the HATS or mouth simulator

5.  Measure the background noise floor of the room (target &lt; 35 dBA SPL)

6.  Measure the RT60 of the room (target 0.4s &lt; RT60 &lt; 0.7s in the speech band)

###  Talker Level Calibration

There are currently two mouth calibration files provided. These files are derived from the Speech Input Files and have the silence removed. The Long Clean Talk is normalized for amplitude and is the official file for these tests.

Place a reference mic or sound level meter at the Mouth Reference Point (MRP) and play the relevant calibration file provided:

|                  |                                |                                                         |
|------------------|--------------------------------|---------------------------------------------------------|
|                  | Talker Level Calibration File  | Clean Talk Speech Input File                            |
| Long Clean Talk  | LongCleanTalk-Calibration.wav  | LongCleanTalk-CortanaSubset\_48k\_24bit.wav             |
| Short Clean Talk | ShortCleanTalk-Calibration.wav | RawSpeech\_Sheet-01\_Mike\_Bruce\_\_ITU-R-BS.1770-2.wav |

 

Average the measurement across the whole file, and target the level to be 89dB SPL.

###  Ambient Noise Level Calibration

The Ambient Noise level is required to be calibrated for Device.SpeechRecognition.AmbientNoise. It is measured next to the DUT microphones.

Play the background noise file and increase the averaging time on the reference mic (or sound level meter) until it is steady. Then change the level of the background noise to be &gt;= 57dB SPL.

The generation of a pink noise file is being investigated for the future for further ease of calibration.

###  Echo Noise (Music) Level Calibration

The Echo Noise level is required to be calibrated for Device.SpeechRecognition.EchoNoise. It is measured at the Listener Reference Point (LRP).

Play the music file and increase the averaging time on the reference mic (or sound level meter) until it is steady. Then change the playback level on the DUT until &gt;= 70dB SPL @ LRP is reached (or the DUT max playback level is reached).

### <a href="" id="device-speechrecognition-quiet----test-steps"></a>Device.SpeechRecognition.Quiet | Test Steps

1.  Mouthsim 89 dB SPL @ MRP

2.  Start the Test Suite and initiate playback of the Speech Input File

### Device.SpeechRecognition.AmbientNoise | Test Steps

1.  Mouthsim 89 dB SPL @ MRP

2.  Initiate Ambient Noise playback at &gt;= 57 dBA SPL @ DUT

3.  Start the Test Suite and initiate playback of Speech Input File

### Device.SpeechRecognition.EchoNoise | Test Steps

1.  Mouthsim 89 dB SPL @ MRP

2.  Initiate Music File playback 2) at &gt;= 70 dBA SPL @ LRP

3.  Start the Test Suite and initiate playback of Speech Input File

## Appendix A: Calculations


### Jitter and Drift

### Jitter

We define jitter as the absolute range of observed samples (or reported timestamps) about the nominal sample (or timestamp).

![whatever](images/speechplatform5.png)

For example, in the case of a normal distribution of samples t\_i about the nominal sample μ, the absolute jitter T is defined as the following

![whatever](images/speechplatform6.png)

### Drift

We define drift as the percent difference between the nominal clock rate and the actual clock rate over a period of time sufficient to observe the drift.

![whatever](images/speechplatform7.png)![whatever](images/speechplatform8.png)

### Ambient Noise Gains

The isotropic ambient noise gain for a given frequency is the volume of the microphone array beam:

![whatever](images/speechplatformequation3.png)

Where:

-   V is the microphone array work volume—that is, the set of all coordinates ![whatever](images/speechplatformequation4.png) (direction, elevation, distance).

-   B (ƒ, c) is the microphone array beam directivity pattern—that is, the gain as a function of the frequency and incident angle.

The total ambient noise gain NG in decibels is given by:

![whatever](images/speechplatformequation5.png)

Where:

-   N<sub>A</sub>(ƒ) is the noise spectrum.

-   H (ƒ) is the preamplifier frequency response (ideally flat between 200 and 7,000 Hz, with falling slopes from both sides going to zero at 80 and 7,500 Hz respectively).

-   F<sub>S</sub> is the sampling rate (typically 16 kHz for voice applications).

Ambient noise gain gives the proportion of the noise floor RMS in relation to the output of the microphone array and to the output of an omnidirectional microphone. A lower value is better, and 0 dB means that the microphone array does not suppress ambient noise at all.

### A-Weighted Ambient Noise Gain

Because humans hear different frequencies differently, many acoustic parameters are weighted by using a standardized A-weighting function.

The A-weighted total ambient noise gain NGA in decibels is given by:

![whatever](images/speechplatformequation6.png)

Where:

-   A(ƒ) is the standard A-weighting function; other parameters are the same as above.

A-weighted ambient noise gain gives the proportion of the noise floor in relation to the output of the microphone array and to the output of an omnidirectional microphone as they would be compared by a human. In this case, –6 dB NGA means that a human would say that the noise on the output of a microphone array is half that of an omnidirectional microphone.

### Directivity Index

Another parameter to characterize the beamformer is the directivity index, DI.

In considering the following formula for calculating DI, note that cos θ is used when θ is defined to be –π/2 and π/2 at the poles, and 0 at the equator. These limits match the definitions of φ and θ in Appendix B of [How to Build and Use Microphone Arrays for Windows Vista](http://go.microsoft.com/fwlink/p/?LinkID=306613). And these limits also match the definitions for wHorizontalAngle (φ) and wVerticalAngle (θ) in the kernel streaming interface definitions.

This is the power function for a given frequency ƒ and direction (φ, θ), with a fixed radius:

![whatever](images/speechplatformequation7.png)

This is the average power over all directions (the whole sphere):

![whatever](images/speechplatformequation8.png)

This is the power in the “best” direction, called the Main Response Axis:

![whatever](images/speechplatformequation9.png)

Dividing the power in the “best” direction by the average power gives an indication of directionality for a particular frequency. Averaging this ratio over all frequencies gives the Directivity Index.

![whatever](images/speechplatformequation10.png)

The directivity index characterizes how well the microphone array detects sound in the direction of the MRA while suppressing sounds that come from other directions, such as additional sound sources and reverberation. The DI is measured in decibels, where 0 dB means no directivity at all. A higher number means better directivity. An ideal cardioid microphone should have DI of 4.8 dB, but in practice cardioid microphones have a DI below 4.5 dB.

### SLR

### Weighting Coefficients

The table below describes the weighting function to be used when calculating SLR:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Band # (N)</th>
<th>Frequency (Hz)</th>
<th>Ws (SLR Wideband)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1</p></td>
<td><p>100</p></td>
<td><p>103.0</p></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>125</p></td>
<td><p>75.3</p></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>160</p></td>
<td><p>60.2</p></td>
</tr>
<tr class="even">
<td><p>4</p></td>
<td><p>200</p></td>
<td><p>59.5</p></td>
</tr>
<tr class="odd">
<td><p>5</p></td>
<td><p>250</p></td>
<td><p>52.9</p></td>
</tr>
<tr class="even">
<td><p>6</p></td>
<td><p>315</p></td>
<td><p>59.4</p></td>
</tr>
<tr class="odd">
<td><p>7</p></td>
<td><p>400</p></td>
<td><p>45.4</p></td>
</tr>
<tr class="even">
<td><p>8</p></td>
<td><p>500</p></td>
<td><p>56.6</p></td>
</tr>
<tr class="odd">
<td><p>9</p></td>
<td><p>630</p></td>
<td><p>53.5</p></td>
</tr>
<tr class="even">
<td><p>10</p></td>
<td><p>800</p></td>
<td><p>53.8</p></td>
</tr>
<tr class="odd">
<td><p>11</p></td>
<td><p>1000</p></td>
<td><p>55.9</p></td>
</tr>
<tr class="even">
<td><p>12</p></td>
<td><p>1250</p></td>
<td><p>64.2</p></td>
</tr>
<tr class="odd">
<td><p>13</p></td>
<td><p>1600</p></td>
<td><p>60.6</p></td>
</tr>
<tr class="even">
<td><p>14</p></td>
<td><p>2000</p></td>
<td><p>73.7</p></td>
</tr>
<tr class="odd">
<td><p>15</p></td>
<td><p>2500</p></td>
<td><p>70.4</p></td>
</tr>
<tr class="even">
<td><p>16</p></td>
<td><p>3150</p></td>
<td><p>87.1</p></td>
</tr>
<tr class="odd">
<td><p>17</p></td>
<td><p>4000</p></td>
<td><p>68.2</p></td>
</tr>
<tr class="even">
<td><p>18</p></td>
<td><p>5000</p></td>
<td><p>84.5</p></td>
</tr>
<tr class="odd">
<td><p>19</p></td>
<td><p>6300</p></td>
<td><p>86.5</p></td>
</tr>
<tr class="even">
<td><p>20</p></td>
<td><p>8000</p></td>
<td><p>71.0</p></td>
</tr>
</tbody>
</table>

 

### SLR Calculations

The equation below describes the weighting function to be used when calculating SLR:

![whatever](images/speechplatformequation11.png)

Where:

-   N<sub>i</sub> is the frequency band of interest (only bands 1-20 are assessed for SLR, none &gt; 8kHz)

-   S<sub>i</sub> is the average sensitivity within frequency band N\_i expressed in dBm0. When measured in dBFS, Si (dBm0) = dBFS + 3.1. When measured in dBV, Si (dBm0) = dBFS + 3.1 = \[dBV + 22\] + 3.1

-   W<sub>S<sub>i</sub></sub> is the weighting coefficient for frequency band N<sub>i</sub>

### Diffuse Field EQ

In a diffuse field listening environment, the measured response of a playback loudspeaker equalized with a reference microphone does not measure flat at HATS, though it is perceived to be flat or neutral by end users as confirmed in many user studies. There are at two reasons, in part, for this:

1.  The HATS ear does not have a complete representation of the dominant resonance of the ear’s cavum conchae (~3 kHz).

2.  There is a psychoacoustic compensation to auditory stimuli applied in the biological hearing process that adjusts perception of frequency response in a diffuse field.

For this reason, many headphone manufacturers, loudspeaker designers, and handset/phone producers apply diffuse field equalization when performing measurements using HATS (see standard ITU-T P.58).

HATS manufacturers typically provide diffuse field frequency responses that are subtracted from a measured response on a HATS ear with no other filtering/EQ applied to be “Diffuse Field Equalized”. One can also measure/create a diffuse field response to create an EQ easily in their own laboratory.

Microsoft has elected to use this equalization for any ear measurements within this specification.

### Example Diffuse Field Frequency Response

The graph below describes an example HATS Diffuse Field Frequency Response in 1/3 octave:

![whatever](images/speechplatform9.png)

The table below describes the same HATS Diffuse Field Frequency Response that would be subtracted from a measured response on HATS ear (without any other EQ/compensation applied):

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Frequency (Hz)</th>
<th>Response (dB)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>20</p></td>
<td><p>-0.47</p></td>
</tr>
<tr class="even">
<td><p>25</p></td>
<td><p>-0.54</p></td>
</tr>
<tr class="odd">
<td><p>31.5</p></td>
<td><p>-0.50</p></td>
</tr>
<tr class="even">
<td><p>50</p></td>
<td><p>-0.69</p></td>
</tr>
<tr class="odd">
<td><p>63</p></td>
<td><p>-0.59</p></td>
</tr>
<tr class="even">
<td><p>80</p></td>
<td><p>-0.40</p></td>
</tr>
<tr class="odd">
<td><p>100</p></td>
<td><p>-0.32</p></td>
</tr>
<tr class="even">
<td><p>125</p></td>
<td><p>-0.43</p></td>
</tr>
<tr class="odd">
<td><p>160</p></td>
<td><p>0.03</p></td>
</tr>
<tr class="even">
<td><p>200</p></td>
<td><p>0.19</p></td>
</tr>
<tr class="odd">
<td><p>250</p></td>
<td><p>0.10</p></td>
</tr>
<tr class="even">
<td><p>315</p></td>
<td><p>0.56</p></td>
</tr>
<tr class="odd">
<td><p>400</p></td>
<td><p>0.54</p></td>
</tr>
<tr class="even">
<td><p>500</p></td>
<td><p>1.35</p></td>
</tr>
<tr class="odd">
<td><p>630</p></td>
<td><p>1.66</p></td>
</tr>
<tr class="even">
<td><p>800</p></td>
<td><p>2.61</p></td>
</tr>
<tr class="odd">
<td><p>1000</p></td>
<td><p>3.45</p></td>
</tr>
<tr class="even">
<td><p>1250</p></td>
<td><p>4.29</p></td>
</tr>
<tr class="odd">
<td><p>1600</p></td>
<td><p>5.73</p></td>
</tr>
<tr class="even">
<td><p>2000</p></td>
<td><p>7.93</p></td>
</tr>
<tr class="odd">
<td><p>2500</p></td>
<td><p>10.58</p></td>
</tr>
<tr class="even">
<td><p>3150</p></td>
<td><p>14.17</p></td>
</tr>
<tr class="odd">
<td><p>4000</p></td>
<td><p>14.78</p></td>
</tr>
<tr class="even">
<td><p>5000</p></td>
<td><p>13.92</p></td>
</tr>
<tr class="odd">
<td><p>6300</p></td>
<td><p>11.91</p></td>
</tr>
<tr class="even">
<td><p>8000</p></td>
<td><p>9.80</p></td>
</tr>
<tr class="odd">
<td><p>10000</p></td>
<td><p>10.24</p></td>
</tr>
<tr class="even">
<td><p>12500</p></td>
<td><p>11.89</p></td>
</tr>
<tr class="odd">
<td><p>16000</p></td>
<td><p>8.79</p></td>
</tr>
<tr class="even">
<td><p>20000</p></td>
<td><p>9.23</p></td>
</tr>
</tbody>
</table>

 

### Echo Attenuation Calculation

The echo attenuation calculation is performed per ITU-T G.122, Clause B.4. The measurement for this requirement applies for 100-12000Hz due to the bandwidth of the microphone input and the nature of game sound/content being played back by the earpiece. Note that the standards typically will only define up to 6700 or 7000 Hz for TCLw.

### Measurement

The echo attenuation measurement shall be first conducted as follows:

1.  Drive the earpiece with a -10 dBFS (-20 dBV) continuous sweep.

2.  Measure the input response via the microphone, and express as 1/12<sup>th</sup> Octave

3.  Express input response in dBFS (i.e. if measuring dBV, dBFS = dBV + 22)

4.  Calculate the ratio of output to input (both units in dBFS) vs. frequency to get loss

### Calculation

The formula for calculating echo is as follows:

![whatever](images/speechplatformequation12.png)

Where:

-   N is the number of frequency bands analyzed

-   L<sub>ab</sub> is the ratio of output to input (dB) calculated by subtracting input response from test signal level at each frequency band (computed in measurement above)

-   A<sub>i</sub> is the power ratio of output to input for the i<sup>th</sup> band (of N bands), calculated as follows:

    ![whatever](images/speechplatformequation13.png)

## Appendix B: References


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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Cortana%20Device%20Test%20Setup%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




