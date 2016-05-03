---
author: joshbax-msft
title: Windows Certification Newsletter - July 16, 2013
description: Windows Certification Newsletter - July 16, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0eac32cc-8380-443d-9911-d801c486b93b
---

# Windows Certification Newsletter - July 16, 2013


This newsletter provides up-to-date news about the Windows Certification (formerly Logo) Program and often provides info you can't get anywhere else. Did you get this from a friend? [Subscribe now](http://go.microsoft.com/fwlink/p/?linkID=313282) so you don't miss any important updates or changes.

## In this issue


[HCK QFE 03 is required for all submissions, starting July 30, 2013](#hck)

[Clarification of requirements for tablet screen size](#clar)

[Windows 8.1 touch device certification](#win81)

[Windows Hardware Certification system testing prerequisites](#wind)

## <a href="" id="hck"></a>HCK QFE 03 is required for all submissions, starting July 30, 2013


HCK QFE 03 is now available. The QFE is required for **all** HCK test labs running HCK for Windows 8.1 and must be adopted by July 30, 2013. The Windows Hardware Dashboard (also known as Sysdev) will check the version numbers of submitted HCK packages to ensure that HCK QFE 03 was used for testing.

For information about the updates included in QFE 03, see [Windows Hardware Certification Kit QFE Updates](http://go.microsoft.com/fwlink/p/?linkID=314070).

To get the latest QFEs for the Windows HCK, run [HCKSetup.exe](http://go.microsoft.com/fwlink/p/?linkID=310164). The Windows HCK download includes all previous QFE updates.

[Learn what’s in the QFE](http://go.microsoft.com/fwlink/p/?linkID=314070)

[Download and install HCK to get the QFE](http://msdn.microsoft.com/windows/hardware/bg127147)

**Note**  
Before applying the QFE, close all active DTM Studio sessions. Applying this QFE might affect any in-progress submission; please complete any submissions before applying the QFE. After installing this QFE, you’ll need to regenerate any affected submission that was generated before the QFE was installed.

 

## <a href="" id="clar"></a>Clarification of requirements for tablet screen size


In a recent newsletter, we reported that we had evaluated feedback from partners on new proposed mobile designs and had found that the current definition of tablets also applies to touch all-in-ones that have a battery. But these larger systems aren't really designed to be handheld and mobile, so tablet features aren't appropriate for them.

For certification purposes, we're tightening the definition of tablets by restricting it to systems with a screen size of 17" or less.

In the earlier newsletter we stated that above that size, touch systems without batteries and attached accessible keyboards don't need to meet all of the tablet requirements. We’ve gotten a lot of questions and would like to clarify that statement. Tablet and all-in-one systems that run on a battery and have a screen size larger than 17” don’t need to have the integrated orientation sensors. This includes accelerometers, gyroscopes, and digital compasses.

If you have questions about your design, contact <logofb@microsoft.com>.

## <a href="" id="win81"></a>Windows 8.1 touch device certification


If your touch device was previously certified for Windows 8, and the device's firmware and hardware haven’t changed since the submission for Windows 8, no resubmission is required for Windows 8.1 certification. You can continue to ship with Windows 8 and Windows 8.1 using the THQA signature you received for the Windows 8 certification.

If your touch device is a new device that wasn’t previously certified for Windows 8, or that has modified firmware or hardware, please submit the device for certification by following the standard touch device submission process.

## <a href="" id="wind"></a>Windows Hardware Certification system testing prerequisites


To certify your client systems for Windows 8 and Windows 8.1, you’ll need this hardware in addition to the system that you’re testing in order to run the system HCK tests:

-   Another computer. Ideally, the second computer should be certified.

    -   If you’re testing a computer with Bluetooth, the second computer must also have Bluetooth 4.0 or have a Bluetooth adapter installed.

-   An audio device (if the test system supports audio).

-   An audio loopback cable (if the system supports audio).

-   An external speaker.

-   A network adapter.

-   Two USB flash drives.

-   A data CD.

-   A USB 3.0 hub for every exposed port.

-   Audio Precision Machine – Model System Two and connector cables.

-   A Bluetooth audio device (if the system supports Bluetooth).

-   A monitor with audio output (if the system has an external HDMI or DisplayPort port).

-   A Wi-Fi Access point (if the system supports Wi-Fi).

-   An Athena T0 test card.

-   Polycom CX100.

-   An audio microphone or another active source for audio capture.

-   A SIM with data provisioned (if the system supports mobile broadband).

-   A GPS signal (If the system has GPS).

-   A Windows To Go drive.

    -   The tester must pre-configure the Windows To Go drive with a valid Windows image (WIM) file to test the computer. It must include any drivers that are needed to use the system’s hardware.

-   A mirror large enough to reflect a screen image back into the camera (if the system has a webcam)

-   USB SuperMutt.

-   A USB 3.0 device, like a USB 3.0 storage device.

-   Debug cables that match the transport that supports debugging on the system being tested.

-   If you’re testing a webcam, you need:

    -   A video test chart:

        -   An x-Rite ColorChecker chart.

        -   A National Institute of Standards and Technology (NIST) calibrated lux meter (for example, INS DX-100). You should calibrate the lux meter annually.

        -   A printout of the test chart on matte paper from a high quality inkjet (for example, an HP Z2100). You can get this high resolution PDF test chart [here](http://download.microsoft.com/download/8/0/0/80080840-64DC-4929-9B67-16B83E946C6B/HCK Video Test Chart.pdf).

-   Dimmable lights:

    -   Two Impact light stands.

    -   Two light mounts that have reflectors. For example, an Impact 5" reflector floodlight kit.

    -   An INSTEON plug-in lamp dimmer module.

    -   An INSTEON wireless keypad RemoteLinc 2 (optional).

    -   A 3-to-1 extension cord.

    -   Two Philips 422154 12.5-Watt A19 LED dimmable light bulbs.

Finally, the device you’re testing must have an IPv6 address.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](http://go.microsoft.com/fwlink/p/?linkID=313856)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20July%2016,%202013%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





