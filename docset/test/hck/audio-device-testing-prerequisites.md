---
author: joshbax-msft
title: Audio Device Testing Prerequisites
description: Audio Device Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6d779389-49a8-459b-94b4-d4f18ef23c79
---

# Audio Device Testing Prerequisites


This section describes the tasks that you must complete before you test an audio device by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hck-audio-hr).

-   [Review the software requirements](#bkmk-hck-audio-sr).

-   [Configure the test computers](#bkmk-hck-audio-tc).

## <a href="" id="bkmk-hck-audio-hr"></a>Hardware requirements


The following hardware is required for testing an audio device. You might need additional hardware if the test device provides bus-specific support. To determine whether additional hardware requirements apply, see the test description for each bus-specific test.

-   Two test computers. These test computers must meet the Windows HCK prerequisites and must be included in the same computer pool. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md). If the device being tested is a Bluetooth audio device, you need one of the test computers to include a Bluetooth radio, or you must have a Bluetooth controller adapter installed or connected to one of the test computers.

-   One audio device to be tested.

-   For in-air tests, a microphone or another active source for audio capture.

    **Note**  
    For in-air tests, a microphone or another active capture source (such as an S/PDIF cable that is attached to an audio/video receiver that is actively playing back audio) must be attached to all capture endpoints. In addition, speakers or headphones must be attached to all render endpoints.

     

-   A sound playback device (speakers or headphones).

-   An Audio Precision System Two analyzer. This is required when the [Fidelity Test (Manual) - Certification](fidelity-test--manual----certification8b8c3865-bbeb-4fee-b0af-cac958abff0b.md) test is run and a host computer (x86 or AMD64 based) is used for communication during that test.

-   An audio loopback cable.

    **Note**  
    For loopback tests, loopback cables must be plugged into all jacks under testing. This links the render jacks to the capture jacks.

     

**Warning**  
All audio devices must be plugged in during audio testing.

 

The following diagram shows how to configure your hardware for Device.Audio testing.

![diagram of a windows hck setup for audio device te](images/typicalwindowshcksetupfortestingaudiodevices.jpg)

This configuration is specifically required to complete the Audio Fidelity test; however, all other audio tests can be completed without changes to this setup.

**Note**  
To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that do not include a driver to test, such as hard disk drive tests, the Windows HCK scheduler constrains the tests that validate the device’s and driver’s Rebalance, D3 State and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Test personnel must make sure that the first test computer in the list meets the minimum hardware requirements.

 

**Note**  
Except for para-virtualization drivers (as defined by Logo Program Requirement Policy-0020), you may not use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. All virtualization products do not support the underlying functionality that is required to pass the tests that relate to multiple processor groups, device power management, device PCI functionality, and other tests.

 

## <a href="" id="bkmk-hck-audio-sr"></a>Software requirements


The following software is required for testing an audio device:

-   The drivers for the test device.

-   The latest Windows HCK filters or updates.

-   Audio Precision System Two software

    **Note**  
    The second computer is required to complete the [Fidelity Test (Manual) - Certification](fidelity-test--manual----certification8b8c3865-bbeb-4fee-b0af-cac958abff0b.md). However, if that test is run in Import log mode, the audio processor is not required.

     

## <a href="" id="bkmk-hck-audio-tc"></a>Test computer configuration


To complete audio testing, you must configure two computers. The computer that includes the test audio device is referred to as the System under Test (SUT). The computer that receives audio communications from the SUT is referred to as the AP Host.

**Note**  
The secondary computer must contain either an x86 or an AMD64 processor.

 

To configure the SUT for the testing of an audio device follow these steps:

If your SUT supports HDMI video and audio output capability, you SUT must be connected to an HDMI audio capable device such as an HDMI Monitor or an A/V Receiver.

1.  Install the appropriate Windows operating system on the test computer and then configure the computer for your test network (the network that contains the Windows HCK Studio and Windows HCK Controller.

2.  For an external audio device, install or attach the hardware to be tested on the test computer.

3.  Install the manufacturer-supplied device driver, if you have to, on the test computer.

4.  Set up the device configuration that is specified in the [Fidelity Test (Manual) - Certification](fidelity-test--manual----certification8b8c3865-bbeb-4fee-b0af-cac958abff0b.md).

5.  Check that the capture device functions correctly on the test computer. If you are testing a Bluetooth audio device, verify that it is paired with the test computer.

6.  Install the Windows HCK client application on the test computer.

7.  By using Windows HCK Studio, create a machine pool and move the test computer to that pool.

To configure the AP Host for the testing of an audio device follow these steps:

1.  Install the appropriate Windows operating system on the test computer and then configure the computer for your test network.

2.  Install the Windows HCK client application on the test computer.

3.  Using Windows HCK Studio, move the AP Host computer to the same machine pool that contains the test computer.

If the test computers include a third-party firewall, then the SUT and AP host must be configured as follows:

-   On the SUT there must be a firewall exclusion to allow the Fidelitytestapp.exe (located at *&lt;testbinroot&gt;*\\nttest\\multimediatest\\avcore\\audio\\wdk) to receive incoming traffic on port 135.

-   On the AP Host, there must be a firewall exclusion to allow the dllhost.exe (located at *&lt;windir&gt;*\\system32) to receive incoming traffic on port 135.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

 

 






