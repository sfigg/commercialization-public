---
author: joshbax-msft
title: Sensor Device Testing Prerequisites
description: Sensor Device Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 04c73fd8-d61e-4d7e-b87f-61513c6d5093
---

# Sensor Device Testing Prerequisites


This section describes the tasks that you must complete before you test a sensor device by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hck-sensor-hr).

-   [Review the software requirements](#bkmk-hck-sensor-sr).

-   [Configure the test computer](#bkmk-hck-sensor-tc).

Sensor devices as defined here are devices that work with the Windows® Sensor and Location platform. Currently this platform is only available on Windows 8 and Windows 7.

## <a href="" id="bkmk-hck-sensor-hr"></a>Hardware requirements


The following hardware is required for testing a sensor device. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the test description for each test displayed for the device in Windows HCK Studio.

-   One test computer. The test computer must meet the Windows HCK requirements. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   The sensor device to be tested.

-   USB hubs are required for sensors that are connected via USB. (Sensors that are connected via I2C or other bus do not need a hub).

## <a href="" id="bkmk-hck-sensor-sr"></a>Software requirements


The following software is required for testing a sensor device:

-   The drivers for the test device.

-   The latest Windows HCK filters or updates.

## <a href="" id="bkmk-hck-sensor-tc"></a>Test computer configuration


To configure the test computer for your test sensor device, follow these steps:

**Note**  
If you are testing a GPS device, be sure to enable the **Allow Apps To Use my location** privacy setting before running any tests. Otherwise, the GPS tests will fail.

 

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network. The test network is the network that contains Windows HCK Studio and Windows HCK Controller.

    **Note**  
    To test your sensor device, the test computer must be running Windows 8 or Windows 7.

     

2.  If the sensor uses USB as the connection type, connect the USB 2.0 controller to the high-speed USB 2.0 hub, and then connect the sensor to the downstream port of the high-speed USB 2.0 hub.

    **Note**  
    Do not connect the USB test device directly to the root hub of the USB 2.0 controller.

     

3.  If you have to install the manufacturer-supplied device driver on the test computer, do this now.

4.  Verify that the sensor device functions correctly on the test computer.

5.  Install the Windows HCK client application on the test computer.

6.  Use Windows HCK Studio to create a machine pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

 

 






