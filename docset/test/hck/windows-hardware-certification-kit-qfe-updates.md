---
author: joshbax-msft
title: Windows Hardware Certification Kit QFE Updates
description: Windows Hardware Certification Kit QFE Updates
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 25f02f52-0384-4e07-a097-88d5e9d3d942
---

# Windows Hardware Certification Kit QFE Updates


Quick Fix Engineering (QFE) updates are included as part of the Windows Hardware Certification Kit (HCK) download. To get the latest QFEs for the Windows HCK, run HCKSetup.exe.

The Windows HCK download includes all previous QFE updates.

In this topic:

-   [Which version of the Windows HCK do I have?](#version)

-   [How do I install the QFE?](#install)

-   [Windows HCK for Windows 8.1 RTM QFE list](#win81rtmlist)

    -   [QFE Update 014 (Build ID: 8.100.27024)](#qfe-81-rtm-014)

    -   [QFE Update 013 (Build ID: 8.100.26984)](#qfe-81-rtm-013)

    -   [QFE Update 012 (Build ID: 8.100.26905)](#qfe-81-rtm-012)

    -   [QFE Update 011 (Build ID: 8.100.26846)](#qfe-81-rtm-011)

    -   [QFE Update 010 (Build ID: 8.100.26795)](#qfe-81-rtm-010)

    -   [QFE Update 009 (Build ID: 8.100.26699)](#qfe-81-rtm-009)

    -   [QFE Update 008 (Build ID: 8.100.26652)](#qfe-81-rtm-008)

    -   [QFE Update 007 (Build ID: 8.100.26631)](#qfe-81-rtm-007)

    -   [QFE Update 006 (Build ID: 8.100.26121)](#qfe-81-rtm-006)

    -   [QFE Update 005 (Build ID: 8.100.26063)](#qfe-81-rtm-005)

    -   [QFE Update 004 (Build ID: 8.100.26031)](#qfe-81-rtm-004)

    -   [QFE Update 003 (Build ID: 8.100.26011)](#qfe-81-rtm-003)

    -   [QFE Update 002 (Build ID: 8.100.26001)](#qfe-81-rtm-002)

    -   [QFE Update 001 (Build ID: 8.100.25990)](#qfe-81-009)

## <a href="" id="version"></a>Which version of the Windows HCK do I have?


Before you install QFEs for the Windows HCK, first determine if you are already up to date:

1.  On your controller, use Control Panel to go to the **Uninstall a Program** dialog.

2.  You will see **Windows Hardware Certificate Kit** on the list of installed programs. It will have a version number like 8.59.25584

3.  Compare the last five digits of the version number with the QFE list below.

Most QFEs will be optional. This means that you can create submission packages that will be accepted without the QFE installed. If a QFE is required, you will need to install the QFE before you can create submission packages. You should restart any projects you have not completed after you install a QFE.

## <a href="" id="install"></a>How do I install the QFE?


Before you begin installing QFEs on your controller, make sure that you do not have any tests running. Also be sure that all of the open Windows HCK Studio and HCK Manager windows attached to the controller have been closed. If a QFE includes changes to the ARM client, you may also be required to uninstall your ARM clients before you install the QFE. Each QFE will indicate if this is required.

If you’ve already started the process of certifying a device using the HCK for Windows 8.1 Preview, you’ll need to continue to use this version of HCK until your submission is complete.

To install QFEs, rerun HCKsetup.exe by clicking the following link:

![download image](images/downloadbutton.jpg)[Download the Windows HCK for Windows 8.1](http://go.microsoft.com/fwlink/p/?linkid=317577)

**Warning**  
You must always run the latest version of HCKsetup.exe from the internet. As new QFEs are made available, the HCKSetup version is also updated. If you downloaded an older version of HCKsetup and the version of HCKsetup online is a different version, installation will fail.

 

When you run HCKsetup.exe, you are given the option to **Install** or **Download**.

-   If you select **Install** and the Windows HCK is already installed on the machine from which you are running, only the updates that have been released since you last ran setup will be installed.

-   If you select **Download**, you may select to download either **Windows HCK Studio Only** or **Windows HCK Controller + Studio**. The entire set of files required to do a clean installation of the option you select will be downloaded, including all cumulative updates. When you run HCKSetup.exe from the downloaded folder on a machine which already has the Windows HCK installed, only the updates that have been released since you last ran setup will be installed.

    -   For Downloaded **Windows HCK Studio Only**:

        When you run HCKSetup.exe from the downloaded folder, your stand-alone HCK Studio will be updated. No uninstall/reinstall is required.

    -   For Downloaded **Windows HCK Controller + Studio**:

        If the QFE contains updates for the Windows HCK Client, those updates will be automatically pushed out to any x86/x64 clients that are attached to the controller when you run HCKSetup.exe. If they contain changes to the ARM client, you will need to uninstall the ARM client before you install the QFE, then re-install the ARM client after the QFE has been installed to your controller. If the QFE contains updates for the Windows HCK Studio, for a remote installation of Windows HCK Studio that was installed from the Windows HCK Controller's Studio Install share, the next time the user starts Windows HCK Studio they will be informed that an update is available. To install the update, the user will need to uninstall and then reinstall Windows HCK Studio.

**Important**  
After a QFE has been installed, it cannot be uninstalled.

 

After you determine which version of the Windows HCK you have, review the following list of updates to determine whether you would benefit from downloading the latest version of the Windows HCK, which includes all of these updates.

## <a href="" id="win81rtmlist"></a>Windows HCK for Windows 8.1 RTM QFE list


### <a href="" id="qfe-81-rtm-014"></a>QFE Update 014 (Build ID: 8.100.27024)

**Release date**: November 12, 2015

**Optional or required**: Optional

**Description of change**:

-   Added 3 Private Cloud Simulator (optional, system-level) tests to validate cloud-scale reliability for private cloud solutions supporting different types of storage. This test needs 'PCSfiles.vhd' (published as HCK supplemental content) for a successful execution experience.

-   Removed Touch/PTP certification, allowing devices to function in Windows 8.1 without the THQA blob.

### <a href="" id="qfe-81-rtm-013"></a>QFE Update 013 (Build ID: 8.100.26984)

**Release date**: August 11, 2015

**Optional or required**: Optional

**Description of change**:

-   Fixed various signing issues.

-   Fixed an issue where projects could not be created on systems with a large number of devnodes.

-   Fixed an issue where the Connected Standby Duration test was incorrectly categorized as a Certification test.

### <a href="" id="qfe-81-rtm-012"></a>QFE Update 012 (Build ID: 8.100.26905)

**Release date**: December 11, 2014

**Optional or required**: Optional

**Description of change**:

-   Fixed an issue that causes some drivers to fail Authenticode validation which causes an unnecessary driver installation pop-up to appear.

-   Space Creation Test (LOGO) - This test now prints an error message that a minimum of 5 disks is required for creation of a 3 way mirror Space and Storage Pool.

-   Enumeration Test (LOGO) - This fix adds a check to ignore SCSI processor objects from list of drives under an HBA.

-   Scsi Reliability Counters Test - Fixed an issue with reading the threshold/cumulative value counters on the Physical Disk.

-   Fixed an issue with CopyFile tests that prevented them from being run on Windows 8 and previous OS versions.

### <a href="" id="qfe-81-rtm-011"></a>QFE Update 011 (Build ID: 8.100.26846)

**Release date**: August 26, 2014

**Optional or required**: Optional

**Description of change**:

-   D3D11 WGF11TimingData HW FL9.\* and D3D11 WGF11TimingData HW FL\* – Fixed timing issue when using multiple GPUs.

-   ReparsePoints Tests – Fixed a failure in the test.

### <a href="" id="qfe-81-rtm-010"></a>QFE Update 010 (Build ID: 8.100.26795)

**Release date**: June 10, 2014

**Optional or required**: Optional

**Description of change**:

-   SES Test (LOGO) – Removed the need for enclosures to support page 7 requests.

-   CiB Raid Controller Kit Tests – Removed the requirement for more than 1 HBA.

-   Added a test to verify storage space.

-   Storage Performance CS – Optimized for systems with less than 16 GB.

### <a href="" id="qfe-81-rtm-009"></a>QFE Update 009 (Build ID: 8.100.26699)

**Release date**: May 13, 2014

**Optional or required**: Optional

**Description of change**:

-   Changed the following tests to no longer expose 720p and 480p as media types:

    -   Camera Driver Basic Test - Capture Stream - Capture 30 seconds of 720p Video from Capture pin to H264 file (Video Only)

    -   Camera Driver Basic Test - MultiStream (Scenario) - Preview, Record H.264 Video and AAC Audio

    -   Camera Driver Basic Test - MultiStream (Scenario) - Preview, Record H.264 Video and AAC Audio, Take Bitmap Photo

    -   Camera Driver Basic Test - MultiStream (Scenario) - Preview, Record H.264 Video and AAC Audio, Take JPEGXR Photo

    -   Camera Driver Basic Test - MultiStream (Scenario) - Preview, Record VC1 Video and WMA9 Audio

    -   Camera Driver Basic Test - MultiStream (Scenario) - Preview, Record VC1 Video and WMA9 Audio, Take Bitmap Photo

    -   Camera Driver Basic Test - MultiStream (Scenario) - Preview, Record VC1 Video and WMA9 Audio, Take JPEG Photo

    -   Camera Driver Basic Test - MultiStream (Scenario) - Preview, Record WMV9 Video and WMA9 Audio, Take JPEGXR Photo

    -   Camera Driver Functional Test - MultiStream (Scenario) - Preview, Record H.264 Video and AAC Audio

    -   Camera Driver Functional Test - MultiStream (Scenario) - Preview, Record H.264 Video and AAC Audio, Take Bitmap Photo

    -   Camera Driver Functional Test - MultiStream (Scenario) - Preview, Record H.264 Video and AAC Audio, Take JPEGXR Photo

    -   Camera Driver Functional Test - MultiStream (Scenario) - Preview, Record VC1 Video and WMA9 Audio

    -   Camera Driver Functional Test - MultiStream (Scenario) - Preview, Record VC1 Video and WMA9 Audio, Take Bitmap Photo

    -   Camera Driver Functional Test - MultiStream (Scenario) - Preview, Record VC1 Video and WMA9 Audio, Take JPEG Photo

    -   Camera Driver Functional Test - MultiStream (Scenario) - Preview, Record WMV9 Video and WMA9 Audio, Take JPEGXR Photo

-   The following tests were made optional:

    -   Camera Driver Basic Test - Capture Stream - Capture 30 seconds of 720p Video from Capture pin to H264 file (Video Only)

    -   Camera Driver Basic Test - Capture Stream - Capture 30 seconds of 480p Video from Capture pin to H264 file (Video Only)

-   WLAN 802.11 Performance 2.4 GHz - the test skips the 40MHz channel width test if 40MHz is not supported.

-   WLAN 802.11 Performance 5 GHz - the test skips the 5GHz test if 5GHz is not supported. Also, if 5GHz is supported and some of the channel widths are not supported then those tests will be skipped as well.

-   Print Driver Devmode Corruptor Test – fixed issue that prevented v4 drivers from switching to the correct port.

-   Print Driver Devmode Corruptor Test and PrintTicket Test – fixed issue that causes the tests to file if PrintSpy hangs.

-   Fixed an issue where controls were not skipped if it was not supported on the system. The following tests are skipped if the control is not supported:

    -   Camera Driver Functional Test - PhotoSequence - Asyncronously turn on and off burst mode (return event)

    -   Camera Driver Functional Test - PhotoSequence - Asyncronously turn on burst mode (return event)

    -   Camera Driver Functional Test - PhotoSequence - Driver implements and respects the maximum frame rate control

    -   Camera Driver Functional Test - PhotoSequence - Driver is able to return past frames (1)

    -   Camera Driver Functional Test - PhotoSequence - Driver is able to return past frames (4)

    -   Camera Driver Functional Test - PhotoSequence - Driver is able to return past frames (8)

    -   Camera Driver Functional Test - PhotoSequence - Driver respects the advertised preview and capture frame rate and resolution

    -   Camera Driver Functional Test - PhotoSequence - driver supports returning current doable framerate

    -   Camera Driver Functional Test - PhotoSequence - In Photo sequence mode, OS received multiple JPEG frames

    -   Camera Driver Functional Test - PhotoSequence - Photo sequence operation can be run simultaneously with preview (multiple start and stop)

    -   Camera Driver Functional Test - PhotoSequence - Thumbnail support for PhotoSequence frames

    -   Camera Driver Functional Test - PhotoSequence -Uncompressed samples are supported

    -   Camera Driver Functional Test - Webcam Controls - CameraAngleOffset - System Test

    -   Camera Driver Functional Test - Webcam Controls - EvCompensation - System Test

    -   Camera Driver Functional Test - Webcam Controls - Exposure - System Test

    -   Camera Driver Functional Test - Webcam Controls - FieldOfView - System Test

    -   Camera Driver Functional Test - Webcam Controls - FlashMode - System Test

    -   Camera Driver Functional Test - Webcam Controls - FocusMode - System Test

    -   Camera Driver Functional Test - Webcam Controls - ISO - System Test

    -   Camera Driver Functional Test - Webcam Controls - OptimizationHint - System Test

    -   Camera Driver Functional Test - Webcam Controls - Photo Sequence - System Test

    -   Camera Driver Functional Test - Webcam Controls - ROI - System Test

    -   Camera Driver Functional Test - Webcam Controls - SceneMode - System Test

    -   Camera Driver Functional Test - Webcam Controls - TorchMode - System Test

    -   Camera Driver Functional Test - Webcam Controls - Warm Start - System Test

    -   Camera Driver Functional Test - Webcam Controls - WhiteBalance - System Test

### <a href="" id="qfe-81-rtm-008"></a>QFE Update 008 (Build ID: 8.100.26652)

**Caution**  
This QFE has been removed from the Download Center. For more info, see the [Windows Hardware Certification Blog](http://blogs.msdn.com/b/windows_hardware_certification/archive/2014/04/16/hck-qfe-008-for-windows-8-1-has-been-removed-from-the-download-center.aspx). If you install the latest QFE, you will get [QFE Update 007 (Build ID: 8.100.9624)](#qfe-81-007). The packaging error was fixed in QFE Update 009.

 

**Release date**: March 20, 2014

**Optional or required**: Optional

**Description of change**:

-   Windows Touch Test (System) – Removed the Device.Digitizer.Touch.Bezel and System.Client.Tablet.TabletPCRequiredComponents requirements.

-   Installable File System Filter Test – Allow EA on reparse points and to change the size of the USN.

-   D3D11 WGF11 TimingData HW FL - ETW providers were not properly configured, causing too many events to be fired and dropped due to bandwidth. This fix properly configures ETW providers and addresses issues that were causing timestamps to not be reported correctly.

-   PerfX2 D2D Bench Scenarios (may require manual interaction to remove power cord) - The test occasionally hangs or reports false failure, because prior logging wasn't properly stopped. The fix is to properly stop logging before new test case start.

-   When repackaging or merging existing packages, it is possible that log, driver, or supplemental files could be dropped. This can cause submission packages to be rejected or improperly certified.

-   Removed the following features from the Convertible Tablet and Tablet product types: System.Client.Sensor, System.Client.Webcam, System.Client.Webcam.Specification.WNCameraRequirements.

-   Fixed an issue where a mini filter is not detected as an anti-virus and anti-virus test are not selected.

-   ACPI Log Test – Fixed an issue where the test driver incorrectly returns a pointer referencing local stack parameter and this causes bugcheck.

-   Storage Performance USB 3 – Changed the number of outstanding I/Os – Errata 4808.

-   WNGlitchfree HD Video Playback on AC ( Manual on mobile systems ), WNGlitchfree HD Video Playback on DC ( Manual on mobile systems ), WNGlitchfree HD Video Playback on AC with Audio Offload ( Manual on mobile systems ), WNGlitchfree HD Video Playback on DC with Audio Offload ( Manual on mobile systems ), WNGlitchfree HD Video Playback on AC during Connected Standby ( Manual on mobile systems ), WNGlitchfree HD Video Playback on DC during Connected Standby ( Manual on mobile systems ) – Fixed an issue where the test opens the wrong application for audio and video playback as file extensions changed.

-   Windows Recovery Environment Boot Test, Push Button Reset Configuration Test – Fixed an issue where the test could fail when using an older reagent.dll file.

-   Connected Standby IO Stress – Fixed an issue where the test may fail on Baytrail systems.

### <a href="" id="qfe-81-rtm-007"></a>QFE Update 007 (Build ID: 8.100.26631)

**Release date**: March 11, 2014

**Optional or required**: Optional

**Description of change**:

-   Fixed issues that prevented robot automation:

    -   Windows Touch High Resolution Timestamp Test - End interaction time should be between the minimum and maximum verification time, not always the maximum time.

    -   Windows Touch UX Test: Quick Toss Test - Current Robot API settings for the Quick Toss Touch HCK test gives too short of a distance for the robot to accelerate to 20 cm per second and then stop.

    -   Windows Touch UX Test: Keyboard - Keyboard test appears off screen at times and is not clickable.

    -   Windows Touch UX Test: Tile test (Select) - When completing the test with a robot, the robot has to always go down on all tiles but should be allowed to move inward as well.

-   Storage Performance CS - Enables storage performance testing on smaller drives.

-   Fixed an issue where the Windows HCK package files show up incorrectly as a Location Sensor product type.

-   Webcam Performance System Test – Fixed an issue in the test that incorrectly configures the capture pipeline when capture video directly from the encoding streaming. The file media type should match that of the source stream identically.

-   H264 AVC Payload base – The test was incorrectly asking for keyframe before the streaming started. It was fixed by delaying the keyframe request until streaming has started, so that the test will not miss capturing the keyframe buffer.

### <a href="" id="qfe-81-rtm-006"></a>QFE Update 006 (Build ID: 8.100.26121)

**Release date**: February 11, 2014

**Optional or required**: Optional

**Description of change**:

-   Windows ToGo Boot Test - Fixed issue where the test fails due to the test system failure to enter/resume from S4 (hibernate)

-   WindowsToGo Performance Assessment - Fixed issue that causes incorrect performance tests to run

-   System - Sleep and PNP (disable and enable) with IO Before and After (Certification) - Reduced test difficulty and fixed camera enumeration bug in the test that causes false failure while running the System Sleep and PNP tests. This resolves errata 4600.

-   Hiberation tests on the following test suites have been enabled on InstantOn systems that support hibernation:

    NDISTest 6.5 - WLanFUZZTests\_ext

    NDISTest 6.5 - WlanPacketFilters

    NDISTest 6.5 - WlanPerformance

    NDISTest 6.5 - WlanPowerMgmt

    NDISTest 6.5 - WlanRoaming

    NDISTest 6.5 - WlanSoftAPPower

-   Windows Recovery Environment Boot Test and Push Button Reset Configuration Test -- Increased compatibility

-   Removed a file dependency in the following tests:

    BitLocker TPM and Recovery Password tests for non-AOAC devices for Legacy PCRs

    BitLocker TPM and Recovery password tests for NONAOAC devices with PCR\[7\]

    BitLocker TPM +PIN+ USB and Recovery Password tests for NON ARM devices

    DE OOBE\_EOW Sequence Tests

    Storage Performance CS

    Radio Manager - Verify Radio State

-   Fixed "invalid media type" error for the following tests:

    -   MF Video Capture Stress base (Device)

    -   Camera Driver Functional Test - Capture Stream - Capture video to an H264 file, dynamically switching the pin format while recording (System)

    -   Camera Driver Reliability Test - Preview Stream - Preview video from each available type on the preview pin, change types dynamically (System)

    -   MF Basic Preview base - System

-   Made the following tests optional as part of the certification relaxations:

    -   Webcam BasicPerf System (Manual) – Errata 4713

    -   Webcam Sensor Quality System Test - WNCameraRequirements (Manual) – Errata 2782

    -   Webcam Performance System Test – WNCameraRequirements – Errata 2781

    -   Webcam Glitch free record System Test - WNCameraRequirements (Manual) – Errata 2779

    -   Webcam Min Resolution for integrated cameras – Errata 2780

    -   MF Camera Capture System Test – No Errata Issued

-   Webcam Performance System Test - Updated test to use less memory during ETW event collection for low memory systems.

-   Storage Performance CS -- Enabled storage performance testing on smaller drives

### <a href="" id="qfe-81-rtm-005"></a>QFE Update 005 (Build ID: 8.100.26063)

**Release date**: December 10, 2013

**Optional or required**: Optional

**Description of change**: 8.100.26063

-   Removed the MUTT (Microsoft USB Test Tool) requirement for Windows 7, Windows Server 2008 R2 and other operating systems where MUTT is not applicable.

-   Fixes an issue in WGF11TimingData.exe that prevents High Performance Timing Data from running.

### <a href="" id="qfe-81-rtm-004"></a>QFE Update 004 (Build ID: 8.100.26031)

**Release date**: November 12, 2013

**Optional or required**: Optional

**Description of change**:

-   W - HCK - WGFVidMMWDDM1\_2 - OfferReclaim - FL10.0 - Access Violation. The test responds with an access violation because it doesn't check for NULL pointer in some cases. The test is now fixed to check for a NULL.

-   WHEA- Fixed an issue that prevented the test from running and displaying an error "wheahct.exe - System Error - The program can't start because bcd.dll is missing from your computer. Try reinstalling the program to fix this problem."

-   Windows To Go HCK Boot and Performance tests - Fixed an issue that prevented the tests from running on Windows 8.

-   WHCK Signed Driver Check (CheckLogo) passes when pre-production signed driver is used. Test is fixed to check for an Intermediate CA on the certificate.

### <a href="" id="qfe-81-rtm-003"></a>QFE Update 003 (Build ID: 8.100.26011)

**Release date**: October 1, 2013

**Optional or required**: Optional

**Description of change**:

-   FSVP Test – This is a new test which will be enforced with requirement System.Client.PowerManagement.BatteryLife.

-   Windows Touch Resolution Test – Fixes an issue where running these tests on portrait first devices in landscape orientation will fail the tests.

-   WiFi Direct Scenario Tests - OIDs, Statistics and Additional IEs – Fixes an issue with the test exiting unexpectedly with exit code c0000409.

-   Webcam Performance System Test – WNCameraRequirements – fixes an issue where the test may fail with no log due to a crash while running the test.

-   Webcam BasicPerf System (Manual) – This QFE fixes a bug in the audio streaming library used by the test caused very end of an audio stream to be dropped, making it impossible to calculate the latency.

-   Webcam Glitch free record System Test - WNCameraRequirements (Manual) – This QFE fixes a bug in the audio streaming library used by the test caused very end of an audio stream to be dropped, making it impossible to calculate the latency. Also the detection of video frames was not accurate on some systems making it impossible to pass the test.

-   ScatterGather(SYSTEM) – Test logic corrected to finish up all the writes before validation phase

-   The P2PApplication used in WFA WPS certification was too strict in its timing requirements during the certification test. Test timing requirements are being relaxed in order to pass the WPS certification test. This affects the WFA certification requirement for wlan.

-   This change fixes an issue where the test fails with "Callback received event status 0x80004002 (E\_NOINTERFACE) for event 1 (MEError)" on Windows 8.

    WMV Playback DXVA test 32

    H264 Playback DXVA test 1

    WMV Playback DXVA test 32

-   This fix narrows the time window in which audio glitches are accounted for, focusing on strictly playback glitches and avoiding false failures.

    Full Trace Gatherer for WNGlitchfree HD Video Playback on DC during Connected Standby (Manual on mobile systems)

    Full Trace Gatherer for WNGlitchfree HD Video Playback on AC during Connected Standby (Manual on mobile systems)

    Full Trace Gatherer for WNGlitchfree HD Video Playback on DC (Manual on mobile systems)

    Full Trace Gatherer for WNGlitchfree HD Video Playback on AC (Manual on mobile systems)

    Full Trace Gatherer for WNGlitchfree HD Video Playback on DC with Audio Offload (Manual on mobile systems)

    Full Trace Gatherer for WNGlitchfree HD Video Playback on AC with Audio Offload (Manual on mobile systems)

    WNGlitchfree HD Video Playback on DC during Connected Standby (Manual on mobile systems)

    WNGlitchfree HD Video Playback on AC during Connected Standby (Manual on mobile systems)

    WNGlitchfree HD Video Playback on DC (Manual on mobile systems)

    WNGlitchfree HD Video Playback on AC (Manual on mobile systems)

    WNGlitchfree HD Video Playback on DC with Audio Offload (Manual on mobile systems)

    WNGlitchfree HD Video Playback on AC with Audio Offload (Manual on mobile systems)

-   FSVP Test and Connected Standby Duration Test – This change will mark both FSVP and Connected Standby Duration test as part of the Reliability (L3) category. These tests will no longer appear as Certificaton (L4).

-   HCK Thermal Test – This change fixes issues with the HCK Thermal test that were incorrectly failing machines.

-   System - Sleep and PNP (disable and enable) with IO Before and After (Certification) – Fixes an issue which was causing false failures due to Driver Verifier settings.

-   DF - Sleep and PNP (disable and enable) with IO Before and After (Certification)System - Sleep and PNP (disable and enable) with IO Before and After (Certification)This change fixes a crash in the test.

-   PerfX2 D2D Bench Scenarios (may require manual interaction to remove power cord) – Fixes an issue that prevents graphics test from disabling GPU processor-stepping.

-   Camera Driver Functional Test - MultiStream (Scenario) - Preview, Record H.264 Video and AAC Audio, Take Bitmap Photo – This change fixes an issue where cameras that don't support record + photo can incorrectly fail.

-   HCK documentation update.

### <a href="" id="qfe-81-rtm-002"></a>QFE Update 002 (Build ID: 8.100.26001)

**Release date**: September 17, 2013

**Optional or required**: Optional

**Description of change**:

-   The display gatherer incorrectly assigns the type of a device when the feature query failed, resulting a failure to populate features on Windows-7. This QFE fixes this issue by ignoring the failure on Windows 7 as the feature is not available on it.

-   The following tests are fixed to address an issue where D3 transition time was calculated incorrectly.

    HybridPowerManagement\_AppIdle

    HybridPowerManagement\_AppIdelMonitorOff

    HybridPowerManagement\_AppRunning

    HybridPowerManagement\_AppRunningMonitorOff

    HybridPowerManagement\_NoApp

    HybridPowerManagement\_NoAppMonitorOff

-   Test.StaticValidation – Fixed an issue where a test will fail if device is attached to XHCI USB 3.0 controller.

-   Hardware Offload of Audio Processing Test – Certification – The EOS test case has been fixed so that it provides the correct results which will allow for better regression testing.

-   The HCK Studio to crashes while reverting old filters before applying updated filters. This QFE fixes the issue.

-   WiFi Direct Scenario Tests - ReInvoke Stress – Fixes an issue with the disconnect event not being sent which causes the test to fail.

-   CS Duration Test – This test reads battery capacity before entering CS incorrectly, leading to discrepancies of up to 1% of the battery capacity. This QFE fixes the issue by using precise battery data.

### <a href="" id="qfe-81-009"></a>QFE Update 001 (Build ID: 8.100.25990)

**Release date**: September 4, 2013

**Optional or required**: Optional

**Description of change**:

-   Connected Standby IO Stress – The test system may not wake back up during quick connected standby testing. Manually pressing the power button works around the issue and allows the test to continue.

-   Fixed issue in the following tests where data didn’t make it into cache.

    Hybrid Cache Performance Test (LOGO)

    Hybrid Information Cache Verification Test (LOGO

    Hybrid Information Command Test (LOGO)

    Hybrid Information Read-Write Test (LOGO)

    Hybrid Tagged Performance Test (LOGO)

-   Wireless Display Frame Quality – Fixes issue with test for wireless display drivers that produce variable bit rate video streams.

-   PNPSurpriseRemoveAndRestartDevice – This test update fixes a potential memory leak that prevents the webcam/camera from being properly removed during the surprise removal test.

-   WHCK Client System Gatherer – Fixes an issue that caused the gatherer to record SUT maximum memory as 0 when the server supports 4TB or more.

-   WGF11 L9NativeStaging – Fixes issue that causes the test to fail on some CPUs due to not meeting performance expectations.

-   VMQStressTest – The test hits a debugger break in the ndprot630.sys test driver. This fixes the break.

## <a href="" id="win81list"></a>Windows HCK for Windows 8.1 Preview QFE list


### <a href="" id="qfe-81-008"></a>QFE Update 008 (Build ID: 8.100.9627)

**Release date**: August 20, 2013

**Optional or required**: Optional

**Description of change**:

-   Multipath I-O Test (LOGO) – This fixes an issue where the test will sometimes throw exception C0000005 (access violation) when running on iSCSI target.

-   Fingerprint Reader Logo Tests - This fix ensures that the storage adapter tests run as expected on fingerprint readers that have on-chip storage.

-   NVMe Queue Pause Resume test – This fixes an issue where the test fails with Diskio processes not able to do IO and reports false failures.

-   Connected Standby Stress with Driver Verifier's Concurrency Stress (Logo) – The change in this fix is to help with triaging Connected Standby problem when the test fails.

-   Device Power State Transition Test (System) – This fixes false failures in device state transitions due to SimBatt utility unloading before all of its threads are complete.

-   Connected Standby Duration Test – Fixed the issue where the drain percentage per hour is incorrectly calculated.

-   DE Perf Settings Test – The test has to be updated to test the actual registry values recommended by Microsoft. This will help to narrow down issues faster.

-   SCSI Compliance Test (LOGO) – VERIFY (10) and VERIFY (16) command test cases no longer send incorrect data transfer length to the device.

-   WGF11 SharedResources FL9.1 – This corrects a test bug which prevented FL9 test cases from running on 10+ hardware.

-   Wireless Display Verify Mode Change WHCK test – The test change makes a fix to delay the refresh rate observation until after the display change effects of stabilized.

-   Wireless Display Verify \* WHCK Tests – This change disables some system processes while wireless display jobs are running to avoid high CPU usage by system processes. A reboot is required to restart the processes.

-   Wireless Display Verify \* WHCK Tests – This change disables some system processes while wireless display jobs are running to avoid high CPU usage by system processes. A reboot is required to restart the processes.

-   The following tests will fail if the DXGK\_POWER\_COMPONENT\_MEMORY\_REFRESH component is in Active state when all engines are Idle because of allocation locked in video memory. This QFE fixes this issue.

    HybridPowerManagement\_AppIdle

    HybridPowerManagement\_AppIdelMonitorOff

    HybridPowerManagement\_AppRunning

    HybridPowerManagement\_AppRunningMonitorOff

    HybridPowerManagement\_NoApp

    HybridPowerManagement\_NoAppMonitorOff

-   The following tests reuse the same audio render streaming object for multiple streams. This change fixes an issue where the second and later stream on a given object false-fails with E\_POINTER

    Fidelity Test

    DF – Reinstall with IO Before and After

    DF – Sleep and PNP (disable and enable) with IO Before and After

    DF – Sleep with IO During

-   The following tests use an event parsing library that had support for up to 32 logical CPUs. With this QFE, this library will support up to 640 logical CPUs.

    AutoMemoryBenchmark

    PerfX2 D2D Bench Scenarios

    PerfX2 DImage Scenarios

    PerfX2 IE10 Scenarios

-   DF – Concurrent Hardware And Operating System (CHAOS) Test – This fix updates the audio plugin to check for device invalidation and treat it differently than stuck I/O to prevent hanging.

-   Hardware Offloading of Audio Processing Test – This fix ensures that if RAW mode is not supported, the test skips rather than false fails.

-   The following tests will retry running failed test cases and the end result will only have those failures that are reproducible on run again.

    DXGI HybridPresent

    DXGI HybridPresent (FL9.1)

    DXGI HybridPresent - PnPStop

    DXGI HybridPresent - PnPStop (FL9.1)

    Hybrid - Independent Driver Update (Integrated GPU)

    Hybrid - Independent Driver Update (Discrete GPU)

    DXGI HybridPresent (WoW64)

    DXGI HybridPresent (FL9.1)(WoW64)

-   Wireless Display Frame Quality Test – This test is updated to ensure that the display is in duplicate mode when running the test. The test also sets the resolution to 1080p, if it is supported.

-   Windows Touch Resolution Test - This fix allows the test to run on portrait first devices in landscape orientation without resulting in a false failure.

-   The following tests updated an issue where multiple encoders were accessing the same D3D engine from multiple threads incorrectly, causing potential crashes.

    H264 Encoder HMFT VisVal test 801

    H264 Encoder HMFT VisVal test 851

    H264 Encoder HMFT VisVal test 852

    H264 Encoder HMFT VisVal test 853

-   The following tests were updated to fix an issue to correct a four byte offset in the received MAC address which results in a malformed MAC address for certain Wi-Fi Direct tests.

    WiFi Direct Data Performance Tests NoAP SingleChannel

    WiFi Direct Data Performance Tests PreAP24 SingleBand SingleChannel

    WiFi Direct Data Performance Tests PreAP5 MultiBand MultiChannel

    WiFi Direct Data Performance Tests PreAP5 SingleBand MultiChannel

    WiFi Direct Performance Test GONegotiation PeerFinder

    WiFi Direct Performance Test Invitation PeerFinder

    WiFi Direct Performance Test JoinExistingGO WFDPlatform

    WiFi Direct Scenario Tests - Airplane Mode

    WiFi Direct Scenario Tests - Basic

    WiFi Direct Scenario Tests - BasicPlus

    WiFi Direct Scenario Tests - OIDs, Statistics and Additional IEs

    WiFi Direct Scenario Tests - Pairing Stress

    WiFi Direct Scenario Tests - Power Transition

    WiFi Direct Scenario Tests - ReInvoke Stress

-   Screen Rotation Perf Test – Fixes failure resulting in message "Animation Rotation event took X milliseconds to complete. It is required to complete within Y milliseconds"

-   The following tests were fixed to address an issue with the four Wi-Fi Direct Data Performance Tests to correct a problem when packets are received out of order during performance measurements.

    WiFi Direct Data Performance Tests NoAP SingleChannel

    WiFi Direct Data Performance Tests PreAP24 SingleBand SingleChannel

    WiFi Direct Data Performance Tests PreAP5 MultiBand MultiChannel

    WiFi Direct Data Performance Tests PreAP5 SingleBand MultiChannel

    WLAN Wake – NLO Discovery – Functional. Fixed an issue where the test may fail to connect to the network based on timing conditions before the test starts.

-   These tests are fixed to detect Push Button Reset and Windows RE misconfigurations.

    Windows Recovery Environment Boot Test

    Push Button Reset Configuration Test

### <a href="" id="qfe-81-007"></a>QFE Update 007 (Build ID: 8.100.9624)

**Release date**: August 13, 2013

**Optional or required**: Optional

**Description of change**:

-   Check Thermal Zones – The fix is to make "SetupDiGetDeviceProperty failed: 490" log an information one, instead of an error. The fix also addresses the error: "Fan(s) did not change their states" by having two idle periods (sandwiching the heavy workload period) to give the fan a chance to turn off.

-   Fingerprint Reader Logo Tests – This fix ensures that basic mode devices will pass all the logo tests when engineOnDevice capability is set to FALSE and advanced mode devices will pass all the logo tests when engineOnDevice is set to TRUE.

-   Smart Card Logo Tests – This fix ensures that customers can pass all test cases.

-   Pan Zoom VSync WHCK Test – This test has been updated to be DPI Aware. This fixes false failures in performance tests due to DPI being scaled.

-   WGF11 Resource Access – This fix allows the test to continue running after failure rather than aborting the remainder of the test.

-   Wireless Display Verify Sink Failed To Set Mode – The test replies with "failed to set mode" message on very first M4 message without verifying that the message contains set mode request. This fix eliminates the false failure.

-   Wireless Display Verify Mode Change WHCK Test – This test has been fixed to ensure that failure in the subset tests do not cause the following tests to abort and fail.

-   The display gatherer incorrectly assigns the type of a device when the feature query failed, resulting in a failure to populate features on Windows-7. This QFE fixes this issue by ignoring the failure on Windows-7 as the feature is not available on it.

-   The fix for the following tests addresses intermittent failure during setup task execution:

    DXGI SCDest Buffer (D3D10.1 on feature levels 9.1-10.1)

    DXGI SCDest Buffer (D3D11 on feature levels 9.1 and 10.0)

    DXGI GDI Interop D3D10.1

    DXGI GDI Interop D3D11

-   WGF11 Render Targets – This test has been fixed to address a failure that would occur when the test would run a format that isn't supported by the driver.

-   Webcam Sensor Quality System Test - WNCameraRequirements (Manual) – This change allows the user to run the test at a distance greater than 600mm.

-   Webcam Sensor Quality System Test - WNCameraRequirements (Manual) – This change allows the test to differentiate between front and back cameras.

-   Power state transitions during streaming can cause a deadlock in the driver, and a bugcheck. The fixes to the following tests works around the issue by skipping streaming during power state transitions.

    DF - Concurrent Hardware And Operating System (CHAOS) Test (Certification)

    DF - Sleep with IO During (Certification)

-   This change lowers the passing threshold of the test metric to ensure test fails only for perceivable video quality issues.

    MPO Quality Test - 1080p source to 1280x720 surface

    MPO Quality Test - 1080p source to 1920x1080 surface

    MPO Quality Test - 720p source to 1280x720 surface

    MPO Quality Test - 720p source to 1920x1080 surface

    MPO Quality Test - 720x480 source to 1280x720 surface

    MPO Quality Test - 720x480 source to 1440x1080 surface

    MPO Quality Test - 720x480 source to 1920x1080 surface

    MPO Quality Test - 720x480 source to 960x720 surface

-   WindowsToGo Device Basics Test – This fix allows makers of WindowsToGo Composite devices to pass the WindowsToGo Device Basics Test.

-   All sensor device types with the exception of GPS sensor are excluded from the testing:

    Sensor DataEvents Test

    Sensor DataEvents Test (System)

    Sensor DataEvents Test (ARM)

    Sensor DataEvents Test (ARM System)

-   DevFund tests (i.e. name DF - \*) Without the fix, and based on the state of the device under test, the msdsm filter driver can bugcheck the system with C9 code.

-   NDISTest 6.5 - PM\_Requirements – This change restricts the NumTotalWoLPatterns checks to AOAC machines.

-   NDISTest 6.5 - \[2 Machine\] - VMQBasicVerification – Test was changed to validate the case where a destination MAC address field criteria is set to match that of the physical NIC's permanent MAC address.

-   NDISTest 6.5 - \[2 Machine\] – VMQBasicVerification – Test was changed to validate the case where an NVGRE packet arrives with a VLAN ID.

-   Cib Raid Controller Kit Tests – The test currently treats all non-win8 machines as win2k8R2. The test is fixed to run properly on Win2k12R2.

### <a href="" id="qfe-81-006"></a>QFE Update 006 (Build ID: 8.100.9621)

**Release date**: Aug 06, 2013

**Optional or required**: Optional

**Description of change**:

-   Ppm Logo Test – “Delivered performance &gt; requested performance” and “MakeupPerfChecks &lt;n&gt; &gt; MAX\_MAKEUP\_PERF\_CHECKS" are no longer flagged as error.

-   Hybrid Tagged Performance Test (LOGO) - The random variance in the test has been significantly reduced to eliminate occasionally failures.

-   The following tests will no longer fail on the setup stages where it will write dirty data.

    Hybrid Information Cache Verification Test (LOGO)

    Hybrid Information Command Test (LOGO)

    Hybrid Information Read-Write Test (LOGO)

-   The following tests are updated to match stornvme driver and stornvmeshim test driver.

    NVME Queue Utilization test

    NVMe Queue Pause-Resume test

    NVMe IO test

-   BDE WLK tests – No longer fails if the controller bus type is unknown.

-   The following tests have been fixed to turn off the monitor power before running the test. This change eliminates false failures due to the inability to turn off the monitor.

    HybridPowerManagement\_AppIdelMonitorOff

    HybridPowerManagement\_AppRunningMonitorOff

    HybridPowerManagement\_NoAppMonitorOff

-   WGF11 SharedResources - This fix corrects a device leak in the test, which can lead to failures.

-   WGF11 L9NativeUpdateSubResource - Test has been failing because UpdateSubresource calls on regions of resources that are not byte-aligned and compares virtual memory performance using byte-aligned copies. This is fixed by aligning the region in which we are copying to and removing any false failures.

-   The following tests are:

    1.  fixed to remove false failures due to process running on dPGU with no contexts. The fix checks if there are any contexts on these devices and fail only if there are.

    2.  fixed to ensure specific process running on dGPU does not cause the test to fail

    3.  updated to have a tolerance of 50us transition latency

    4.  updated to skip the Active/Idle validation for components marked as DXGK\_POWER\_COMPONENT\_OTHER.

    HybridPowerManagement\_AppIdle

    HybridPowerManagement\_AppIdelMonitorOff

    HybridPowerManagement\_AppRunning

    HybridPowerManagement\_AppRunningMonitorOff

    HybridPowerManagement\_NoApp

    HybridPowerManagement\_NoAppMonitorOff

-   HybridPowerManagement\_AppIdelMonitorOff - Test has been fixed to remove a false failure due it running before the monitor power is turned on.

-   “XPerf D2D DComp Write Once Perf test - Scenario='Read2Write1' - R2W1 (may require manual interaction to remove power cord)” - Test was failing because of wrong goal calculation.

-   "Device Driver INF Verification Test (Certification)" - Updates validation for Display Driver INFs to ensure that correct FeatureScore is used for Windows 8.1 Display Driver.

-   H264 Encoder HMFT VisVal test 802 - The fix specifically checks whether the HMFT supports 1080p before asking it to encode at that resolution handle the return value and mark the tests "skipped".

-   "Touch Slate HW LOGO test" - The test binary was not loading with Windows 8 devices.

-   Changes to the following tests ensure these tests continue to use VRAM for capture.

    Basic Tests - Device

    -   MF Basic Capture base

    -   Webcam Registration, Metadata, and Dependency Tests

    Functional Tests - Device

    -   H264 AVC payload base

    -   MF Basic Capture base

    -   MF Basic Photo base

    -   MF Basic Preview base

    -   MF Video Capture H.264 base

    -   MF Video Control Test base

    -   UVC Logo Test

    -   Webcam Registration, Metadata, and Dependency Tests

    -   Webcam UsageIndicator base (Manual)

    Reliability Tests - Device

    -   DF - Concurrent Hardware And Operating System (CHAOS) Test (Reliability)

    -   MF Multiple Camera Capture Stress base

    -   MF Video Capture Stress base

    -   Webcam BasicPerf base (Manual)

    -   Webcam Pressure Security Test

    Certification Tests

    -   MF Multiple Camera Capture Stress base

    -   MF Video Capture Stress base

    -   Webcam BasicPerf base (Manual)

-   Wave Test – Certification - If the test is unable to successfully select the two correct formats for the test, it will now skip the test.

-   "Communications Audio Fidelity Test" - The test is not measuring the microphone signal level correctly. This change adjusts the signal thresholds to match the requirements.

-   Audio Fidelity Test - This change updates the profile created by the test to fix random hangs in rws.exe due to malformed XML.

-   "PrintTicket Test" - Test no longer fails with an AppVerifier stop: VERIFIER STOP 00000202: Freeing heap block containing an active critical section.

-   Updated HCK Documentation

-   DPC ISR Tests - Test failed because total interrupts exceeded maximum allowed interrupts

-   Supported added for the new WLAN adapter standardized keyword h (\*MiracastSupported).

    NDISTest 6.5 - WLanBasic

    NDISTest 6.5 - \[1 Machine\] - PM\_Requirements

-   This change affects non-ARM devices which are AOAC capable. The tests were failing to do a WLAN connect upon S3 sleep resume. This change skips the variation for those devices as the S3 state is invalid for these devices.

    WLAN Association Tests - WPA2\_PSK\_PEAP\_AES - Functional

    WLAN Association Tests - WPA2\_PSK\_PEAP\_TKIP\_AES - Reliability

    WLAN Association Tests - WPA2\_PSK\_TTLS\_AES - Functional

    WLAN Association Tests - WPA2\_PSK\_TTLS\_TKIP\_AES - Reliability

    WLAN FIPS Association Tests - WPA2\_PSK\_PEAP\_AES - Functional

    WLAN FIPS Association Tests - WPA2\_PSK\_PEAP\_TKIP\_AES - Reliability

    WLAN FIPS Association Tests - WPA2\_PSK\_TTLS\_AES - Functional

-   This fixes an issue where the Wi-Fi Direct received group request address does not match the expected group request address even though the received group request address was the expected one. Additional logging has also been added when a group request is received.

    WiFi Direct Performance Test GONegotiation PeerFinder

    WiFi Direct Performance Test Invitation PeerFinder

    WiFi Direct Performance Test JoinExistingGO WFDPlatform

    WiFi Direct Scenario Tests - Airplane Mode

    WiFi Direct Scenario Tests - Basic

    WiFi Direct Scenario Tests - BasicPlus

    WiFi Direct Scenario Tests - Power Transition

-   E2EPerf Test: Sometimes E2EPerf would run forever until stopped by the end user. This fix allows the tests to complete by removing the race condition causing an indefinite wait.

-   Cib Raid Controller Kit Tests - The test currently treats all non-win8 machines as win2k8R2. Since the PowerShell cmdlets are different for 2k8R2 and 2k12R2, the test needs to be fixed to run properly on Win2k12R2.

### <a href="" id="qfe-81-005"></a>QFE Update 005 (Build ID: 8.100. 9616)

**Release date**: July 30, 2013

**Optional or required**: Optional

**Description of change**:

-   Thin Provisioning Performance Test - NTFS (LOGO) - The change prevents thin provisioning drives from going offline while the permanent resource exhaustion is hit. Preconditioning, write back, and Unmap with write test cases are removed.

-   BitLocker E2E HCK tests are now linked Device.DevFund.Firmware.UpdateDriverPackage requirement in addition to the TPM requirements.

-   The following system-level tests are incorrectly failing when an HMFT is present on a multi-gpu system, but the GPU needed for the HMFT is not the active one. This change fixes the issue to skip the tests when there is no HMFT available for the active GPU.

    H264 Encoder HMFT VisVal test 801

    H264 Encoder HMFT VisVal test 802

    H264 Encoder HMFT VisVal test 851

    H264 Encoder HMFT VisVal test 852

    H264 Encoder HMFT VisVal test 853

-   The following tests were modified to include test cases for video processing interaction with the new GPU timestamp feature. This feature is optional until February 2014.

    D3D11 WGF11TimingData HW FL\*

    D3D11 WGF11TimingData HW FL9\*

-   Desktop Duplication with Latency Mode, Desktop Duplication with Normal Mode have been fixed to ensure that tests do not fail if a device does not support10\*7 mode.

-   DXGI HybridPresent (FL9.1), DXGI HybridPresent (FL9.1) (WoW64) WHCK Tests have been updated to fix false failures.

-   "F-State Latency Validation - video" validates the latency time reported by the driver to go from an idle to an active state. The fix reduces the number of events logged and hence the size of the ETL file generated.

-   The following tests have been updated to remove FState Transition latency requirement.

    HybridPowerManagement\_NoApp

    HybridPowerManagement\_AppIdle

    HybridPowerManagement\_AppRunning

-   The following tests failed due to incompatibilities in the format of render target texture and the texture component type declared in the shader. This fix recreates the shaders on a per test case basis as the format changes.

    WGF11 Render Targets

    WGF11 Render Targets (WoW64)

    WGF11 Render Targets FL9.1

    WGF11 Render Targets FL9.1 (WoW64)

-   This change fixes an error in the script that initializes the frame capture server where the server has multiple capture cards.Affects the following tests:

    WGF11 Render Targets

    WGF11 Render Targets (WoW64)

    WGF11 Render Targets FL9.1

-   This change fixes an error in the script that initializes the frame capture server where the server has multiple capture cards.

    MPO Quality Test - 1080p source to 1280x720 surface

    MPO Quality Test - 1080p source to 1920x1080 surface

    MPO Quality Test - 720p source to 1280x720 surface

    MPO Quality Test - 720p source to 1920x1080 surface

    MPO Quality Test - 720x480 source to 1280x720 surface

    MPO Quality Test - 720x480 source to 1440x1080 surface

    MPO Quality Test - 720x480 source to 1920x1080 surface

    MPO Quality Test - 720x480 source to 960x720 surface

-   “Webcam Controls - FlashMode - Manual System Test " resolved issue with the test that photo mode was not being set correctly while taking pictures in photo sequence mode, causing the flash to not illuminate.

-   “Device Desciption Document” - DMR optional field entries (DDD-01). This change removes the model number field check, which is also removed from the requirements.

-   Sensor ReadyState Verification Test (System) - Fix failure when there are multiple sensors on the system and one of them is location sensor.

-   Prompts and assumptions about the location requirement of 'Windows Button' reworked. Especially in establishing a reference position on the device at the beginning of the test. Affected tests:

    Gyroscope Sensor Test

    Gyroscope Sensor Test (System)

    Verify Sensor Orientation - 3D Accelerometer

    Verify Sensor Orientation - 3D Accelerometer (System)

    Verify Advanced Orientation Sensors

    Verify Advanced Orientation Sensors (System)

    Verify Sensor Orientation - 3D Compass

    Verify Sensor Orientation - 3D Compass (System)

    Accelerometer Sensor Shake Event Test

    Accelerometer Sensor Shake Event Test (System)

    Verify Sensor Orientation - 3D Inclinometer

    Verify Sensor Orientation - 3D Inclinometer (System)

-   “WindowsToGo boot test” requires the user provide a Windows Image (install.wim) file. The test provides an unattend file that automates OOBE, however if the Partner supplied install.wim already has an unattend file in their image the test will fail. The fix will log a message that the partner supplied unattend file is being used rather than the test unattend.

-   “UART Controller Test(Stress)" The test was blocking UART controllers that expose a different ClassGUID than the one it's expecting. Check was be removed.

-   This fix optimizes the performance of the UART HCK tests:

    UART Controller Test(Basic tests)

    UART Controller Test(Functional tests)

    UART Controller Test(Stress)

-   WiFi Direct Scenario Tests - Pairing Stress. This fix is a reliability improvement for Wi-Fi Direct pairing stress. The test fix is to turn off the discoverable state on the SUT before disconnecting from the device and then set the discoverable state on again after the disconnect occurs.

-   NDK Logo Tests: Some test cases in NdkLogoTests.exe contain a bug in an error cleanup path which can cause the test to crash in the presence of certain driver failures. This fixes that error cleanup path so that the underlying driver failures can be diagnosed.

### <a href="" id="qfe-81-004"></a>QFE Update 004 (Build ID: 8.100.9611)

**Release date**: July 23, 2013

**Optional or required**: Required

**Description of change**:

-   Validate HAL Extension have no Imports

    Test will fail with error message Validate HAL Extension have no Imports' failing with Error 'CheckImports - MapAndLoad((null)) failed, error=2'.

-   NVMe Device Capabilities

    Test verifies minimum value of AERL in Controller Registers to be 4, but AERL is a 0's based value and this test fails if AERL is 3 which is a valid value.

-   Currently, the hybrid spec has priority 0 defined as a priority that has behavior that is vendor specific. There are certain test cases that test for requirements around certain timing requirements. We have removed these test cases for the ones that test for priority 0. This should allow for an easier certification. Test impacted:

    -   Hybrid Information Cache Verification Test (LOGO)

    -   Hybrid Information Command Test (LOGO)

    -   Hybrid Information Read-Write Test (LOGO)

    -   Hybrid Tagged Performance Test (LOGO)

-   Wdf-Kmdf fault injection test

    There is a bug in the in-box filter driver scfilter.sys which causes the OS to bugcheck during this test. This filter driver attaches to all smart card readers, and therefore this bug causes certification runs for all smart card reader drivers to fail. This fix addresses the bug so that certification runs no longer crash.

-   AutoMemoryBenchmark

    Test has been updated to discard unused allocations after a timeout to addresses false failures.

-   The displaygatherer.dll collected incorrect information on Server Core and some other Server SKUs due to lack of graphics subsystem in the OS, the data was rejected by sysparse.exe blocking the HCK. The fix checks for graphics support from OS and gathers only the data which is valid.

-   PerfX2 D2D Bench - Access Violations have been fixed

-   Wireless Display Verify Sink – the following errors have been fixed:

    -   The test may fail with the message "Monitor shouldn't be connected after the set mode failed" which is because the test isn't allowing time for the driver to react to the RTSP message.

    -   The test may fail due to a critical error in the driver because the RTSP message did not use the correct sequence number.

    -   The test may fail due to RTSP or GetOverLappedResult timeout becase the test is not expecting sudden shutdown due to the message failure.

-   The following tests will fail with a message ""Failed to force sleep state" OR "Failed to force hibernate state"

    -   Wireless Display Verify Sleep

    -   Wireless Display Verify Hibernate

-   "Verify Frame Quality test" has been updated to fix crashes caused due to decoding of corrupt video file."

-   "VSYNC inphase"

    The requirement for VSYNC test has changed from the following:

    Earlier requirement:

    All Vsyncs which are within the ‘keep phase’ state have to be within 500 us of the expected arrival time. New requirement:

    -   98% of the Vsyncs must be within 500 us

    -   For Vsync ON, max variation is 1.5 ms

    -   For Vsync OFF in-phase state, max variation is 10 ms

-   Multiple fixes to Precision Touchpad HCK Tests

    -   Requirement:Device.Input.PrecisionTouchPad.Precision.Linearity Test.LinearityDiagonalMultiple.json; Test.LinearityVerticalMultiple.json and Test.LinearityHorizontalMultiple.json

        - If the IHV or OEM builds a precision touchpad within documented depth tolerance of 1.5mm, the test equipment may not be able to make both contacts hit the edge of the touchpad on a parallel stroke. If this check is in place, the partner will fail the test even though they have met the requirements.

        - For MP, the tolerances were inconsistent across various test iterations. This change corrects them; otherwise it is possible for an IHV or OEM to artificially fail some portions of the linearity tests while passing others.

    -   Requirement:Device.Input.PrecisionTouchpad.Precision.StationaryJitter Test.StationaryJitterMultiple.json

        - If the IHV or OEM has met the requirement, but is using one of our described equipment vendors and techniques, they may artificially fail the test due to human error in placing the contacts. The human error is practically unavoidable. This fix allows for some stabilization time to get the contacts on the touchpad surface before verifying the jitter.

        - When multiple contacts are brought down in such close proximity the tolerance for stationary jitter isn't sufficient and will result in false failures.

    -   Requirement: Device.Input.PrecisionTouchpad.Hardware.Clickpad

        - For MP, the test failed to check the button state was consistent across a frame which resulted in some devices hanging the logo test instead or returning a failure.

    -   Requirement: Device.Digitizer.PrecisionTouchPad.Performance.ReportRateApplies to all tests since it runs in the background.

        - Host performance issues can result in false failures due to an insufficient number of samples to calculate the device's report rate. This mitigates this issue by requiring averaging across a minimum of 20 samples instead of just 10.

    -   \*Applicable to all systems with an integrated precision touchpad\*

        - When running system logo tests with a PTP device present, the applicable PTP HCK tests won't show up and be executable due to an XPath query issue. This fix resolves the query issue so the tests can be run for system logo submission.

-   Webcam Performance System Test - There are currently 2 start capture engine initializations events thrown, test is using the fist init event to measure start performance, which causes an artifically high start up latency. This fix updates the test to have only initialize call for capture engine.

-   Webcam Glitch free record System Test - WNCameraRequirements (Manual) .Currently the Glitch free test is using H.264 in an ASF container to record video, this is not a mainline scenario. Updating test to verify the framerate with H.264 in an MP4 container.

-   The test currently exits the Video player process instance after it finishes, which is occasionally returning a failure code when a race condition in which error 9009 is given, but the process is still killed. This change will now log the error and but not fail the test because of it.

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on DC during Connected Standby (Manual on mobile systems)

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on AC during Connected Standby (Manual on mobile systems)

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on DC (Manual on mobile systems)

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on AC (Manual on mobile systems)

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on DC with Audio Offload (Manual on mobile systems)

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on DC with Audio Offload (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on DC during Connected Standby (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on AC during Connected Standby (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on DC (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on AC (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on DC with Audio Offload (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on DC with Audio Offload (Manual on mobile systems)

-   USB Host Controller Compliance

    USB controller filter drivers will crash during USB controller certification. Fix will register the USB compliance validation driver with the power framework thus no longer cause issue.

-   Change fixes problems with validating vendor-specific entries, and adds support for newly introduced PrintSchema features, and improves some error messages to make them more actionable. Tests impacted:

    -   “PrintTicket Test"

    -   "PrintTicket Conformance Test"

-   Packaging for a submission using deep merge can cause the following exception -

    "Unable to create package. A foreign key value cannot be inserted because a corresponding primary key value does not exist. \[ Foreign key constraint name = FK\_\_TestResultParameter\_\_000000000000026E \]"

-   All tests that have filters are expired or updated.

    HCK Studio will crash when a previously applied filter has expired and is reverted from the test result, due to a permissions issue writing to Program Files directory.

-   DevFund INF Test

    This test fails if a driver INF uses UMDF directive UmdfFsContextUsePolicy.

-   NDISTest 6.5 - WlanOffloads – OSStack

    This test has the high potential to fail due to missing the necessary packets when in a low power state due to all the packets coming in on the same beacon interval. By adding a 50ms delay between each packet transmission the likelihood of the client missing the packet is minimal.

-   WLAN Data Path Tests – Functional

    This fixes the test from hanging indefinitely. Additionally the will now stop clean everything up if it is hung for more than 30 minutes.

-   D0 Coalescing Feature Test

    This only applies to WLAN device tests. The D0 Coalescing feature test currently uses netmon, installed on the support machine (SUT), to parse the traces from the Client machine (DUT). However, some IHVs need to use an ARM machine as the SUT and netmon doesn't have a ARM version. The AP machine will always be either an amd64 or x86 machine. So by using the AP machine to do the parsing, this issue will be resolved.

-   NdisTest 6.5 - WLAN\* - preconfig (ap machine)

    The wlansvc will wait for the vwifilt service to finish the attempt to start a virtual adapter before the shutdown will occur. The issue is that the custom atheros softap driver doesn’t support virtual adapters (by design) and thus vwifilt will wait the full 60 seconds before it fails to start a virtual adapter. The current time out in the preconfigure to stop wlansvc is 30 seconds so an error is logged. This error has no effect on the overall test run but will prevent an errata/contingency filter from being applied correctly.

-   The wlan wake tests can sometimes fail with no packets received or with a loss of backchannel communication. The reason for this is when the system goes into a low power mode the Ethernet adapter is going to sleep as well. These tests require the Ethernet adapter to stay awake and connected in order to complete the test. The fix for this is to simply take a handle on the Ethernet adapter before the system is put into a low power state. This will keep the Ethernet adapter connected and powered up for the duration of the test. Tests impacted:

    -   NDISTest 6.5 - WlanWakeTests

    -   NDISTest 6.5 - WlanWakeTests –OSSTACK

-   NDISTest 6.5 - \[2 Machine\] – CheckConnectivity

    Running any NDISTest job against an SR-IOV NIC’s VF driver bug checks the system. To fix the problem, NDISTest adds “ndisvf” as the lower binding range for the test protocol.

### <a href="" id="qfe-81-003"></a>QFE Update 003 (Build ID: 8.100.9606)

**Release date**: July 16, 2013

**Optional or required**: Required

**Description of change**:

-   This fix allows the successful execution of specific Windows 8 HCK Boot tests on UEFI systems running Windows 7. Without the fix tests will fail to run and report any pass/fail results. UEFI firmware certification tests impacted:

    -   UEFI Post Time Test

    -   BitLocker Drive Encryption BIOS Interface Logo Test

    -   BitLocker Drive Encryption USB BIOS Logo Test

-   The following tests have been marked with the “Special Configuration” attribute to allow automation to work properly. Tests impacted:

    -   Converged Traffic Test

    -   Crashdump Support Test(LOGO)

    -   Persistent Reservation Test(LOGO)

    -   Flush Test

    -   Enclosure Disk Test(LOGO)

    -   Enumeration Test(LOGO

    -   Multiport Disk Performance Test(LOGO)

    -   SES Test(LOGO)

    -   iSCSI HBA Boot Test(LOGO)

    -   iSCSI HBA Digest Test(Disk) (LOGO)

    -   iSCSI HBA Mutual CHAP Test(LOGO)

    -   iSCSI HBA One-Way CHAP Test (LOGO)

    -   iSCSI HBA Persistent Login Test(LOGO)

    -   iSCSI HBA Ping Test(LOGO)

    -   iSCSI HBA Redirection Test(LOGO)

    -   iSCSI HBA WMI Test(LOGO)

-   The following tests have been fixed to work correctly on Windows 8:

    -   Installable File System Filter Test

    -   Antivirus Installable File System Filter Test

    -   Txfs2

    -   Syscache test

    -   Oplocks test

-   Hybrid Trim Performance Test (LOGO)

    The test does not clear the cache prior to running the trim performance test, causing intermittent failures.

-   Trim Performance Test

    The maximum number of LBAs per range is changed from 65536 to 65535, as specified by ACS-2 spec.

-   NVMe Fault Injection test (LOGO) is removed from HCK2.1 release.

-   SCSI Compliance Test 2.0

    The test will fail if the drive size is bigger than 2TB.

-   Multipath I-O Test (LOGO)

    Change the storage.pck file; copy "Utility\_RebootForDeviceRecovery.wsc" file to the working directory.

-   WGF11 Map Default Performance (and WoW64 version)

    This has been fixed to ensure that it takes compiler optimizations into account while running tests.

-   Multisampling Test

    This has been fixed to be high-dpi aware and hence it would not fail due to resolution assumptions.

-   This change fixes an issue where the input content was not copied correctly from the HCK server. Tests impacted:

    -   HMFT VisVal Test 801

    -   HMFT VisVal Test 802

    -   HMFT VisVal Test 803

    -   HMFT VisVal Test 851

    -   HMFT VisVal Test 852

    -   HMFT VisVal Test 853

-   Following tests have been fixed to ensure dependent files are copied correctly before running the test.

    -   D3D11 WGF11TimingData HW FL\*

    -   D3D11 WGF11TimingData HW FL9\*

-   The following tests can result in false failures. This QFE corrects the JMP detection logic.

    -   WGF11 D3DWDDM (WoW64)

    -   WGF11 D3DWDDM

-   WGF11 L9NativeStaging

    This has been fixed to ensure that it takes compiler optimizations into account while running tests.

-   Following tests has been fixed to ensure that it runs at 100% desktop scale factor.

    -   Desktop Duplication with Latency Mode

    -   Desktop Duplication with Normal Mode

-   "SysFX Test"

    If a driver is built with both Windows 8 and Windows 8.1 audio effects models, this test could crash. The fix is to properly support drivers that are designed for both versions.

-   These tests were not running correctly on Windows 8. This change fixes that so the tests will run on Windows 8.

    -   Webcam Location, Registration, Metadata, and Dependency Tests

    -   Webcam Min Resolution for integrated cameras

    -   Webcam Registration, Metadata, and Dependency Tests

-   Device Power State Transition Test

    This is currently enumerating through all devices that have once attached to the system and then complies endpoint specific info. The fix is to have the test enumerate through all active devices so when the test attempts to pull endpoint specific data, the test doesn't fail on devices that are no longer connected.

-   HCK Packaging

    When the number of tests in the project is large, the project can fail to load with SQL timeout exception - was taking longer than the default timeout interval for the SQL connection. With this fix, such projects will load quicker and not fail with the timeout exception.

-   A static IP cache was not being flushed correctly. This impacts the following tests:

    -   WiFi Direct Data Performance Tests PreAP24 SingleBand SingleChannel

    -   WiFi Direct Data Performance Tests PreAP5 MultiBand MultiChannel

    -   WiFi Direct Data Performance Tests PreAP5 SingleBand MultiChannel

-   A parameter is added to check for 5ghz capability. This impacts the following tests:

    -   Combined Radio – GPS and WLAN – Radio Interference 5Ghz

    -   Combined Radio – GPS and WLAN – Radio Interference 5Ghz (ARM System)

    -   Combined Radio – WLAN, MBB and Bluetooth – ConcurrentUsage 5GHz

    -   Combined Radio – WLAN and BTH – Coexistence 5Ghz

-   Timers have been fixed to handle failures in the following tests:

    -   WLAN Connected Standby End to End LongHaul

    -   LAN CS Test - IPv4 Longhaul

    -   LAN CS Test – Ipv6 Longhaul

### <a href="" id="qfe-81-002"></a>QFE Update 002 (Build ID: 8.100.9602)

**Release date**: July 9, 2013

**Optional or required**: Optional

**Description of change**:

-   Ppm Logo Test

    Test fails with log display “\*CAP failure” error message if CAP is greater than set by the firmware. Fix is to change to a warning.

-   Ppm Logo Test

    Test fails with log display “CStateCount &gt; MAX\_IDLE\_STATE\_COUNT”. Fix is to correct constant.

-   TPM Revoke Attestation Test

    This fixes errata 833, the fix is to address a diferent setup step for TPM2.0 which is different from TPM1.2 - checks for the version and only clear for TPM 2.0.

-   TPM 2.0 - Supplemental test

    There was a firmware and OS change to change the way the spec version and manufacturer version is shown for TPM, as what they were showing here for Windows 8 wasn’t correct. This fix is to check the spec version but not manufacture version.

-   TPM 2.0 - Supplemental test

    This test was to check for the TPM to be part of a well-known list taken from the TCG vendor registry. The fix is to remove this check as it is no longer a requirement.

-   Check if the TPM supports PPI1.0 and if yes issue the correct PPI commands applicable for PPI 1.0 only. Test impacted:

    -   TPM Win32\_TPM Class Test

    -   TPM 1.2 TCG OS Interface Server Test

-   Wireless Display Verify 1080p

    The device may fail this test by choosing to report the 1900x1200 display mode reported in the sink codec support. The test will fail indicating that it expected 1920x1080 as the default resolution.

-   WDDM Max Conext Test

    The test creates 101 contexts instead of 100 specified as a requirement. This is fixed to create exactly 100 contexts.

-   This fixes Wireless display test to handle multiple RTSP messages of variable sizes on ReadFile calls. Test impacted:

    -   Wireless Display Verify 1080p

    -   Wireless Display Verify Connector Type

    -   Wireless Display Verify Container ID

    -   Wireless Display Verify Edid

    -   Wireless Display Verify Frame Quality

    -   Wireless Display Verify Hibernate

    -   Wireless Display Verify Message Timeouts

    -   Wireless Display Verify Mode Change

    -   Wireless Display Verify Monitor Arrival Departure

    -   Wireless Display Verify Monitor Disconnect

    -   Wireless Display Verify Monitor Off

    -   Wireless Display Verify PnP Stop

    -   Wireless Display Verify Protocol

    -   Wireless Display Verify Session Connect Disconnect

    -   Wireless Display Verify Monitor Off

    -   Wireless Display Verify PnP Stop

    -   Wireless Display Verify Protocol

    -   Wireless Display Verify Session Connect Disconnect

    -   Wireless Display Verify Sink Disconnect

    -   Wireless Display Verify Sink Failed To Set Mode

    -   Wireless Display Verify Sleep

    -   Wireless Display Verify Stability

    -   Wireless Display Verify TDR

    -   Wireless Display Verify Topology

-   This fixes the test so that the virtual sink does not report having an empty message when two RTSP messages are sent in one packet. Test impacted:

    -   Wireless Display Verify Edid

    -   Wireless Display Verify Connector Type

    -   Wireless Display Verify Connect Disconnect

-   dGPU Power Management as originally speced had DXGKrnl controlling "D3 Tranision" power component. Later this was relaxed to allow IHVs control this component as well. Test's expectations need to be adjusted accordingly. Test impacted:

    -   Wireless Display Verify Edid

    -   Wireless Display Verify Connector Type

    -   Wireless Display Verify Connect Disconnect

-   dGPU Power Management as originally speced had DXGKrnl controlling "D3 Tranision" power component. Later this was relaxed to allow IHVs control this component as well. Test's expectations need to be adjusted accordingly. Test impacted:

    -   HybridPowerManagement\_AppRunning

    -   HybridPowerManagement\_AppRunningMonitorOff

-   Test cases in group RenderTargetView are using incorrect shader resulting in false pass/fail results. This QFE corrects the shader.

    -   WGF11 TiledResources (WoW64)

    -   WGF11 TiledResources

-   Webcam Controls - Photo Sequence - System Test

    Currently one Photo Sequence test does not wait enough time to allow driver to produce one past frame before trigger is set. An update has been made to XML to allow 500 ms for the driver to generate one past frame. Since the required framerate is 8 FPS this should be enough time for driver to converge.

-   Hardware Audio Processing Test

    This fix makes HAPTest more tolerant of dynamic range compression of processing in its signal validation.

-   Webcam Sensor Quality System Test

    WNCameraRequirements (Manual) failed given that the media type bandwidth advertised by the source media type exceed the capabilities of the encoder in that system. This change updates the bitrate provided in the test to a reasonable value for all encoders.

-   This change consists of updates ETW logging for Multi-GPU systems to unblock Glitchfree tests on those configurations. Tests impacted:

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on DC during Connected Standby (Manual on mobile systems)

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on AC during Connected Standby (Manual on mobile systems)

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on DC (Manual on mobile systems)

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on AC (Manual on mobile systems)

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on DC with Audio Offload (Manual on mobile systems)

    -   Full Trace Gatherer for WNGlitchfree HD Video Playback on AC with Audio Offload (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on DC during Connected Standby (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on AC during Connected Standby (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on DC (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on AC (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on DC with Audio Offload (Manual on mobile systems)

    -   WNGlitchfree HD Video Playback on AC with Audio Offload (Manual on mobile systems)

-   Webcam Sensor Quality System Test

    This fixes an access violation while logging.

-   This fixes an issue where the capture device is not properly enumerating the default capture device used by the test. The test now allows the user to select the capture device during the execution of the test. Tests impacted:

    -   MPO Quality Test - 1080p source to 1920x1080 surface

    -   MPO Quality Test - 720p source to 1280x720 surface

    -   MPO Quality Test - 720x480 source to 1440x1080 surface

    -   MPO Quality Test - 720x480 source to 960x720 surface

    -   MPO Quality Test - 720x480 source to 1920x1080 surface

    -   MPO Quality Test - 720x480 source to 1280x720 surface

    -   MPO Quality Test - 1080p source to 1280x720 surface

    -   MPO Quality Test - 720p source to 1920x1080 surface

-   UART Controller Test (Stress)

    A test process crash may be observed during this test's cleanup phase. This fix ensures cleanup is performed cleanly.

-   Change fixes problems with validating vendor-specific entries, and adds support for newly introduced PrintSchema features, and improves some error messages to make them more actionable. Test Impacted:

    -   PrintTicket Test

    -   PrintTicket Conformance Test

-   When run against V4 print drivers with printer extensions, the UI will show up in the background and the test will be blocked looking for the window. V3 drivers and V4 drivers without extensions will NOT hit this issue. Tests impacted:

    DocumentProperties Test (Unicode)

    DocumentProperties Test (Ansi)

-   The HCK Studio Help file has been updated to reflect the following:

    -   Make a note that Secure Boot should be disabled (or Debug Policy installed on ARM) to permit the ACPI test to execute

    -   Hybrid Information Read-Write Test(LOGO)

    -   Hybrid Information Cache Verfication Test(LOGO)

    -   Hybrid Information Command Test(LOGO)

    -   The Test Category Device.Graphics.WDDM12 has been identified to have 187 test that require Special configuration that have NO documentation.

    -   Content for BDE WLK tests is not present online

    -   HCK: UX: Selection tab: Distributed Target Selection dialog: Target check box activation is retained from previously displayed dialog for same targets.

    -   WHCK SLP: 'Running the Test' section needs to be updated for a few WHCK test jobs after the addition of 'IsSpcialConfig' job-attribute

    -   Correct display adapter documentation to state the Media Foundation Feature must be installed on Server 2012 for DXVA testing

    -   The Test Category System.Client.Sensor has been identified to have 11 manual test that have no documentation.

    -   WHCK-Getting Started-Step6 - missing information

    -   Updating Verify WiFi Alliance Certification removing old parameters

    -   update NDISTest 6.5 - WlanBasic with missing content

    -   System.Client.Webcam.Specification.CameraRequirements.Discretional test

    -   Change Devfund Device Fundamentals troubleshooting section to reflect that bluetooth devices must be connected using the audio control panel

    -   Communications Audio Fidelity Test - distance from SUT instructions conflicting

    -   Hybrid Log Verification Test(LOGO)

    -   Hybrid Cache Performance Test(LOGO)

    -   \[Adding new Thin Provisioning Performance Test - NTFS (LOGO)

    -   New-HwCertProjectDefinitionFile -DriverList needs to be documented to note that UMDF based drivers will NOT be detected when supplied.

    -   Documentation for Wireless Display

    -   Hybrid Trim Performance Test(LOGO)

    -   Need to add known issue and work around item for Execution Engine in long loop until timeout if test does not return result

    -   HCK: UX: Diagnostic logs: "Show all" context menu command can cause UI to become unresponsive when large (GB+) files are present.

    -   HCK: Client trouble-shooting: Clients from different machines are reported the same client entry on the controller.

    -   Combined Radio related tests help document is not ready

    -   Update User's Guide 'Run RSC Tests' page

    -   Inadequate 'Troubleshooting' documentation for HCK test: Validate HAL Extension loaded successfully

    -   Inadequate 'Troubleshooting' documentation for HCK test: Verify HAL Extension serviceable

    -   Inadequate 'Troubleshooting' documenation for HCK test: CSRT Validation for ARM

    -   In the kit object model TestResult.Target.Name is incorrect when test group is run as Multi-Device test

    -   Webcam Controls related tests help document is not ready

    -   How to perform calibration video capture during Webcam glitch free record system test?

    -   NVMe Device Capabilities Test (LOGO)

    -   NVMe Fault Injection Test (LOGO)

    -   NVMe Interrupt Modes Test (LOGO)

    -   NVMe IO Test (LOGO)

    -   NVMe Queue Pause-Resume Test (LOGO)

    -   NVMe Queue Utilization Test (LOGO)

    -   NVMe SCSI Compliance Test (LOGO)

    -   WIA Tree Properties test instructions (chm) are out-of-date

    -   \[Update\] Flush test

    -   Update Troubleshooting Device.Storage Testing

    -   Hybrid Tagged Performance Test(LOGO)

    -   \[Device.Network\] add new WLAN Connected Standby End to End - Roaming test

-   Scheduling a large number of tests using the HCK UI can hang. This is typically seen when scheduling tests takes a long period of time. The problem is deadlock situation due to the long scheduling time and results are coming in and changing machine state. The fix is to change the scope of the lock during scheduling.

-   Kmdf Fault Injection Test

    -   Failure: The setup task 'Device Status Check' fails with the error - "No devices were found for testing using the provided SDEL device query: ..."

    -   Fix: Change the task to query for “Device Instance Id " OR " Hardware Id " of the device so that the device under test is located correctly.

-   Kmdf Fault Injection Test

    If the test fails due to a bugcheck or causes the test to hang when running the test on Inbox drivers (usbhub3, winusb, scfilter etc.), this fix will exclude the inbox drivers from fault injection and test only the Non-Inbox kmdf drivers on the device stack.

-   NDISTest 6.5 – WlanConnectDisconnect

    The test suite Indications\_ext currently does not allow the NDIS\_STATUS\_DOT11\_PMKID\_CANDIDATE\_LIST to come between the DISASSOCIATION and ROAMING start indications. This is an asynchronous indication that can come anytime and should be allowed.

-   WLAN Stress Test – Reliability

    This test was hitting an Exception "System.Exception: ProfileConnect Failed at HckTests.Utilities.WlanApi.Wlan.ProfileConnect". This QFE fixes this issue.

-   The following tests would stop and fail any time the device under test was removed during the test process (specifically during hibernate). The fix is to fail the test, but continue to test all variations if the device under test can return within 3 minutes. Tests impacted:

    -   WiFi Direct Scenario Tests - BasicPlus

    -   WiFi Direct Scenario Tests - ReInvoke Stress

-   These tests were not discovering the peer device before calling a connect (re-invoke invitation) to it. The fix will add a device discovery just before the connect call is made.

    -   WLAN Association Tests - WPA2\_PSK\_PEAP\_AES - Functional

    -   WLAN Association Tests - WPA2\_PSK\_PEAP\_TKIP\_AES - Reliability

    -   WLAN Association Tests - WPA2\_PSK\_TTLS\_AES - Functional

    -   WLAN Association Tests - WPA2\_PSK\_TTLS\_TKIP\_AES - Reliability

    -   WLAN FIPS Association Tests - WPA2\_PSK\_PEAP\_AES - Functional

    -   WLAN FIPS Association Tests - WPA2\_PSK\_PEAP\_TKIP\_AES - Reliability

    -   WLAN FIPS Association Tests - WPA2\_PSK\_TTLS\_AES – Functional

-   Association tests would previously perform a single scan for each AP at the start of the test. Over the time in which the test runs, there are many different associate commands given to the wlan service. It was possible for networks to be missing in the scan list through future iterations in noisy environments. Since the focus of this test is on association, there was an additional scan added before the association took place. Tests impacted:

    -   WLAN Association Tests - WPA2\_PSK\_PEAP\_AES - Functional

    -   WLAN Association Tests - WPA2\_PSK\_PEAP\_TKIP\_AES - Reliability

    -   WLAN Association Tests - WPA2\_PSK\_TTLS\_AES - Functional

    -   WLAN Association Tests - WPA2\_PSK\_TTLS\_TKIP\_AES - Reliability

    -   WLAN FIPS Association Tests - WPA2\_PSK\_PEAP\_AES - Functional

    -   WLAN FIPS Association Tests - WPA2\_PSK\_PEAP\_TKIP\_AES - Reliability

    -   WLAN FIPS Association Tests - WPA2\_PSK\_TTLS\_AES - Functional

-   Run TOR Tests: The change is to relax the Layer 3 requirement of the switch. If Layer 3 was not implemented, then those tests will not run.

### <a href="" id="qfe-81-001"></a>QFE Update 001 (Build ID: 8.100.9599)

**Release date**: July 2, 2013

**Optional or required**: Optional

**Description of change**:

-   Fixed crashes known to occur in the tests "NDISTest 6.5 - \[2 Machine\] - OffloadChecksum" and "NDISTest 6.5 - \[2 Machine\] – OffloadLSO" during x86 runs. The crashes were especially frequent in Windows 7 submissions.

-   This fix adds a new Product Type, vSwitchExtension, to Windows HCK to specifically identify those certification submissions that are for Hyper-V Extensible Switch extensions. The product type is carried with the submission to Microsoft's web portal to identify switch extensions so that they may be added to the Windows Server Catalog under the Hyper-V Switch Extensions area. Previously, extensions could receive a logo certification, but would not be listed on <http://www.WindowsServerCatalog.com>.

-   Fixed relaxes Tier-2 tiled resources requirement for tiled array resources with packed mips. With this fix, the tiled resource array tests only in WGF11TiledResources where the resource is guaranteed to be fully unpacked. The following test are impacted:

    WGF11 Resource Formats (WoW64)

    WGF11 Compute Shader (WoW64)

    WGF11 Multisample

    WGF11 Multisample (WoW64)

    WGF11 Compute Shader

    WGF11 Resource Formats - BGRA Support on 10.x (WoW64)

    WGF11 Filter

    WGF11 Depth Stencil

    WGF11 Compute Shader (D3D10.x HW Only)

    WGF11 Filter (WoW64)

    WGF11 Resource Access (WoW64)

    WGF11 Render Targets

    WGF11 Compute Shader (D3D10.x HW Only) (WoW64)

-   Fixed proper synchronization between processes after each CopyTiles call. Following tests are impacted:

    -   WDDM Primary Surface

    -   WDDM Primary Surface (WoW64)

-   Fixed Wireless Display Verify Session Connect Disconnect. The virtual sink tried to bind to the same socket for each test case but if there was not sufficient time between the close and the current bind attempt the bind call failed.

-   Addressed an issue with drivers that require DRMLevel for protected content playback. Prior to this fix, users would receive packages that were missing the necessary information to receive XP/Vista downlevel catalog markup. With this fix, packages are generated correctly and all downlevel OS are available in the package.

-   Fixed System jobs that are now able to handle scenarios where current system state impacts running of these tests:

    -   DXGI HybridPresent jobs

    -   Hybird - Independent Driver Update Jobs

    -   HybridPowerManagement

-   The following jobs are scheduled on x86 builds which results in longer execution time of the kit. WOW64 jobs should only run on AMD64 platform:

    -   DXGI HybridPresent (FL9.1) (WoW64)

    -   DXGI HybridPresent (WoW64)

    -   WGF11 D3DSystemCheck - Hybrid (WoW64)

-   Fixed crashes known to occur in the "NDISTest 6.5 - \[2 Machine\] - VMQPowerManagement " test.

-   Fixed link between target and drivers that was broken for DUA packages. Even though drivers were being added to the package, it wasn't associated with the targets. The impact is that it would not be possible to create DUA packages from the shell packages downloaded from portal.

-   Windows 8 systems are blocked from certifying Touch Device. GetTHQABlob.exe is a requirement for certification and partners cannot execute this on Windows 8.

-   WGF11 Shader 5x: The fix to the D3D driver verifier layer.

-   Fixed an issue in Wireless Display Verify Frame Quality where the virtual sink does not handle a variable size RTP header for the video/audio stream. The handles a variable size RTM header of video/audio stream.

-   The following Sensor and Location WHCK tests caused a false failure against GPS sensor, although the GPS Sensor passes 4 out of 5 cold start test runs, which is the passing criterion:

    Sensor ReadyState Verification Test

    Sensor ReadyState Verification Test (System)

## Related topics


[Windows HCK Release Notes for Windows 8.1](windows-hck-release-notes--for-windows-81.md)

 

 







