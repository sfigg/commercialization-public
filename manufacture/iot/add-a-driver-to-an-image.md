---
author: kpacquer
Description: 'We''ll show you one of two ways to add a driver to the image.'
title: 'Lab 1e: Add a driver to an image'
ms.author: kenpacq
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Lab 1e: Add a driver to an image


In this lab, we'll add the sample driver: [Hello, Blinky!](https://developer.microsoft.com/windows/iot/samples/driverlab), package it up, and deploy it to the to a Windows 10 IoT Core device.

## <span id="Prerequisites"></span><span id="prerequisites"></span><span id="PREREQUISITES"></span>Prerequisites

* Create a product folder (ProductB) that's set up to boot to the default (Bertha) app, as shown in [Lab 1a: Create a basic image](create-a-basic-image.md) or [Lab 1c: Add a file and a registry setting to an image](add-a-registry-setting-to-an-image.md).

## <span id="Check_for_similar_drivers"></span>Check for similar drivers

Before adding drivers, you may want to review your pre-built Board Support Package (BSP) to make sure there's not already a similar driver. 

For example, review the list of drivers in the file: \\IoT-ADK-AddonKit\\Source-arm\\BSP\\Rpi2\\Packages\\RPi2FM.xml.

- If there's not an existing driver, you can usually just add one.

- If there is a driver, but it doesn't meet your needs, you'll need to replace the driver by creating a new BSP. We'll cover that in [Lab 2](create-a-new-bsp.md).

## <span id="Create_your_test_files"></span><span id="create_your_test_files"></span><span id="CREATE_YOUR_TEST_FILES"></span>Create your test files

-  Complete the exercises in [Installing The Sample Driver](https://developer.microsoft.com/windows/iot/samples/driverlab1) to build the Hello, Blinky app. You'll create the files: gpiokmdfdemo.inf, and gpiokmdfdemo.sys, which you'll use to install the driver.

   You can also use your own IoT Core driver, so long as it doesn't conflict with the existing Board Support Package (BSP).

-  Copy each of the files: gpiokmdfdemo.sys and gpiokmdfdemo.inf into a test folder, for example, C:\gpiokmdfdemo\.

## <span id="Build_a_package_for_your_driver"></span><span id="build_a_package_for_your_driver"></span><span id="BUILD_A_PACKAGE_FOR_YOUR_DRIVER"></span>Build a package for your driver

1.  In the IoT Core Shell, create a **driver package** using [New-IoTDriverPackage](https://github.com/ms-iot/iot-adk-addonkit/blob/master/Tools/IoTCoreImaging/Docs/Add-IoTDriverPackage.md)

    ``` powershell
    Add-IoTDriverPackage C:\gpiokmdfdemo\gpiokmdfdemo.inf Drivers.HelloBlinky
    (or) newdrvpkg C:\TestDriver\MyTest.inf
    ```

    This creates a new folder at `C:\MyWorkspace\Source-<arch>\Packages\Drivers.HelloBlinky`.

    This also adds a FeatureID **DRIVERS_HELLOBLINKY** to the `C:\MyWorkspace\Source-<arch>\Packages\OEMFM.xml` file.

2.  Build the package using [New-IoTCabPackage](https://github.com/ms-iot/iot-adk-addonkit/blob/master/Tools/IoTCoreImaging/Docs/New-IoTCabPackage.md)

    ``` powershell
    New-IoTCabPackage Drivers.HelloBlinky
    (or) buildpkg Drivers.HelloBlinky
    ```
    
## <span id="Update_the_project_s_configuration_files"></span><span id="update_the_project_s_configuration_files"></span><span id="UPDATE_THE_PROJECT_S_CONFIGURATION_FILES"></span>Update the project's configuration files

1.  Update the product test configuration file using [Add-IoTProductFeature](https://github.com/ms-iot/iot-adk-addonkit/blob/master/Tools/IoTCoreImaging/Docs/Add-IoTProductFeature.md)

    ``` powershell
    Add-IoTProductFeature ProductB Test DRIVERS_HELLOBLINKY -OEM
    (or) addfid ProductB Test DRIVERS_HELLOBLINKY -OEM
    ```

## <span id="Build_and_test_the_image"></span><span id="build_and_test_the_image"></span><span id="BUILD_AND_TEST_THE_IMAGE"></span>Build and test the image

Build and flash the image using the same procedures from [Lab 1a: Create a basic image](create-a-basic-image.md). Short version:

1.  From the IoT Core Shell, build the image (`buildimage ProductB Test`).
2.  Install the image: Start **Windows IoT Core Dashboard** > Click the **Setup a new device** tab >  select **Device Type: Custom** >
3.  From **Flash the pre-downloaded file (Flash.ffu) to the SD card**: click **Browse**, browse to your FFU file (C:\\IoT-ADK-AddonKit\\Build\\&lt;arch&gt;\\ProductB\\Test\\Flash.ffu), then click **Next**.
4.  Enter device name and password. Put the Micro SD card in the device, select it, accept the license terms, and click *Install**. 
5.  Put the card into the IoT device and start it up.

**Check to see if your driver works**

1.  Use the procedures in the [Hello, Blinky! lab](https://developer.microsoft.com/windows/iot/samples/driverlab3) to test your driver.

## <span id="Next_steps"></span><span id="next_steps"></span><span id="NEXT_STEPS"></span>Next steps

[Lab 1f: Build a retail image](build-retail-image.md)
