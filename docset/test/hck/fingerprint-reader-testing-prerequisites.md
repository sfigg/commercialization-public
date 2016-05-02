---
author: joshbax-msft
title: Fingerprint Reader Testing Prerequisites
description: Fingerprint Reader Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 35b5c123-e7d5-491c-8fe4-df88e037354b
---

# Fingerprint Reader Testing Prerequisites


This section describes the tasks that you must complete before you test a fingerprint reader by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements).

-   [Configure the test computer](#bkmk-configure).

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware requirements


The following hardware is required for testing a fingerprint reader. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the test description for each test that appears for the device in Windows HCK Studio.

-   One test computer. The test computer must meet the Windows HCK prerequisites. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   The fingerprint reader to be tested.

-   One certified USB 2.0 hub if the fingerprint reader is a USB-based device.

**Note**  
To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that do not include a driver to test, such as hard disk drive tests, the Windows HCK scheduler constrains the tests that validate the device’s and driver’s Rebalance, D3 State and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Test personnel must make sure that the first test computer in the list meets the minimum hardware requirements.

 

**Note**  
Except for para-virtualization drivers (as defined by Logo Program Requirement Policy-0020), you may not use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. All virtualization products do not support the underlying functionality that is required to pass the tests that relate to multiple processor groups, device power management, device PCI functionality, and other tests.

 

## <a href="" id="bkmk-softwarerequirements"></a>Software requirements


The following software is required for testing a fingerprint reader:

-   The drivers for the test device.

-   The latest Windows HCK filters or updates.

## <a href="" id="bkmk-configure"></a>Test computer configuration


To configure the test computer for your test device, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network (the network that contains the Windows HCK Studio and Windows HCK Controller.

2.  If the test device is connected through the USB port, connect the USB 2.0 controller to the high-speed USB 2.0 hub, and then connect the test device to the downstream port of the high-speed USB 2.0 hub.

    **Note**  
    Do not connect the USB test device directly to the root hub of the USB 2.0 controller.

     

3.  Attach the fingerprint reader to the test computer.

4.  If you have to install the manufacturer-supplied device driver on the test computer, do this now.

5.  Check that the fingerprint reader functions correctly on the test computer.

6.  Install the Windows HCK client application on the test computer.

7.  Use Windows HCK Studio to create a machine pool, and then move the test computer to that pool.

8.  Create test directory \[SYSTEMDRIVE\]\\FingerprintReaderTest.

9.  Copy the adapter DLLs from \[SYSTEMDRIVE\]\\Windows\\System32\\WinBioPlugins for the sensor, storage, and engine adapters.

10. Create configuration files for the sensor, storage, and engine adapters using the following templates.

11. Edit the **sensorAdapterLib**, **engineAdapterLib**, and **storageAdapterLib** configuration tags to point to correct adapter DLLs as copied previously.

12. Edit the **supportedModes** and **supportedPurposes** configuration tags to match the device capabilities.

13. The **runOptional** attribute is false by default. Change it to **true** to run extra tests.

14. For storage tests, change the **deviceRequired** attribute to **true** if the device has onboard storage.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

Before running any fingerprint reader driver or adapter tests, stop and disable the Windows Biometric Service. If the biometric service is running while the fingerprint reader HCK tests execute, there may be a conflict between the two, and test results will not be accurate.

## Writing test configuration files


Before running any fingerprint reader adapter tests, you need to create XML configuration files for the sensor, storage, and engine adapters. The names of these files must be SensorTestConfig.XML, EngineTestConfig.XML, and StorageTestConfig.XML. Use the templates below as a starting point and modify them for your specific device.

**Sensor Adapter configuration file**

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<bioTestConfiguration version="0" runOptional="false" runInteractive="true" abortOnFailure="false" manualStep="false" logType="WTT">
  <testSuites>
    <testSuite deviceRequired="true" id="SensorAdapterTestSuite">
      <library>sensortest.dll</library>
      <description>Sensor Adapter Test Suite</description>
    </testSuite>
  </testSuites>
  <deviceInfo>
    <sensorAdapterLib>winbiosensoradapter.dll</sensorAdapterLib>
    <engineAdapterLib>engineadapter.dll</engineAdapterLib>
    <storageAdapterLib>winbiostorageadapter.dll</storageAdapterLib>
    <indicatorSupported>0</indicatorSupported>
    <supportedModes>
      <supportedMode>0x01</supportedMode>
      <supportedMode>0x02</supportedMode>
    </supportedModes>
    <supportedPurposes>
      <supportedPurpose>0x01</supportedPurpose>
      <supportedPurpose>0x02</supportedPurpose>
      <supportedPurpose>0x04</supportedPurpose>
      <supportedPurpose>0x08</supportedPurpose>
      <supportedPurpose>0x10</supportedPurpose>
      <supportedPurpose>0x80</supportedPurpose>
    </supportedPurposes>
  </deviceInfo>
</bioTestConfiguration>
```

**Engine Adapter configuration file**

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<bioTestConfiguration version="0" runOptional="false" runInteractive="true" abortOnFailure="false" manualStep="false" logType="WTT">
  <testSuites>
    <testSuite deviceRequired="true" id="EngineAdapterTestSuite">
      <library>enginetest.dll</library>
      <description>Engine Adapter Test Suite</description>
    </testSuite>
  </testSuites>
  <deviceInfo>
    <sensorAdapterLib>winbiosensoradapter.dll</sensorAdapterLib> 
    <engineAdapterLib>engineadapter.dll</engineAdapterLib> 
    <storageAdapterLib>winbiostorageadapter.dll</storageAdapterLib> 
    <indicatorSupported>0</indicatorSupported>
    <engineOnDevice>FALSE</engineOnDevice>
    <supportedModes>
      <supportedMode>0x01</supportedMode>
      <supportedMode>0x02</supportedMode>
    </supportedModes>
    <supportedPurposes>
      <supportedPurpose>0x01</supportedPurpose>
      <supportedPurpose>0x02</supportedPurpose>
      <supportedPurpose>0x04</supportedPurpose>
      <supportedPurpose>0x08</supportedPurpose>
      <supportedPurpose>0x10</supportedPurpose>
      <supportedPurpose>0x80</supportedPurpose>
    </supportedPurposes>
  </deviceInfo>
</bioTestConfiguration>
```

**Storage Adapter configuration file**

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<bioTestConfiguration version="0" runOptional="false" runInteractive="true" abortOnFailure="false" manualStep="false" logType="WTT">
  <testSuites>
    <testSuite deviceRequired="false" id="StorageAdapter">
      <library>storagetest.dll</library>
      <description>Storage Adapter Test Suite</description>
    </testSuite>
  </testSuites>
  <deviceInfo>
    <sensorAdapterLib>winbiosensoradapter.dll</sensorAdapterLib>
    <engineAdapterLib>engineadapter.dll</engineAdapterLib>
    <storageAdapterLib>winbiostorageadapter.dll</storageAdapterLib>
    <indicatorSupported>0</indicatorSupported>
    <storageOnDevice>FALSE</storageOnDevice>
    <supportedModes>
      <supportedMode>0x01</supportedMode>
      <supportedMode>0x02</supportedMode>
    </supportedModes>
    <supportedPurposes>
      <supportedPurpose>0x01</supportedPurpose>
      <supportedPurpose>0x02</supportedPurpose>
      <supportedPurpose>0x04</supportedPurpose>
      <supportedPurpose>0x08</supportedPurpose>
      <supportedPurpose>0x10</supportedPurpose>
      <supportedPurpose>0x80</supportedPurpose>
    </supportedPurposes>
  </deviceInfo>
</bioTestConfiguration>
```

## Additional configuration tags


In the configuration file, under the “device information” section, there are three additional tags:

``` syntax
<deviceInfo>

    <badSwipeDetectionPoint> VALUE </badSwipeDetectionPoint>
    <privateConnectionSensorToEngine>BOOLEAN</privateConnectionSensorToEngine>
    <privateConnectionEngineToStorage>BOOLEAN</privateConnectionEngineToStorage>

</deviceInfo>
```

**badSwipeDetectionPoint**

-   SensorFinishCapture

-   EngineAcceptData

-   EngineProcessData

**Note**  
A maximum of one badSwipeDetectionPoint tag can appear in a single test configuration file.

 

**privateConnectionSensorToEngine**

-   If TRUE, this indicates that there is an internal connection between the sensor and the engine components that is not managed by the WinBio Framework.

-   If FALSE, the connection between the sensor and engine uses the standard WinBio adapter interfaces.

**privateConnectionEngineToStorage**

-   If TRUE, this indicates that there is internal connection between the engine and storage components that is not managed by the WinBio Framework.

-   If FALSE, the connection between the engine and storage uses the standard WinBio adapter interfaces.

**Note**  
For a compound device, it’s possible to set both the privateConnectionSensorToEngine and privateConnectionEngineToStorage.

 

**engineOnDevice**

-   If TRUE, this indicates that the fingerprint sensor supports the engine functionality in hardware. This typically implies that the sensor is an advanced sensor.

-   If FALSE, this indicates that the fingerprint sensor supports the engine functionality in software. This typically implies that the sensor is a basic sensor.

**storageOnDevice**

-   If TRUE, this indicates that the fingerprint sensor supports template storage in hardware. This typically implies that the sensor is an advanced sensor.

-   If FALSE, this indicates that the fingerprint sensor does not support template storage in hardware. Templates are stored on disk. This typically implies that the sensor is a basic sensor.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Fingerprint%20Reader%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




