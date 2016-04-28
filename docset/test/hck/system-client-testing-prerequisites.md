---
author: joshbax-msft
title: System Client Testing Prerequisites
description: System Client Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3031d154-88a8-4828-8e9a-6c50e626af1c
---

# System Client Testing Prerequisites


This section describes the tasks that you must complete before you test a client system by using the Windows Hardware Certification Kit (Windows HCK):

-   [Hardware requirements](#bkmk-hck-client-hr)

-   [Software requirements](#bkmk-hck-client-sr)

-   [Bluetooth System Requirements](#bkmk-hck-client-br)

-   [Test computer configuration](#bkmk-hck-client-tc)

## <a href="" id="bkmk-hck-client-hr"></a>Hardware requirements


To certify your client systems for Windows 8 and Windows 8.1, you’ll need the following hardware in addition to the system that you’re testing:

-   Another computer. Ideally, the second computer is already certified.

    **Note**  
    If you’re testing a computer with Bluetooth, the second computer must also have Bluetooth 4.0 or have a Bluetooth adapter installed.

     

-   An audio device (if the test system supports audio).

-   An audio loopback cable (if the test system supports audio).

-   An external speaker.

-   A network adapter.

-   Two USB flash drives.

-   One data CD.

-   One USB 3.0 hub for every exposed port.

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

    You must pre-configure the Windows To Go drive with a valid Windows image (WIM) file to test the computer. It must include any drivers that are needed to use the system’s hardware.

-   A mirror large enough to reflect a screen image back into the camera (if the system has a webcam).

-   USB SuperMutt.

-   A USB 3.0 device, such as a USB 3.0 storage device.

-   Debug cables that match the transport that supports debugging on the system being tested.

-   If you are testing a webcam, you will also need:

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

-   The device that you are testing must have an IPv6 address.

## <a href="" id="bkmk-hck-client-sr"></a>Software requirements


Preinstall any software as by your hardware manufacture, including any special device drivers.

## <a href="" id="bkmk-hck-client-br"></a>Bluetooth System Requirements


When certifying a System with an integrated Bluetooth radio through the Windows HCK, all drivers and packages, including filter drivers, profile packs, and 3rd party drivers must be installed on the Primary machine if the system ships with these drivers.

The system must be tested in the shipping Windows configuration, and no changes to Bluetooth settings should be made unless the system ships with these settings.

The Bluetooth radio included with the system must have been previously certified through the Windows HCK. For more information, see [Bluetooth Controller Testing Prerequisites](bluetooth-controller-testing-prerequisites.md).

## <a href="" id="bkmk-hck-client-tc"></a>Test computer configuration


Before running system tests, you must configure the test system and install the operating system. This section summarizes the related procedures.

**Important**  
Before you begin testing, make sure that you enable all of the devices in the test system and load all of the related drivers.

 

**To assemble the test computer**

1.  On the test system, install a network adapter.

2.  Connect the test system to a network hub.

3.  Connect the additional system to the network hub.

4.  Set the test system BIOS to support the S3 sleep state.

5.  On the test system, install the appropriate Microsoft Windows operating system.

6.  During this installation of the operating system, delete any existing partitions, and create a boot partition. Note, for Business Logo see note at bottom of page.

7.  During installation of the operating system, you must also add the test system to a domain or workgroup.

8.  Install any manufacturer-supplied drivers that devices in the test system require.

9.  On the test system, install the HCK client software from the test server.

10. On the additional system, install the appropriate Windows operating system.

11. During installation of the operating system, add the additional system to the same domain or workgroup that the test system belongs to.

12. Install one serial loopback connector on the serial port of the test system.

**To configure the test computer**

1.  On each test computer, from the Control Panel, under Power Options, set the following options:

    -   Turn off monitor set to Never.

    -   System standby set to Never.

    -   If there is a System hibernates set to Never.

    -   In the Power Options Properties dialog box, click the Hibernate tab, and clear the Enable hibernation check box.

2.  Repeat step 1 on the additional system.

3.  Insert a valid data CD into the CD or DVD drive of the test system.

Once your test computers are configured, you are ready to begin testing. Refer to [Step 4: Create a project](step-4-create-a-project.md).

## Mobile Broadband Testing Requirements


The following figure provides an overview of the Mobile broadband LAN test setup.

![mobile broadband testing configuration](images/hck-winb-systemclient-mb-configuration.png)

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

## Related topics


[Combined Radio Tests Prerequisites](combined-radio-tests-prerequisites.md)

[System.Client Testing](systemclient-testing.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20System%20Client%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





