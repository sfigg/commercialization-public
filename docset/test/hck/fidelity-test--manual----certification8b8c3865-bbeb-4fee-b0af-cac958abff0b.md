---
author: joshbax-msft
title: Fidelity Test (Manual) - Certification
description: Fidelity Test (Manual) - Certification
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d6bf0a7d-46ca-4664-9d45-f1a47697bcd3
---

# Fidelity Test (Manual) - Certification


This manual test verifies that an audio device meets the Windows Certification Program requirements for a high-fidelity audio playback/recording experience.

The test verifies hardware audio fidelity by using an Audio Precision (AP) System Two or AP2700 Series analog analyzer and analog generator.

**Note**  
If you are using an AP System Two analyzer/generator, you must also use an S-AES17 "Special Lowpass filter".

 

You can use this test to export a signed copy of the log. You can import this copy in subsequent runs. You do not have to conduct these subsequent runs in physical proximity to the AP analyzer/generator. The pass/fail result of the subsequent runs will be the same as the initial exporting run.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Audio.Base.DCOffset Device.Audio.Base.Fidelity Device.Audio.Base.TipRing</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~25 minutes</p></td>
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

In addition, this test requires the following items:

-   Two test computers, one test computer containing the test audio device (referred to as the System under Test \[SUT\]) and one test computer that acts as the AP host.

-   AP System Two analyzer/generator

**Note**  
In some cases, the fidelity test will determine that it is not necessary to run against a particular device (for example, when the device has no external jacks). In this case, an AP system is not required, but a second computer is still necessary to be identified as a “dummy” AP host.

 

Before you run this test, you should set up the following connections:

-   The AP host is connected to the AP analyzer/generator in compliance with the AP manual.

-   The AP host and the system under test (SUT) are connected to a common LAN.

-   The SUT stereo line-out jack or speaker jack is connected to dual BNC unbalanced analog inputs on the AP analyzer as follows:

    -   Left Channel (tip connector) connects to Channel A on the AP analyzer.

    -   Right Channel (ring connector) connects to Channel B on the AP analyzer.

-   The SUT stereo line-in jack or microphone jack is connected to dual BNC unbalanced analog outputs on the AP generator as follows:

    -   Left Channel (tip connector) connects to Channel A on the AP generator.

    -   Right Channel (ring connector) connects to Channel B on the AP generator.

**Note**  
Previous versions of the Fidelity test required changing the default format from 44,100 Hertz (Hz) to 48,000 Hz. This is no longer necessary, because the Fidelity test now plays in exclusive mode.

 

In addition, this test requires the following software and hardware.

-   APWIN or AP2700 software.

-   AP System Two or AP2700 Series analyzer that is connected to an AP host. For more information, see the Audio Precision Machine Requirements section of the [Audio Fidelity Testing](http://go.microsoft.com/fwlink/p/?LinkId=229297)page.

-   Audio cables that connect the test system to the AP analyzer: stereo 3.5-mm male on the computer end and dual mono BNC male on the AP analyzer end. We recommend shielded cables to reduce interference with the audio signal. We recommend four cables: two for capture and two for render.

**Note**  
This test involves these files that are included in the Windows HCK: FidelityTest.dll, Sndanlyz.dll, Rws.exe, FidelityTestApp.exe, Wttlog.dll, and SetDevicePower.exe.

 

When you are running the test, follow this procedure:

1.  Make sure that APWIN or AP2700 software is installed on the AP host in compliance with the AP manual.

2.  Previous versions of the Fidelity test required adding firewall exceptions. This is no longer necessary, because FidelityTest.dll adds the firewall exceptions when the **Regsvr32** tool is run on it, and FidelityTestApp.exe adds the firewall exceptions when it is run.

3.  If the test computers include a third-party firewall, then the SUT and AP host must be configured as follows:

    -   On the SUT there must be a firewall exclusion to allow the Fidelitytestapp.exe (located at *&lt;testbinroot&gt;*\\nttest\\multimediatest\\avcore\\audio\\wdk) to receive incoming traffic on port 135.

    -   On the AP Host, there must be a firewall exclusion to allow the dllhost.exe (located at *&lt;windir&gt;*\\system32) to receive incoming traffic on port 135.

4.  Log in the same user on both computers. Note the following:

    -   If the computers are on a domain, the user should be a domain user.

    -   If the computers are not on domain, use the same user name and password on both computers.

    -   The user must be in the Administrators group on both computers.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Audio Testing](troubleshooting-audio-testing.md).

