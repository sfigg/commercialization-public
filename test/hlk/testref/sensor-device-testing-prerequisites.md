---
title: Sensor Device Testing Prerequisites
description: Sensor Device Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7605565d-1ac1-45ba-8537-1c6136ae044e
---

# Sensor Device Testing Prerequisites


This section describes the tasks that you must complete before you test a sensor device by using the Windows Hardware Lab Kit (Windows HLK):

-   [Hardware requirements](#bkmk-hck-sensor-hr).

-   [Software requirements](#bkmk-hck-sensor-sr).

-   [Test computer configuration](#bkmk-hck-sensor-tc).

Sensor devices as defined here are devices that work with the Windows® Sensor and Location platform. Currently this platform is only available on Windows 8 and Windows 7.

## <span id="BKMK_HCK_Sensor_hR"></span><span id="bkmk_hck_sensor_hr"></span><span id="BKMK_HCK_SENSOR_HR"></span>Hardware requirements


The following hardware is required for testing a sensor device. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the test description for each test displayed for the device in Windows HLK Studio.

-   One test computer. The test computer must meet the Windows HLK requirements. For more information, see [Windows HLK Prerequisites](p_sxs_hlk.windows_hlk_prerequisites).

-   The sensor device to be tested.

-   USB hubs are required for sensors that are connected via USB. (Sensors that are connected via I2C or other bus do not need a hub).

## <span id="BKMK_HCK_Sensor_sR"></span><span id="bkmk_hck_sensor_sr"></span><span id="BKMK_HCK_SENSOR_SR"></span>Software requirements


The following software is required for testing a sensor device:

-   The drivers for the test device.

-   The latest Windows HLK filters or updates.

## <span id="BKMK_HCK_Sensor_tC"></span><span id="bkmk_hck_sensor_tc"></span><span id="BKMK_HCK_SENSOR_TC"></span>Test computer configuration


To configure the test computer for your test sensor device, follow these steps:

**Note**  
If you are testing a GPS device, be sure to enable the **Allow Apps To Use my location** privacy setting before running any tests. Otherwise, the GPS tests will fail.

 

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network. The test network is the network that contains Windows HLK Studio and Windows HLK Controller.

    **Note**  
    To test your sensor device, the test computer must be running Windows 8 or Windows 7.

     

2.  If the sensor uses USB as the connection type, connect the USB 2.0 controller to the high-speed USB 2.0 hub, and then connect the sensor to the downstream port of the high-speed USB 2.0 hub.

    **Note**  
    Do not connect the USB test device directly to the root hub of the USB 2.0 controller.

     

3.  If you have to install the manufacturer-supplied device driver on the test computer, do this now.

4.  Verify that the sensor device functions correctly on the test computer.

5.  Install the Windows HLK client application on the test computer.

6.  Use Windows HLK Studio to create a machine pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HLK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20Sensor%20Device%20Testing%20Prerequisites%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




