---
author: kpacquer
Description: 'Creating your own board support package (BSP)'
title: 'Lab 2: Creating your own board support package (BSP)'
---

# Lab 2: Creating your own board support package (BSP)

If the driver in your pre-built Board Support Package (BSP) doesn't support what you need it to do, you can replace it.

Note, when you modify the BSP, you become the owner for this new, modified BSP. If the original BSP hardware manufacturer provides any updates to the board, you'll need to choose whether to pass the updates on to your own boards.

In our lab, we'll again use the sample GPIO driver: [Hello, Blinky!](https://ms-iot.github.io/content/en-US/win10/samples/DriverLab.htm). We'll also remove the existing GPIO driver from the device.

## <span id="Create_a_new_BSP_working_folder"></span><span id="create_a_new_bsp_working_folder"></span><span id="CREATE_A_NEW_BSP_FILE"></span>Create a new BSP working folder

1.  Create a BSP working folder that you'd like to modify.

    ``` syntax
	newbsp MyRPi2
	```
 
2.  Open the BSP feature manifest file for your new BSP, MyRpi2FM.xml.

    For example, update: **C:\\IoT-ADK-AddonKit\\Source-&lt;arch&gt;\\BSP\\MyRpi2\\MyRPi2FM.xml**.

3.  Add the base packages you'll need.
   
    You can copy these from an existing file, such as \\BSP\RPi2\RPi2FM.xml, or use your own.
   
    Add:
    *  UEFI drivers for the boot partition

    *  Drivers required for UpdateOS

    *  BCD settings

    *  **Device Info: Leave this empty.**  Don't copy this from existing examples. Instead, add the Feature ID: IOT_GENERIC_POP in the OEMInput file.  This prevents your device from receiving updates from the original BSP manufacturer that could wipe out your changes.
		 
    *  Mandatory device drivers

    *  Device-specific customizations
     
4.  Update the device layout.

    You can choose to use the existing device layout, or author your own, as shown as in the example. To learn more, see [Device layout](device-layout.md).
    
5.  Under features, include the drivers that you want. 
	
    You can copy these from an existing file, such as \\BSP\RPi2\RPi2FM.xml, and exclude any drivers that don't apply.
	
	For example, add the HelloBlinky driver:
	
    ``` syntax
        <PackageFile Path="%PKGBLD_DIR%" Name="%OEM_NAME%.Drivers.HelloBlinky.cab">
          <FeatureIDs>
            <FeatureID>RPI2_DRIVERS</FeatureID>
          </FeatureIDs>
        </PackageFile>
    ```

## <span id="Create_a_new_product_folder"></span><span id="create_a_new_product_and_folder"></span><span id="CREATE_A_NEW_PRODUCT_FOLDER"></span>Create a new product folder

1.  Create a new working product folder, adding your BSP name to the end.

    ``` syntax
    newproduct ProductB MyRpi2
    ```

    This creates the folder: C:\\IoT-ADK-AddonKit\\Source-&lt;arch&gt;\\Products\\ProductB, which is linked to the new Y BSP.

## <span id="Update_the_project_s_configuration_files"></span><span id="update_the_project_s_configuration_files"></span><span id="UPDATE_THE_PROJECT_S_CONFIGURATION_FILES"></span>Update the project's configuration files

1.  Open your product's test configuration file: **C:\\IoT-ADK-AddonKit\\Source-arm\\Products\\ProductB\\TestOEMInput.xml**.

2.  Add FeatureIDs:
	
	-  Add the FeatureID: IOT_GENERIC_POP to get OS-only updates.

	-  Add the FeatureIDs: IOT_DISABLE_UMCI and IOT_ENABLE_TESTSIGNING to enable test binaries and packages to work.

    -  Optional: add the FeatureID for the other apps and test packages: OEM_AppxHelloWorld, OEM_CustomCmd, OEM_FileAndRegKey, that you created in Lab 1.

       ``` syntax
       <Microsoft>
          <Feature>IOT_GENERIC_POP</Feature>
	   ...
       </Microsoft>
	
       <OEM> 
          <Feature>RPI2_DRIVERS</Feature> 
          <Feature>PRODUCTION</Feature> 
          <Feature>IOT_DISABLE_UMCI</Feature> 
          <Feature>IOT_ENABLE_TESTSIGNING</Feature> 
          <Feature>OEM_CustomCmd</Feature> 
          <Feature>OEM_AppxHelloWorld</Feature> 
          <Feature>OEM_FileAndRegKey</Feature> 
        </OEM>
    ```

## <span id="Build_and_test_the_image"></span><span id="build_and_test_the_image"></span><span id="BUILD_AND_TEST_THE_IMAGE"></span>Build and test the image

**Build the image**

1.  From the IoT Core Shell, create the image:

    ``` syntax
    createimage ProductB Test
    ```

    This creates the product binaries at C:\\IoT-ADK-AddonKit\\Build\\&lt;arch&gt;\\ProductB\\Flash.FFU.

2.  Start **Windows IoT Core Dashboard** &gt; **Setup a new device** &gt; **Custom**, and browse to your image. 

    Put the Micro SD card in the device, select it, accept the license terms, and click **Install**. This replaces the previous image with our new image.

3.  Put the card into the IoT device and start it up.

    After a short while, the device should start automatically, and you should see your app.

**Check to see if your driver works**

1.  Use the [testing procedures in the Hello, Blinky! lab](https://ms-iot.github.io/content/en-US/win10/samples/DriverLab3.htm) to test your driver.

<!--
## <span id="Next_steps"></span><span id="next_steps"></span><span id="NEXT_STEPS"></span>Next steps
Congratulations, you've completed Lab 2. 

[Lab 2b: Add a provisioning package to an image](add-a-provisioning-package-to-an-image.md)
-->
