---
title: Speech Platform Input Device Test Setup, version 2.0
description: Provides test guidance of audio input devices intended for use with Microsoft’s Speech Platform.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7B5CB257-C27B-429D-82E9-1205DD4432FD
---

# Speech Platform: Input Device Test Setup, version 2.0


 

![logo](../images/logo-cortana.png)

 

**Microsoft Corporation Technical Documentation License Agreement (Standard)**

 

**READ THIS!** THIS IS A LEGAL AGREEMENT BETWEEN MICROSOFT CORPORATION ("MICROSOFT") AND THE RECIPIENT OF THESE MATERIALS, WHETHER AN INDIVIDUAL OR AN ENTITY ("YOU"). IF YOU HAVE ACCESSED THIS AGREEMENT IN THE PROCESS OF DOWNLOADING MATERIALS ("MATERIALS") FROM A MICROSOFT WEB SITE, BY CLICKING "I ACCEPT", DOWNLOADING, USING OR PROVIDING FEEDBACK ON THE MATERIALS, YOU AGREE TO THESE TERMS. IF THIS AGREEMENT IS ATTACHED TO MATERIALS, BY ACCESSING, USING OR PROVIDING FEEDBACK ON THE ATTACHED MATERIALS, YOU AGREE TO THESE TERMS.
1.  For good and valuable consideration, the receipt and sufficiency of which are acknowledged, You and Microsoft agree as follows:

    -   If You are an authorized representative of the corporation or other entity designated below ("**Company**"), and such Company has executed a Microsoft Corporation Non-Disclosure Agreement that is not limited to a specific subject matter or event ("**Microsoft NDA**"), You represent that You have authority to act on behalf of Company and agree that the Confidential Information, as defined in the Microsoft NDA, is subject to the terms and conditions of the Microsoft NDA and that Company will treat the Confidential Information accordingly;

    -   If You are an individual, and have executed a Microsoft NDA, You agree that the Confidential Information, as defined in the Microsoft NDA, is subject to the terms and conditions of the Microsoft NDA and that You will treat the Confidential Information accordingly; or

    -   If a Microsoft NDA has not been executed, You (if You are an individual), or Company (if You are an authorized representative of Company), as applicable, agrees: (a) to refrain from disclosing or distributing the Confidential Information to any third party for five (5) years from the date of disclosure of the Confidential Information by Microsoft to Company/You; (b) to refrain from reproducing or summarizing the Confidential Information; and (c) to take reasonable security precautions, at least as great as the precautions it takes to protect its own confidential information, but no less than reasonable care, to keep confidential the Confidential Information. You/Company, however, may disclose Confidential Information in accordance with a judicial or other governmental order, provided You/Company either (i) gives Microsoft reasonable notice prior to such disclosure and to allow Microsoft a reasonable opportunity to seek a protective order or equivalent, or (ii) obtains written assurance from the applicable judicial or governmental entity that it will afford the Confidential Information the highest level of protection afforded under applicable law or regulation. Confidential Information shall not include any information, however designated, that: (i) is or subsequently becomes publicly available without Your/Company's breach of any obligation owed to Microsoft; (ii) became known to You/Company prior to Microsoft's disclosure of such information to You/Company pursuant to the terms of this Agreement; (iii) became known to You/Company from a source other than Microsoft other than by the breach of an obligation of confidentiality owed to Microsoft; or (iv) is independently developed by You/Company. For purposes of this paragraph, "Confidential Information" means nonpublic information that Microsoft designates as being confidential or which, under the circumstances surrounding disclosure ought to be treated as confidential by Recipient. "Confidential Information" includes, without limitation, information in tangible or intangible form relating to and/or including released or unreleased Microsoft software or hardware products, the marketing or promotion of any Microsoft product, Microsoft's business policies or practices, and information received from others that Microsoft is obligated to treat as confidential.

2.  You may review these Materials only (a) as a reference to assist You in planning and designing Your product, service or technology ("Product") to interface with a Microsoft Product as described in these Materials; and (b) to provide feedback on these Materials to Microsoft. All other rights are retained by Microsoft; this agreement does not give You rights under any Microsoft patents. You may not (i) duplicate any part of these Materials, (ii) remove this agreement or any notices from these Materials, or (iii) give any part of these Materials, or assign or otherwise provide Your rights under this agreement, to anyone else.

3.  These Materials may contain preliminary information or inaccuracies, and may not correctly represent any associated Microsoft Product as commercially released. All Materials are provided entirely "AS IS." To the extent permitted by law, MICROSOFT MAKES NO WARRANTY OF ANY KIND, DISCLAIMS ALL EXPRESS, IMPLIED AND STATUTORY WARRANTIES, AND ASSUMES NO LIABILITY TO YOU FOR ANY DAMAGES OF ANY TYPE IN CONNECTION WITH THESE MATERIALS OR ANY INTELLECTUAL PROPERTY IN THEM.

4.  If You are an entity and (a) merge into another entity or (b) a controlling ownership interest in You changes, Your right to use these Materials automatically terminates and You must destroy them.