This test can fail and display the following error: "Process returned error code -1". To understand the cause of the failure, review the system activity \*.log file in the C:\\WTT\\JobsWorkingDir\\Tasks\\*&lt; GUID &gt;* folder on the test computer immediately after the test fails. One possible cause of this error is that the Standard VGA graphics driver is installed instead of the featured driver from the vendor of the graphics card.

For more information about how to connect the AP analyzer to the AP host computer, see the Audio Precision SYS-2722A Audio Analyzer Getting Started Guide (available from the [AP website](http://go.microsoft.com/fwlink/p/?LinkId=229298)) and the documentation that came with the AP analyzer.

## More information


The Fidelity test verifies that the audio device meets the Windows Certification Program requirements for a high-fidelity audio playback/recording experience. To verify the playback experience, the test plays a tone that is analyzed by an AP analyzer that is connected to the analog output jack of the system. (A second computer, the AP host, runs APWIN or AP2700 software and controls the AP analyzer.) The coordination between the test system and the analyzer occurs over the local network. To verify the recording experience, the test plays a tone from the AP generator that is connected to the analog input jack of the system.

The Fidelity test takes the following measurements on analog outputs:

-   **Output level.** The test plays a digital full-scale signal and verifies that it meets the Full-Scale Output Voltage requirement in the Windows Certification Program Device Fidelity Requirements.

-   **Dynamic range.** The test takes a noise floor measurement in the presence of a signal in compliance with AES17 and verifies that the measurement meets the Dynamic Range requirement in the Windows Certification Program Device Fidelity Requirements.

-   **Total harmonic distortion plus noise (THD+N).** The test takes a THD+N measurement and verifies the measurement in compliance with the Windows Certification Program Device Fidelity Requirements.

-   **Magnitude response.** The test measures the frequency response of the device and verifies that it meets the Magnitude Response requirement in the Windows Certification Program Device Fidelity Requirements.

-   **Phase delay.** The test measures the interchannel phase delay and verifies that it meets the requirements.

-   **System activity.** The test measures the noise level of the system during system activity (for example, GPU activity and disk activity) and verifies that it meets the requirements.

-   **Skew.** The test plays a high-frequency tone with strong settling parameters and verifies via the analyzer that the fundamental frequency is within the requirement of the expected value.

-   **Power-state transition.** The test measures the noise level of the system during transition to low power and back to normal audio playback.

The Fidelity test also takes the following measurements on analog inputs:

-   **Input level.** The test plays analog signals of varying voltages into the recording jack and attempts to find the voltage that induces a full-scale signal (or equivalent, in compliance with AES6) in the digital domain.

-   **Skew.** The test captures a large sample of a high-frequency tones generated from the analyzer and verifies via digital signal processing (DSP) that the fundamental frequency is within the requirement of the expected value.

-   **THD+N.** The test captures a signal and measures the THD+N via DSP. It then validates that the noise level is lower than the requirement allows.

-   **Dynamic range.** The test captures a signal and takes a noise measurement, and then it verifies that the dynamic range is at least as big as the requirement requires.

-   **Frequency response.** The test captures signals at various frequency levels and verifies that the measured intensity of the signal does not vary more than the requirement allows.

The Fidelity test requires special hardware: an AP System Two or AP2700 Series audio analyzer/generator. For information about the AP analyzer that is used for the Fidelity test, see Audio Precision Machine Requirements.

The Fidelity test evaluates only the following:

-   Analog line-out jacks

-   Analog headphone jacks

-   Analog speaker jacks

-   Analog line-in jacks

-   Analog microphone jacks

The test does not evaluate integrated speakers, integrated microphones, or digital jacks such as S/PDIF or HDMI.

When you are importing, note the following:

-   The AP analyzer/generator is not required. However, when you are running this test under Driver Test Manager (DTM), you still need a second computer for the job to be scheduled. This requirement is because DTM considers this job a two-computer job. Currently, DTM cannot identify a computer as running a two-computer job sometimes and a one-computer job at other times.

-   The Fidelity test checks the audio hardware in the system that is being tested against the audio hardware in the log that is being imported. If they do not match, the import will be rejected and the job will fail.

-   If a High Definition (HD) Audio device has jack presence detection, make sure that the system that is being tested has the same audio endpoints plugged in during import as were plugged in when the export job started. Otherwise, the test might result in an unexpected failure.

To run this test manually, follow these steps:

1.  Make sure that APWIN or AP2700 software is installed on the AP host in compliance with the AP manual.

2.  Copy all binaries to the SUT and the AP host.

3.  Run **Regsvr32** on FidelityTest.dll on both the SUT and the AP host.

4.  If the SUT and the AP Host include a third-party firewall, complete the following:

    -   On the SUT add a firewall exclusion to allow the Fidelitytestapp.exe (located at &lt;testbinroot&gt;\\nttest\\multimediatest\\avcore\\audio\\wdk) to receive incoming traffic on port 135.

    -   On the AP Host add a firewall exclusion to allow the dllhost.exe (located at &lt;windir&gt;\\system32) to receive incoming traffic on port 135.

    **Note**  
    Previous versions of the Fidelity test required adding exceptions to the Windows firewall. This is no longer necessary, because FidelityTest.dll adds firewall exceptions when the **Regsvr32** tool is run on it, and FidelityTestApp.exe adds the firewall exceptions when it is run.

     

5.  "SetDevicePower /conserveidle:2 /performidle:2" to configure the audio device for a short duration for idle time-out.

6.  Log in the same user on both computers. Note the following:

    -   If computers are not on a domain, use the same user name and password on both computers.

    -   If the computers are on a domain, they must be on the same domain. The logged-in user can be either a domain user (the same domain user on both computers) or a local user. A local user must use the same user name and password on both computers.

    -   The user must be in the Administrators group on both computers.

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
<td><p><strong>FidelityTestApp /?</strong></p></td>
<td><p>Shows usage instructions.</p></td>
</tr>
<tr class="even">
<td><p><strong>-FidelityTestApp /import &lt;filename&gt; [ &lt;premium-switches&gt; ] [ &lt;mobile-switches&gt; ] [ -h &lt;device-id&gt; ]</strong></p></td>
<td><p>Imports test results from previously exported file.</p></td>
</tr>
<tr class="odd">
<td><p><strong>FidelityTestApp /aphost &lt;aphostname&gt;&lt;testswitch&gt; [ &lt;premium-switches&gt; ] [ &lt;mobile-switches&gt; ] [ /export &lt;filename&gt; ] [ -h &lt;device-id&gt; ]</strong></p></td>
<td><p>Runs tests by using the AP host computer that <em>&lt;aphostname&gt;</em> specifies.</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;testswitch&gt;</strong></p></td>
<td><p>Can be <strong>/alltests</strong> or a specific test (for more information, see <strong>FidelityTestApp.exe /?</strong>).</p></td>
</tr>
<tr class="odd">
<td><p><strong>&lt;basic-switches&gt;</strong></p></td>
<td><p>Optional. Can be either <strong>/basic</strong> or <strong>/premium</strong> (default is <strong>/basic</strong>).</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;mobile-switches&gt;</strong></p></td>
<td><p>Optional. Can be either <strong>/desktop</strong> or <strong>/mobile</strong> (default is <strong>/desktop</strong>).</p></td>
</tr>
<tr class="odd">
<td><p><strong>&lt;device-id&gt;</strong></p></td>
<td><p>For the device kit only. Consists of the Plug and Play (PnP) hardware ID of the device that is being tested.</p></td>
</tr>
<tr class="even">
<td><p><strong>SetDevicePower</strong></p></td>
<td><p>Displays usage instructions.</p></td>
</tr>
<tr class="odd">
<td><p><strong>SetDevicePower [/conserveidle:&lt;t&gt;] [/powerstate:&lt;x&gt;] [/performidle:&lt;t&gt;]</strong></p></td>
<td><p>Sets the audio device to new power settings, where <em>x</em> is the power state and <em>t</em> is measured in seconds. If a parameter is omitted, it is not changed.</p></td>
</tr>
<tr class="even">
<td><p><strong>SetDevicePower /restore</strong></p></td>
<td><p>Reverts to previous settings from any of the preceding changes.</p></td>
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
<td><p>DevIDParse.vbs</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\audio\wdk</p></td>
</tr>
<tr class="even">
<td><p>Fidelitytestapp.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\audio\wdk</p></td>
</tr>
<tr class="odd">
<td><p>Fidelitytest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\audio\wdk</p></td>
</tr>
<tr class="even">
<td><p>Sndanlyz.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\common</p></td>
</tr>
<tr class="odd">
<td><p>Rws.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\wmmftest</p></td>
</tr>
<tr class="even">
<td><p>SetDevicePower.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\audio\bin</p></td>
</tr>
</tbody>
</table>

 

 

 






