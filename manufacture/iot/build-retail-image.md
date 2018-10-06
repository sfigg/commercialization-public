---
author: kpacquer
Description: 'Convert our test image to a retail build.'
MS-HAID: 'p\_iot\_core.build\_retail\_image'
MSHAttr: 'PreferredLib:/library'
title: 'Lab 1f: Build a retail image'
ms.author: kenpacq
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Lab 1f: Build a retail image

We'll take our customizations, put them together, and test them in a retail build. 

## <span id="Prerequisites"></span><span id="prerequisites"></span><span id="PREREQUISITES"></span>Prerequisites

-   [Lab 1a: Create a basic image](create-a-basic-image.md)
-   [Lab 1b: Add an app to your image](deploy-your-app-with-a-standard-board.md)
-   [Lab 1c: Add a file and a registry setting to an image](add-a-registry-setting-to-an-image.md)
-   [Lab 1d: Add networking and other provisioning package settings to an image](add-a-provisioning-package-to-an-image.md)
-   [Lab 1e: Add a driver to an image](add-a-driver-to-an-image.md)

## <span id="Add_your_features_to_the_retail_configuration_file"></span><span id="add_your_features_to_the_retail_configuration_file"></span><span id="ADD_YOUR_FEATURES_TO_THE_RETAIL_CONFIGURATION_FILE"></span>Add your features to the retail configuration

1.  Update the product retail configuration file using [Add-IoTProductFeature](https://github.com/ms-iot/iot-adk-addonkit/blob/master/Tools/IoTCoreImaging/Docs/Add-IoTProductFeature.md)

    ``` powershell
    # Add application features
    Add-IoTProductFeature ProductA Test APPX_MYUWPAPP -OEM
    Remove-IoTProductFeature ProductA Test IOT_BERTHA
    # Add registry and file features
    Add-IoTProductFeature ProductA Retail FILES_CONFIGS -OEM
    Add-IoTProductFeature ProductA Retail REGISTRY_SETTINGS -OEM
    # Add provisioning feature
    Add-IoTProductFeature ProductA Retail PROV_WIFISETTINGS -OEM
    # Add driver
    Add-IoTProductFeature ProductA Retail DRIVERS_HELLOBLINKY -OEM
    ```

## <span id="Build_and_create_the_image"></span><span id="build_and_create_the_image"></span><span id="BUILD_AND_CREATE_THE_IMAGE"></span>Build and create the image

1.  [Get a code-signing certificate](https://docs.microsoft.com/windows-hardware/drivers/dashboard/get-a-code-signing-certificate). For the kernel driver signing, Standard Code signing certificate is sufficient. You will require an EV cert to access the Device Update Center in Hardware Dev Center portal.

2. Download a [Cross-Certificates for Kernel Mode Code Signing](https://docs.microsoft.com/en-us/windows-hardware/drivers/install/cross-certificates-for-kernel-mode-code-signing) that matches the CA of the code-signing certificate from the previous step.

3.	Configure the code signing certificate for retail signing in `C:\MyWorkspace\IoTWorkspace.xml`

    ```xml
    <!--Specify the retail signing certificate details, Format given below -->
    <RetailSignToolParam>/s my /i "Issuer" /n "Subject" /ac "C:\CrossCertRoot.cer" /fd SHA256</RetailSignToolParam>
    ```
	-  Issuer        : Issuer of the code-signing certificate (see Certificate -> Details -> Issuer) 
	
	-  Subject       : Subject in the code-signing certificate (see Certificate -> Details -> Subject)
	
	-  CrossCertRoot : Full path of the Cross-Certificate file that was downloaed in step 2.

    You could also specify the certificate by the thumbprint
    ```xml
    <!--Specify the retail signing certificate details, Format given below -->
    <RetailSignToolParam>/s my /sha1 "thumbprint" /fd SHA256</RetailSignToolParam>
    ```
	
4.	From the IoT Core Shell, enable retail signing using [Set-IoTRetailSign](https://github.com/ms-iot/iot-adk-addonkit/blob/master/Tools/IoTCoreImaging/Docs/Set-IoTRetailSign.md).

    ``` powershell
	Set-IoTRetailSign On
    (or) retailsign On
	```
	
5.	Rebuild all the packages so that they are retail signed.

    ``` powershell
	buildpkg all
	```

    If the BSP drivers/packages are test signed, you need to rebuild them to have retail signature. You can re-sign the cabs and its contents using [Redo-IoTCabSignature](https://github.com/ms-iot/iot-adk-addonkit/blob/master/Tools/IoTCoreImaging/Docs/Redo-IoTCabSignature.md)

    ``` powershell
    Redo-IoTCabSignature <srccabdir> <dstcabdir>
    (or) re-signcabs <srccabdir> <dstcabdir>
    ```
	Update the `<BSPPkgDir>` in the `IoTWorkspace.xml` to `<dstcabdir>`
6.  Create the image:

    ``` powershell
    buildimage ProductA Retail
    ```

    This creates the product binaries at `C:\MyWorkspace\Build\<arch>\ProductA\Retail\Flash.ffu`.

7.  Start **Windows IoT Core Dashboard** &gt; **Setup a new device** &gt; **Custom**, and browse to your image. Put the Micro SD card in the device, select it, accept the license terms, and click **Install**. This replaces the previous image with our new image.

8.  Put the card into the IoT device and start it up.

    After a short while, the device should start automatically, and you should see your app.

**Check to see if everything is working**

With retail builds, you won't be able to log into the device using the SSH clients or by using the web interface. However, any files and reg keys that your app relies on should still work.

## <span id="Next_steps"></span><span id="next_steps"></span><span id="NEXT_STEPS"></span>Next steps

- [Lab 2: Creating your own board support package](create-a-new-bsp.md)