5.  You have no obligation to give Microsoft any suggestions, comments or other feedback ("Feedback") relating to these Materials. However, any Feedback you voluntarily provide may be used in Microsoft Products and related specifications or other documentation (collectively, "Microsoft Offerings") which in turn may be relied upon by other third parties to develop their own Products. Accordingly, if You do give Microsoft Feedback on any version of these Materials or the Microsoft Offerings to which they apply, You agree: (a) Microsoft may freely use, reproduce, license, distribute, and otherwise commercialize Your Feedback in any Microsoft Offering; (b) You also grant third parties, without charge, only those patent rights necessary to enable other Products to use or interface with any specific parts of a Microsoft Product that incorporate Your Feedback; and (c) You will not give Microsoft any Feedback (i) that You have reason to believe is subject to any patent, copyright or other intellectual property claim or right of any third party; or (ii) subject to license terms which seek to require any Microsoft Offering incorporating or derived from such Feedback, or other Microsoft intellectual property, to be licensed to or otherwise shared with any third party.

6.  Microsoft has no obligation to maintain confidentiality of any Microsoft Offering, but otherwise the confidentiality of Your Feedback, including Your identity as the source of such Feedback, is governed by Your NDA.

7.  This agreement is governed by the laws of the State of Washington. Any dispute involving it must be brought in the federal or state superior courts located in King County, Washington, and You waive any defenses allowing the dispute to be litigated elsewhere. If there is litigation, the losing party must pay the other party's reasonable attorneys' fees, costs and other expenses. If any part of this agreement is unenforceable, it will be considered modified to the extent necessary to make it enforceable, and the remainder shall continue in effect. This agreement is the entire agreement between You and Microsoft concerning these Materials; it may be changed only by a written document signed by both You and Microsoft.

![](../images/logo-lca.gif)

 

## <a href="" id="section-0-disclaimer"></a>SECTION 0 | DISCLAIMER


**Disclaimer**: This document is provided "as-is". Information and views expressed in this document, including URL and other Internet website references, may change without notice. Some information relates to pre-released products which may be substantially modified before commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. You bear the risk of using it.

Some examples depicted herein are provided for illustration only and are fictitious. No real association or connection is intended or should be inferred.

All recommendations and criteria within this document are approximate guidelines only, and not guarantees of speech recognition performance for all devices under real-world conditions. Speech recognition is a complex machine learning process, imperfect by nature. It is not guaranteed that Cortana and Speech Recognition will work well for your device, even if all premium recommendations are met.

## Definitions


The following acronyms and definitions are used in this specification.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>TITLE</th>
<th>DEFINITION</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ANSI</strong></p></td>
<td><p>American National Standards Institute</p></td>
</tr>
<tr class="even">
<td><p><strong>BGN</strong></p></td>
<td><p>Background Noise</p></td>
</tr>
<tr class="odd">
<td><p><strong>DAW</strong></p></td>
<td><p>Digital Audio Workstation</p></td>
</tr>
<tr class="even">
<td><p><strong>dB(A) or dBSPL(A)</strong></p></td>
<td><p>decibels Sound Pressure Level, A-Weighted</p>
<p>Where level = <img src="../images/spd-test-image004.png" />, <img src="../images/spd-test-image005.png" /> μPa. A-Weighting per IEC 61672:2003 standard.</p></td>
</tr>
<tr class="odd">
<td><p><strong>dBFS (or dBov)</strong></p></td>
<td><p>Decibel full scale = <img src="../images/speechplatformequation15.png" alt="whatever" /> where <img src="../images/spd-test-image007.png" /> <em>S<sub>ref</sub></em> = the RMS of a full scale digital sine wave.</p>
<p>The signal level of a digital signal relative to its overload or maximum level is given by dBov. This is also commonly referred to as dBFS (Full Scale).</p>
<p>For example, a rectangular function with only the positive or negative maximum number has a level of 0 dBov; For a maximum scale digital sine signal the peak level is 0 dBov and RMS is -3.01 dBov. (ITU-T G.100.1).</p></td>
</tr>
<tr class="even">
<td><p><strong>DUT</strong></p></td>
<td><p>Device Under Test</p></td>
</tr>
<tr class="odd">
<td><p><strong>ETSI</strong></p></td>
<td><p>European Telecommunications Standards Institute</p></td>
</tr>
<tr class="even">
<td><p><strong>HATS</strong></p></td>
<td><p>Head and Torso Simulator - described in ITU-T Recommendation P.58</p></td>
</tr>
<tr class="odd">
<td><p><strong>HMD</strong></p></td>
<td><p>Head Mounted Device (e.g., headsets, virtual reality or augmented reality headsets)</p></td>
</tr>
<tr class="even">
<td><p><strong>IEC</strong></p></td>
<td><p>International Electrotechnical Commission</p></td>
</tr>
<tr class="odd">
<td><p><strong>IHV</strong></p></td>
<td><p>Independent Hardware Vendor</p></td>
</tr>
<tr class="even">
<td><p><strong>ITU</strong></p></td>
<td><p>International Telegraph Union</p>
<p>UN agency for information and communication standards</p></td>
</tr>
<tr class="odd">
<td><p><strong>KWS</strong></p></td>
<td><p>Key Word Spotter</p></td>
</tr>
<tr class="even">
<td><p><strong>LA</strong><sub><strong>eq</strong></sub></p></td>
<td><p>Equivalent Continuous Sound Pressure Level, A-Weighted, evaluated over time, containing the same energy as the time-varying sound.</p></td>
</tr>
<tr class="odd">
<td><p><strong>LRP</strong></p></td>
<td><p>Listener Reference Point</p>
<p>The position of a user's ear relative, and subsequently, measurement microphone for a device under test. If HATS is used, this is the drum reference point.</p></td>
</tr>
<tr class="even">
<td><p><strong>MRP</strong></p></td>
<td><p>Mouth Reference Point</p>
<p>Location 25mm in front of the lip plane of the artificial mouth, and location in which speech level is calibrated.</p></td>
</tr>
<tr class="odd">
<td><p><strong>SLM</strong></p></td>
<td><p>Sound Level Meter</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="section-1-purpose"></a>SECTION 1 | PURPOSE


