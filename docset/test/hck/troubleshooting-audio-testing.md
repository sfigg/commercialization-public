---
author: joshbax-msft
title: Troubleshooting Audio Testing
description: Troubleshooting Audio Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8760b2f8-f288-4141-9e6f-ca1655d0b95c
---

# Troubleshooting Audio Testing


This article describes how to troubleshoot problems that can occur during Windows Hardware Certification Kit (Windows HCK) Device.Audio and System.Fundamentals audio tests.

**In this article:**

-   [General audio test issues](#gen)

-   [Jack detection issues](#jack)

-   [Wireless display issues](#wireless)

## <a href="" id="gen"></a>General audio test issues


To troubleshoot general audio test issues, start with the following steps:

1.  Make sure that all audio endpoints are connected and capable of streaming. This includes but is not limited to headphones, high definition multimedia interface (HDMI), DisplayPort, Sony/Philips digital interface (S/PDIF), and other endpoints.

    1.  To verify that all devices are connected, open the sound control panel by typing **mmsys.cpl** from a command prompt window. All devices on both the playback and recording tabs should show as being connected.

    2.  Sometimes devices do not display if they were disconnected or disabled. To make sure that all devices are visible, right-click the background of the control panel and verify that both **Show Disabled Devices** and **Show Disconnected Devices** are checked.

    3.  To check endpoints on the playback tab for streaming capability, right-click the endpoint and select **Test**. You should hear audio from the endpoint and see the corresponding meter move.

    4.  To check endpoints in the recording tab for streaming capability, speak into the microphone and confirm that the meter moves.

2.  The fidelity test has a complex setup. Review [Fidelity Test (Manual) - Certification](fidelity-test--manual----certification8b8c3865-bbeb-4fee-b0af-cac958abff0b.md) to confirm that the test environment is set up correctly. Make sure that you have the cables connected properly. Improperly connected or missing cables result in failures, such as very low THD+N.

3.  The audio logo tests include several test cases that validate the zero glitch requirement. If a test fails on a glitch test case, we recommend that you review the hardware and driver for issues that can cause glitches. In particular, look for the following causes:

    -   Improper thread priority in drivers together with long DPC / ISRs.

    -   Improper hardware power management.

4.  If a test fails, look for usable information in the Windows HCK Studio test log. If you find usable information, resolve the issue and rerun the test.

5.  Verify that you have installed the latest Windows HCK filters and kit updates. For more information, see [Windows Hardware Certification Kit Filters](windows-hardware-certification-kit-filters.md).

6.  Review the following Windows HCK topics:

    -   [Troubleshooting Windows HCK Test Failures](troubleshooting-windows-hck-test-failures.md)

    -   [Audio Device Testing Prerequisites](audio-device-testing-prerequisites.md)

## <a href="" id="jack"></a>Jack detection issues


Some audio-device vendors use a four-ring combo jack, which uses headsets that similar to the headsets that are used for the iPhone. Normal microphone or head phone plugs have the following three contacts (TRS): tip: left, ring: right, and sleeve: ground. The combo headset has the following four contacts (TRRS): tip: left, ring1: right, ring2: ground, and sleeve: microphone. These combo jacks are connected to two ports on the Codec simultaneously. Therefore, they must trigger two jack-detection signals simultaneously.

There is a known issue with the HDAudio.sys driver on Windows 7 and Windows Vista. It does not correctly handle simultaneous, or nearly simultaneous, jack-detection signals. You can work around this issue by plugging the device into the jack more slowly.

## <a href="" id="wireless"></a>Wireless display issues


The audio tests listed below are not suitable for testing devices supporting Wireless Display functionality. It is possible for the tests to fail the devices due to unreachable audio endpoints while a wireless endpoint is connected.

**Affected Audio Tests**

-   Audio Logo Test

-   Class Driver Audio Logo Test

-   Class Driver KS Topology

-   Class Driver Round Trip Test

-   Round Trip Test

The error message is **FAIL: Endpoint (XXXXXX) is unplugged**, where *XXXXXX* is the name of Wireless Audio Endpoint.

**Workaround**

Prior to running the affected audio tests, disconnect wirelessly-connected endpoints, such as wireless monitors, from the test device. You can reconnect the wireless endpoints after testing.

## Related topics


[Device.Audio Testing](deviceaudio-testing.md)

[System.Fundamentals Tests](systemfundamentals-tests.md)

[Troubleshooting Windows HCK](troubleshooting-windows-hck.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Troubleshooting%20Audio%20Testing%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