The Speech Platform is used to power all of the speech experiences in Windows 10 such as Cortana and Dictation.

This document provides testing setup recommendations for audio input devices intended for use with Microsoft's Speech Platform.

Recommendations provided are limited to design parameters that directly influence:

1.  Speech Recognition Accuracy and
2.  Behavior of Speech Processing Algorithms.

The recommendations in this document *are not part of a logo program, nor are required for device certification*. Instead, the contents of this document are intended to provide helpful guidelines and best practices for device design.

## <a href="" id="section-2-test-conditions"></a>SECTION 2 | TEST CONDITIONS


The test conditions define the environment parameters and equipment capabilities recommended when measuring devices according to the Speech Platform Input Device Recommendations. Note that the test equipment and test environment defined in the [Skype Lync Unified HW v2](http://download.microsoft.com/download/1/D/0/1D0E0CEB-2B30-4303-B3B2-70E331491FB1/Skype_Lync_Unified_Specifications_V2.zip) Specification is sufficient for this testing.

## Test Equipment


The following test equipment is needed in order to perform the test cases described by **Device.SpeechRecognition** and **Device.VoiceActivationOEM**:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test Equipment</th>
<th>Recommendation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Mouth Simulator</p></td>
<td><p>Compliant with ITU-T P.51, +Amplifier and EQ as needed</p></td>
</tr>
<tr class="even">
<td><p>Measurement Microphone / SLM</p></td>
<td><p>Minimum Type 2 (ANSI S1.4) / Class 2 (IEC 61672)</p></td>
</tr>
<tr class="odd">
<td><p>Background Noise (BGN) System</p></td>
<td><p>Compliant with ETSI EG 202 396-1</p></td>
</tr>
<tr class="even">
<td><p>Multichannel USB Audio Interface</p></td>
<td><p>Measurement-grade. See Appendix B for examples.</p></td>
</tr>
</tbody>
</table>

 

A reference list of equipment sufficient for the recommendations can be found in Appendix B.

The general connections and signal flow for the test equipment is shown in the following figure.

![](../images/spd-test-image008.png)

## Test Environment


For tests performed against `Device.SpeechRecognition` and `Device.VoiceActivationOEM`, an ETSI room as specified in [Skype-Lync Unified Custom HW Section 5.8](http://download.microsoft.com/download/1/D/0/1D0E0CEB-2B30-4303-B3B2-70E331491FB1/Skype_Lync_Unified_Specifications_V2.zip) (which is based on [ETSI EG 202 396-1 (Section 6)](http://www.etsi.org/deliver/etsi_eg/202300_202399/20239601/01.02.02_60/eg_20239601v010202p.pdf)) and as defined in the following table is recommended.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test Environment</th>
<th>Recommendation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Dimensions</strong></p></td>
<td><p><strong>Min</strong>: 2.7m x 3.7m, <strong>Max</strong>: 3.5m x 4.4m, <strong>Height:</strong>&gt; 2.2m</p></td>
</tr>
<tr class="even">
<td><p><strong>Noise Floor</strong></p></td>
<td><p><strong>Target</strong>&lt; 28 dBSPL(A), <strong>Max</strong> 35 dBSPL(A)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Reverberation Time</strong></p></td>
<td><p>0.4s &lt; <strong>RT60</strong>&lt; 0.7s average in Octave Bands, [100-8000Hz]</p></td>
</tr>
</tbody>
</table>

 

For tests performed against **Device.Audio.Acoustics**, an anechoic chamber as specified in [ITU-T P.341, Section 4](https://www.itu.int/rec/T-REC-P.341/en) is recommended.

## <a href="" id="section-3-test-signals"></a>SECTION 3 | TEST SIGNALS


The test signals are provided by Microsoft unless noted otherwise for test against this specification.

## Test Signals and Levels


The test signals and calibration levels required to perform **Device.SpeechRecognition** and **Device.VoiceActivationOEM** test cases are listed in the table below:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Stimulus</th>
<th>Generator</th>
<th>Stimulus Level</th>
<th>Filename</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Mouth Calibration</strong></p></td>
<td><p>Mouth Sim.</p></td>
<td><p>89 dB(A) @ MRP</p></td>
<td><p><em>CleanTalk-Calibration5min-ShapedPinkNoise.wav</em></p></td>
</tr>
<tr class="even">
<td><p><strong>Speech Input</strong></p></td>
<td><p>Mouth Sim.</p></td>
<td><p><strong>Near Field</strong>: 89 dB(A) @ MRP</p>
<p><strong>Far Field</strong>: 99 dB(A) @ MRP, 4m</p>
<p><strong>-or-</strong></p>
<p>95 dB(A) @ MRP tested at 2m</p></td>
<td><p><em>CleanTalkPlayback20min.wav</em></p></td>
</tr>
<tr class="odd">
<td><p><strong>KWS Input</strong></p></td>
<td><p>Mouth Sim.</p></td>
<td><p><strong>Near Field</strong>: 89 dB(A) @ MRP</p>
<p><strong>Far Field</strong>: 99 dB(A) @ MRP, 4m</p>
<p><strong>-or-</strong></p>
<p>95 dB(A) @ MRP tested at 2m</p></td>
<td><p><em>KeywordSpotting_En_US-Female.wav</em></p>
<p><em>KeywordSpotting_En_US-Male.wav</em></p>
<p><em>KeywordSpotting_Ja_JP-Female.wav</em></p>
<p><em>KeywordSpotting_Ja_JP-Male.wav</em></p></td>
</tr>
<tr class="even">
<td><p><strong>Echo Playback</strong></p></td>
<td><p>DUT Speakers</p></td>
<td><p><strong>Near Field:</strong> 70 dB(A) @ LRP*</p>
<p><strong>Far Field</strong>: 70 dB(A) @ 0.8m*</p>
<p><strong>Head Mounted Device:</strong> 76 dB(A) @ HATS Drum Reference Point</p></td>
<td><p><em>SpeechRecognitionMusic.wav</em></p></td>
</tr>
<tr class="odd">
<td><p><strong>Ambient Noise</strong></p></td>
<td><p>BGN System</p></td>
<td><p>57 dB(A) @ DUT</p></td>
<td><p>Cafeteria, Pub from:</p>
<p>[ETSI ES 202 396-1](http://aka.ms/es202-396-1)</p></td>
</tr>
</tbody>
</table>

 

\* Devices that cannot meet 70 dB(A) @ LRP must be set to maximum volume and be able to reach 64 dB(A) minimum to be able to pass.

The background noise files (Cafeteria, Pub) can be found at: <http://docbox.etsi.org/stq/Open/EG%20202%20396-1%20Background%20noise%20database/Binaural_Signals/>

## <a href="" id="section-4-test-positions"></a>SECTION 4 | TEST POSITIONS


**The DUT shall be placed relative to the MRP and LRP, during all tests, in what is deemed to be a typical ("normal") scenario/use case. However, the minimum distance for a typical tablet/laptop is to be 50cm.**

The IHV owns the scenarios for their device. The recommendations here are intended to provide the IHV with guidelines to validate their device against speech recognition functionality. *Each device only needs to be evaluated against one chosen test position and associated requirements (near field standard, near field premium or far field premium)*, though IHVs may find use in experimenting with various positions.

Scenario definition includes considerations like the following:

-   Distance of MRP to microphone (array)
-   Orientation of MRP to microphone (array)
-   Placement of the boom arm on headset devices
-   Coverage/pressure of the earpiece(s) on the ear simulators for headset devices
-   Location of loudspeaker(s) relative to the microphones and HATS
-   Device placement environment e.g., on a table, in free air, on a TV, on a HATS

For additional guidance on typical device usage modality and test setups, reference Section 5 in the Skype / Lync Audio Specification <http://technet.microsoft.com/office/dn788953>.

## <a href="" id="standard-near-field-0-5m-test-positions"></a>Standard Near Field (0.5m) Test Positions


Laptop or similar devices shall be positioned on a tabletop surface relative to MRP as shown below:

![](../images/spd-test-image009.png)

For webcam devices tested as standard near field category, the following setup shall be used, with the constraint that the height of the monitor that the webcam rests upon is no taller than 50cm and the webcam is centered in its typical resting position on top of the screen (e.g., a 27" monitor is recommended).

![](../images/spd-test-image010.png)

In order to test echo scenarios, stereo speakers are required. However, they must not be separated any further than 76cm from inner edge to inner edge. For best results, low distortion, high bandwidth speakers (e.g., Neumann KH120) are recommended that are driven by a test PC with a low latency interface (e.g., Surface Pro 4 headset jack "line out" to self-powered speakers such as the Neumann KH120). The SDNR recommendations as described in Audio.Acoustics within the Speech Platform Recommendations may be used to assess suitability for measurement.

![](../images/spd-test-image011.png)

## <a href="" id="premium-near-field-0-8m-test-positions"></a>Premium Near Field (0.8m) Test Positions


When choosing to test laptops against the premium near-field specification, the test setup shall be as below, with the test distance of 80cm aligned with the hinge fulcrum of the laptop/detachable PC:

![](../images/spd-test-image012.png)

All-in-One or Desktop PCs with integrated microphone arrays shall be tested at a distance of 80cm from MRP and LRP to the front of the display, on a table as shownin the following figure.

![](../images/spd-test-image013.png)

For webcam devices tested as premium near field category, the following setup shall be used, with the constraint that the height of the monitor that the webcam rests upon is no taller than 50cm and the webcam is centered in its typical resting position on top of the screen (e.g., a 27" monitor is recommended).

![](../images/spd-test-image014.png)

In order to test echo scenarios, stereo speakers are required. However, they must not be separated any further than 76cm from inner edge to inner edge. For best results, low distortion, high bandwidth speakers (e.g., Neumann KH120) are recommended that are driven by a test PC with a low latency interface (e.g., Surface Pro 4 headset jack "line out" to self-powered speakers such as the Neumann KH120). The SDNR recommendations as described in Audio.Acoustics within the Speech Platform Recommendations may be used to assess suitability for measurement.

![](../images/spd-test-image015.png)

## Head Mounted Devices


An ITU-T P.58 compliant HATS is recommended for testing Head Mounted Devices (HMDs).

Headsets and Head Mounted Devices will be placed on HATS and adjusted to resemble, as closely as possible, the positioning on a real human. For movable microphones (e.g., "booms"), the microphone should be placed as close as the design will reasonably allow to MRP.

For headset devices, the earpiece should be coupled with the HATS ear in a typical wearing position with an effort to center the earpiece over the drum reference point and maintain a seal around the pinna.

![](../images/spd-test-image016.png)

For Virtual/Augmented Reality devices, the device should be placed as per a normal wearing position. It is recommended that the tester provide a means of documenting or marking the wearing position on HATS as to ensure repeatability.

![](../images/spd-test-image017.png)

## Premium Far Field (4m) Devices


Far field (i.e., 4m) devices such as integrated mic arrays in a screen device, mic arrays which sit on top of a screen or surface shall be tested as shown below, with the test distance from MRP and LRP to the front plane of the screen or mic array at 4m.

![](../images/spd-test-image018.png)

The specification defines test cases for devices intended for use in far field (i.e., 4m) conditions. As many test environments may not be sufficiently large to test in 4m, a 2m test distance can be used with test signals/levels adjusted to simulate a 4m test distance as described. The test setup when using the 2m (simulated 4m) test setup is simply modified as shown in the following figure.

![](../images/spd-test-image019.png)

## FA Test Setup Topology


The recommended setup for conducting false accept (FA) testing is illustrated in the following diagram. The device is centered in the table as described per device categories in previous sections.

![](../images/spd-test-image020.png)![](../images/spd-test-image021.png)

## Test Room Setup Topology


The recommended test setup for background noise and test table positions are shown in the following figures.

**Top View:**

![](../images/spd-test-image022.png)

The side view of BGN test setup and microphone calibration position:

![](../images/spd-test-image023.png)

## <a href="" id="section-5-calibration-procedure"></a>SECTION 5 | CALIBRATION PROCEDURE


The following section contains the procedure to calibration for testing a device against the `Device.SpeechRecognition` and `Device.VoiceActivationOEM` recommendations. The procedure for calibrating for `Device.Audio.Acoustics` recommendations is at the discretion of the tester, with the caveat that the test equipment and environment should be compliant with the recommendations in Section 2.

## Equipment Calibration


Complete the checklist of calibration tasks shown in the following table before proceeding with individual tests in the next section.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Calibration Item</th>
<th>Procedure</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>✓ Measurement Microphone (or SLM)</strong></p></td>
<td><p>Per manufacturer guidelines; evaluate against expected sensitivity</p></td>
</tr>
<tr class="even">
<td><p><strong>✓ Verify Noise Floor</strong></p></td>
<td><p>Using Measurement Microphone or SLM:</p>
<ol>
<li><p>Capture at least 30s recording of noise floor</p></li>
<li><p>Evaluate LA<sub>eq</sub>, as described in Section 2:</p>
<ul>
<li>Target &lt; 28 dB(A), Max &lt; 35 dB(A)</li>
</ul></li>
</ol></td>
</tr>
<tr class="odd">
<td><p><strong>✓ Equalize Mouth Simulator</strong></p></td>
<td><p>Different test setups may accomplish equalization in different ways (i.e., built-in routines, HW EQ units, pre-equalized mouth simulators).</p>
<p>Equalization is recommended to be verified to be ± 0.5 dB per 3<sup>rd</sup> Octave Band, when measured @ MRP from 100-8000Hz.</p></td>
</tr>
<tr class="even">
<td><p><strong>✓ Normalize Mouth Simulator Level</strong></p></td>
<td><ol>
<li>Place calibrated microphone or SLM @ MRP, using the correct angle of incidence as specified by the manufacturer</li>
<li>Play <em>CleanTalkCalibration5min-ShapedPinkNoise.wav</em> via the equalized mouth simulator</li>
<li>Measure the average level over 10-15s</li>
<li>Adjust the output of the mouth to reach 89 +/- 0.5 dBSPL(A)</li>
</ol></td>
</tr>
<tr class="odd">
<td><p><strong>✓ Background Noise Calibration</strong></p></td>
<td><p>The procedure for set up and calibration of BGN in [ETSI ES 202 396-1](http://aka.ms/es202-396-1) Section 5.2 is recommended.</p>
<ol>
<li>As illustrated in Section 4, position the measurement microphone pointing upwards and centered 30 cm above any test tables or MRP height for HMD test cases.</li>
<li>Ensure the height of the noise playback speakers is adjusted so that their acoustic center matches the height of the measurement microphone diaphragm.</li>
<li>Capture</li>
</ol>
<p>Adjust the DUT volume control until LA<sub>eq</sub> = Level from Section 3 (defined by scenario) ± 0.5 dBA @ LRP, or the volume control has been maximized.</p></td>
</tr>
<tr class="even">
<td><p><strong>✓ Echo Level Calibration</strong></p></td>
<td><p>Echo must be calibrated for <code>Device.SpeechRecognition.EchoNoise</code>, and is measured at the Listener Reference Point (LRP). LRP position relative to the DUT is dependent on the test scenario chosen for the device type, as indicated in Section 5:</p>
<ol>
<li>Position the measurement microphone at LRP</li>
<li>Play <em>SpeechRecognitionMusic.wav</em>, increasing averaging time on the measurement mic (or SLM) until the level is steady</li>
<li>Adjust the DUT volume control until LA<sub>eq</sub> = Level from Section 3 (defined by scenario) ± 0.5 dBA @ LRP, or the volume control has been maximized.</li>
</ol></td>
</tr>
</tbody>
</table>

 

## <a href="" id="section-6-measurement-procedure"></a>SECTION 6 | MEASUREMENT PROCEDURE


The following section contains the procedure to for testing a device against the **Device.SpeechRecognition** and **Device.VoiceActivationOEM** recommendations. The test procedure for evaluating a device against the **Device.Audio.Acoustics** recommendations is at the discretion of the tester, with the caveat that the test equipment and environment should be compliant with the recommendations in Section 2.

## <a href="" id="selecting-a-test-script-for-device-speechrecognition"></a>Selecting a Test Script for Device.SpeechRecognition


The **OEMverificationx86** application is a tool that indicates which test script the system is currently configured to use. The tool is used as follows:

1.  Copy the Speech Platform Tools to the test PC
2.  Run **OEMverificationx86.exe** at a command prompt
3.  Under the output parameter "*Pipeline Indication:"*, one of two configurations will be indicated:

    1.  "*OEM provided expected to be used*" --&gt; use **OEMPipelineRecord20min.cmd** script
    2.  "*Microsoft expected to be used*" --&gt; use **MicrosoftPipelineRecord20min.cmd** script

For evaluating results against the **Device.SpeechRecognition** recommendations, the 20-minute pipeline recording scripts should be used. Additionally, 5-minute and 3-minute scripts are provided for test setup verification or experiments to be conducted at the discretion of the tester, but are not intended for final evaluations.

**OEMPipelineRecord** is intended to be used with devices that provide custom audio signal processing. **MicrosoftPipelineRecord** is intended to be used with devices that will utilize Microsoft's built-in audio signal processing.

## <a href="" id="device-speechrecognition-quiet-test-procedure"></a>Device.SpeechRecognition.Quiet | Test Procedure


Ensure that the test device is in an environment recommended by Section 2, and has been set up according to the test position guidelines in Section 4. Ensure that the mouth simulator has been equalized and calibrated per the recommendations in Section 5.

*Levels: Mouth Simulator 89 dBSPL(A) @ MRP*

1.  On the DUT PC, run **OEMPipelineRecord20min.cmd** or **MicrosoftPipelineRecord20min.cmd**, as determined from the test script selection above.
2.  Initiate playback of the Speech Input File "*CleanTalkPlayback20min.wav*" via mouth simulator from the Playback PC, within 1-2s of starting test the script.
3.  The script will generate processed audio waveforms that can be analyzed with the scoring utility tool.
4.  Repeat the test for 0 degree (on-axis) and 50 degree rotations (off-axis) of the DUT.

 

## <a href="" id="device-speechrecognition-mediumambientnoise-test-steps"></a>Device.SpeechRecognition.MediumAmbientNoise | Test Steps


Ensure that the test device is in an environment recommended by Section 2, and has been set up according to the test position guidelines in Section 4. Ensure that the mouth simulator and BGN system has been equalized and calibrated per the recommendations in Section 5.

*Levels: Mouth simulator 89 dBSPL(A) @ MRP, Ambient Noise Playback 57 dBSPL(A) @ DUT*

1.  On the DUT PC, run **OEMPipelineRecord20min.cmd** or **MicrosoftPipelineRecord20min.cmd**, as determined from the test script selection above.
2.  Initiate playback of the Speech Input File "*CleanTalkPlayback20min.wav"* via mouth simulator from the Playback PC (within 1-2s of starting test the script) **AND** playback of the background noise file. **NOTE: Ensure that the start of the background noise file is started after the alignment chirp that occurs in the first 2s of the speech input file!**
3.  The script will generate processed audio waveforms that can be analyzed with the scoring utility tool.
4.  Repeat the test for 0 degree (on-axis) and 50 degree rotations (off-axis) of the DUT.

## <a href="" id="device-speechrecognition-echomusic-quiet-test-steps"></a>Device.SpeechRecognition.EchoMusic.Quiet | Test Steps


Ensure that the test device is in an environment recommended by Section 2, and has been set up according to the test position guidelines in Section 4. Ensure that the mouth simulator has been equalized and calibrated per the recommendations in Section 5.

Ensure that the volume control of the test device is set to output a level at LRP ± 0.5 dBSPL(A) the recommend level defined in Section 3 per scenario when playing back "*SpeechRecognitionMusic.wav*". The speech platform performance shall be evaluated against only one scenario, thus the LRP position will correspond to the scenario chosen and test setup guideline as recommended in Section 4.

**If a device is unable to meet the desired output level at LRP, the maximum level possible should be used and the resulting measured level recorded and noted.**

*Levels*: Mouth simulator 89 dBSPL(A) @ MRP, Ambient Noise *OFF*, Echo Music per Section 3 @ LRP

1.  On the DUT PC, run **OEMPipelineRecord20min.cmd** or **MicrosoftPipelineRecord20min.cmd**, as determined from the test script selection above.
2.  Initiate playback of the Speech Input File "*CleanTalkPlayback20min.wav"* via mouth simulator from the Playback PC (within 1-2s of starting test the script) **AND** playback of the echo music "*SpeechRecognitionMusic.wav*". **NOTE: Ensure that the start of the echo file is started after the alignment chirp that occurs in the first 2s of the speech input file!**
3.  The script will generate processed audio waveforms that can be analyzed with the scoring utility tool.
4.  Repeat the test for 0 degree (on-axis) and 50 degree rotations (off-axis) of the DUT.

## <a href="" id="device-speechrecognition-echomusic-mediumambientnoise-test-steps"></a>Device.SpeechRecognition.EchoMusic.MediumAmbientNoise | Test Steps


Ensure that the test device is in an environment recommended by Section 2, and has been set up according to the test position guidelines in Section 4. Ensure that the mouth simulator and BGN system has been equalized and calibrated per the recommendations in Section 5.

Ensure that the volume control of the test device is set to output a level at LRP ± 0.5 dBSPL(A) the recommend level defined in Section 3 per scenario when playing back "*SpeechRecognitionMusic.wav*". The speech platform performance shall be evaluated against only one scenario, thus the LRP position will correspond to the scenario chosen and test setup guideline as recommended in Section 4.

**If a device is unable to meet the desired output level at LRP, the maximum level possible should be used and the resulting measured level recorded and noted.**

*Levels: Mouth simulator 89 dBSPL(A) @ MRP, Ambient Noise 57 dBSPL(A) @ DUT, Echo Music per Section 3 @ LRP*

1.  On the DUT PC, run **OEMPipelineRecord20min.cmd** or **MicrosoftPipelineRecord20min.cmd**, as determined from the test script selection above.
2.  Initiate playback of the Speech Input File "*CleanTalkPlayback20min.wav"* via mouth simulator from the Playback PC (within 1-2s of starting test the script) **AND** playback of the echo music "*SpeechRecognitionMusic.wav*" **AND** playback of the background noise file. **NOTE: Ensure that the start of the echo file and BGN file is started after the alignment chirp that occurs in the first 2s of the speech input file!**
3.  The script will generate processed audio waveforms that can be analyzed with the scoring utility tool.
4.  Repeat the test for 0 degree (on-axis) and 50 degree rotations (off-axis) of the DUT.

## <a href="" id="generating-device-speechrecognition-test-results"></a>Generating Device.SpeechRecognition Test Results


The Speech Platform scoring utility must be installed to generate test results from the processed and recorded data. Please consult the readme.txt packaged with the scoring utility for execution instructions.

## <a href="" id="configuring-kws-for-device-voiceactivationoem"></a>Configuring KWS for Device.VoiceActivationOEM


The tests defined for **Device.VoiceActivationOEM** are conducted using the same test setup, levels, and positions as **Device.SpeechRecognition**, with the difference being that the input speech file and command script are different.

**To configure the DUT PC**

1.  Set up the DUT PC with Cortana signed in to a test account
2.  Enable "Hey Cortana" in settings
3.  Ensure that the system language settings match the intended language for test (EN-US for US English, Ja-JP for Japanese and installation of speech packs, etc.).
4.  Copy the KWSDevice folder and content on to the DUT PC, e.g., C:\\KWSDevice

Select the speech input files and corresponding command scripts from the following four options, depending on the specific scenario being recorded:

1.  EN-US English Female Speaker:

    -   KeywordSpotting\_En\_US-Female.wav
    -   KeywordSpotterCapture\_EnUS\_Female.cmd

2.  EN-US English Male Speaker:

    -   KeywordSpotting\_En\_US-Male.wav
    -   KeywordSpotter\_Capture\_EnUS\_Male.cmd

3.  Ja-JP Japanese Female Speaker:

    -   KeywordSpotting\_Ja\_JP-Female.wav
    -   KeywordSpotterCapture\_JaJP\_Female.cmd

4.  Ja-JP Japanese Male Speaker:

    -   KeywordSpotting\_Ja\_JP-Male.wav
    -   KeywordSpotterCapture\_Ja-JP\_Male.cmd

Each Audio Sample is 4-5 minutes long, and each recording script is set up to record sufficient audio with a small amount of extra time for lead-in. Ensure that the correct script is used for the audio sample being played back.

## <a href="" id="device-voiceactivationoem-quiet-test-procedure"></a>Device.VoiceActivationOEM.Quiet | Test Procedure


Ensure that the test device is in an environment recommended by Section 2, and has been set up according to the test position guidelines in Section 4. Ensure that the mouth simulator has been equalized and calibrated per the recommendations in Section 5.

*Levels: Mouth Simulator 89 dBSPL(A) @ MRP*

1.  On the DUT PC, run the scenario command script, as determined from the test script selection above.
2.  Initiate playback of the corresponding Speech Input File via mouth simulator from the Playback PC, within 1-2s of starting test the script.
3.  The script will generate voice recognition accuracy data.
4.  Repeat the test for 0 degree (on-axis) and 50 degree rotations (off-axis) of the DUT.

## <a href="" id="device-voiceactivationoem-mediumambientnoise-test-steps"></a>Device.VoiceActivationOEM.MediumAmbientNoise | Test Steps


Ensure that the test device is in an environment recommended by Section 2, and has been set up according to the test position guidelines in Section 4. Ensure that the mouth simulator and BGN system has been equalized and calibrated per the recommendations in Section 5.

*Levels: Mouth simulator 89 dBSPL(A) @ MRP, Ambient Noise Playback 57 dBSPL(A) @ DUT*

1.  On the DUT PC, run the scenario command script, as determined from the test script selection above.
2.  Initiate playback of the corresponding Speech Input File via mouth simulator from the Playback PC (within 1-2s of starting test the script) **AND** playback of the background noise file. **NOTE: Ensure that the start of the background noise file is started after the alignment chirp that occurs in the first 2s of the speech input file!**
3.  The script will generate voice recognition accuracy data.
4.  Repeat the test for 0 degree (on-axis) and 50 degree rotations (off-axis) of the DUT.

## <a href="" id="device-voiceactivationoem-echomusic-quiet-test-steps"></a>Device.VoiceActivationOEM.EchoMusic.Quiet | Test Steps


Ensure that the test device is in an environment recommended by Section 2, and has been set up according to the test position guidelines in Section 4. Ensure that the mouth simulator has been equalized and calibrated per the recommendations in Section 5.

Ensure that the volume control of the test device is set to output a level at LRP ± 0.5 dBSPL(A) the recommend level defined in Section 3 per scenario when playing back "*SpeechRecognitionMusic.wav*". The speech platform performance shall be evaluated against only one scenario, thus the LRP position will correspond to the scenario chosen and test setup guideline as recommended in Section 4.

**If a device is unable to meet the desired output level at LRP, the maximum level possible should be used and the resulting measured level recorded and noted.**

*Levels*: Mouth simulator 89 dBSPL(A) @ MRP, Ambient Noise *OFF*, Echo Music per Section 3 @ LRP

1.  On the DUT PC, run the scenario command script, as determined from the test script selection above.
2.  Initiate playback of the Speech Input File "*CleanTalkPlayback20min.wav"* via mouth simulator from the Playback PC (within 1-2s of starting test the script) **AND** playback of the echo music "*SpeechRecognitionMusic.wav*". **NOTE: Ensure that the start of the echo file is started after the alignment chirp that occurs in the first 2s of the speech input file!**
3.  The script will generate voice recognition accuracy data.
4.  Repeat the test for 0 degree (on-axis) and 50 degree rotations (off-axis) of the DUT.

## <a href="" id="device-voiceactivationoem-echomusic-mediumambientnoise-test-steps"></a>Device.VoiceActivationOEM.EchoMusic.MediumAmbientNoise | Test Steps


Ensure that the test device is in an environment recommended by Section 2, and has been set up according to the test position guidelines in Section 4. Ensure that the mouth simulator and BGN system has been equalized and calibrated per the recommendations in Section 5.

Ensure that the volume control of the test device is set to output a level at LRP ± 0.5 dBSPL(A) the recommend level defined in Section 3 per scenario when playing back "*SpeechRecognitionMusic.wav*". The speech platform performance shall be evaluated against only one scenario, thus the LRP position will correspond to the scenario chosen and test setup guideline as recommended in Section 4.

**If a device is unable to meet the desired output level at LRP, the maximum level possible should be used and the resulting measured level recorded and noted.**

*Levels: Mouth simulator 89 dBSPL(A) @ MRP, Ambient Noise 57 dBSPL(A) @ DUT, Echo Music per Section 3 @ LRP*

1.  On the DUT PC, run the scenario command script, as determined from the test script selection above.
2.  Initiate playback of the corresponding Speech Input File via mouth simulator from the Playback PC (within 1-2s of starting test the script) **AND** playback of the echo music "*SpeechRecognitionMusic.wav*" **AND** playback of the background noise file. **NOTE: Ensure that the start of the echo file and BGN file is started after the alignment chirp that occurs in the first 2s of the speech input file!**
3.  The script will generate voice recognition accuracy data.
4.  Repeat the test for 0 degree (on-axis) and 50 degree rotations (off-axis) of the DUT.

## <a href="" id="appendix-a-references"></a>Appendix A | References


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
<td><p><strong>ETSI EG 202 396-1</strong></p></td>
<td><p>[http://www.etsi.org/deliver/etsi_ES/202300_202399/20239601/01.04.01_60/ES_20239601v010401p.pdf](http://www.etsi.org/deliver/etsi_ES/202300_202399/20239601/01.04.01_60/ES_20239601v010401p.pdf)</p></td>
</tr>
<tr class="even">
<td><p><strong>Skype Lync Unified HW v2</strong></p></td>
<td><p>[https://technet.microsoft.com/office/dn788953.aspx](https://technet.microsoft.com/office/dn788953.aspx)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Speech Platform Input Device Recommendations</strong></p></td>
<td><p>Provided to Windows Licensees</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="appendix-b-reference-test-equipment"></a>Appendix B | Reference TEST EQUIPMENT


The following appendix lists examples of test equipment that fulfils the recommendations. Two categories are provided:

-   Budget — examples of robust and cost-effective solutions
-   Premium — measurement grade solutions also suitable for anechoic measurements, and commonly used in product certification standards such as Skype-Lync Unified HW. Typically provided with calibration certificates.

This list is subject to change at the discretion of Microsoft and is not intended to be comprehensive. Note that any test equipment should be calibrated according to manufacturer's guidelines.

## Reference Equipment List


Test Equipment
Budget
Premium
Mouth Simulator

NTI Talkbox

B&K 4227A, 4128C (HATS)

GRAS 44AB

HEAD acoustics HMS II.3 or II.6 (HATS)

Measurement Microphone / SLM

**SLM:** NTI XL2 + M2230, Norsonic Nor130 series

B&K 4189-4191, 4955

GRAS 46AC/M, AE/F, AN/Z

+Conditioning Amplifiers/Pre-amplifiers

Background Noise (BGN) System

4x Neumann KH120

Multichannel USB Audio Interface

RME Fireface 802, HDSP or equivalent

HEAD acoustics MFE VI.1

Webcam Speakers

2x Neumann KH120

Webcam Monitor

27" Display

Webcam PC

Surface Pro 4 (Headset Jack interface)

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Speech%20Platform:%20Input%20Device%20Test%20Setup,%20version%202.0%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




