---
author: kpacquer
Description: 'We''re now going to take an app (like the sample Hello, World! app), and package it up so that it can be serviced after it reaches your customers.'
ms.assetid: a801d768-0397-4f85-b68f-bd85ddcc3f1f
MSHAttr: 'PreferredLib:/library'
title: 'Lab 1b: Add an app to your image'
---

# Lab 1b: Add an app to your image

\[This content has been tested on Windows 10 IoT Core Build 10586. Some of these procedures do not yet work on newer preview builds, including Windows 10 Anniversary SDK Preview Build 14295.\]

We're now going to take an app (like the sample [Hello, World!](http://go.microsoft.com/fwlink/?LinkID=532945) app), and package it up.

We'll test the app and send it to the device. You can skip these steps if you've already tested your app.

We'll then create a servicable package for it. You'll need packages for each of the apps, device drivers, system files, and registry settings that you add to Windows 10 IoT Core (IoT Core) OEM images. These packages are .cab files, and must be signed before you can load them onto the device. For test builds, you can use test certificates - we'll use them in this guide.

As we create packages, we'll add them to our list of features, the OEM feature manifest (OEMFM.xml). We'll assign each package a Feature ID, which we can refer to later.

We'll add these feature manifests and feature IDs to our testing image configuration file, TestOEMInput.xml.

We're also adding a configuration file that customizes the system to use your app on first boot. This is listed in the feature manifest: OEMCommonFM.xml, with the Feature ID: OEM\_CustomCmd.

Finally, we'll rebuild the project and make sure it works.

**Note**  As we go through this manufacturing guide, ProjectA will start to resemble the SampleA image that's in C:\\IoT-ADK-AddonKit\\Source-arm\\Products\\SampleA.

## <span id="Prerequisites"></span><span id="prerequisites"></span><span id="PREREQUISITES"></span>Prerequisites

We'll use the ProjectA image we created from [Lab 1a: Create a basic image](create-a-basic-image.md).

## <span id="Create_and_test_an_Windows_app"></span><span id="create_and_test_an_windows_app"></span><span id="CREATE_AND_TEST_AN_WINDOWS_APP"></span>Create and test an Windows app


1.  First, create an app. This can be any app designed for IoT Core, saved as an Appx Package. For our example, we use the [Hello, World](https://developer.microsoft.com/en-us/windows/iot/win10/samples/HelloWorld.htm) app.

2.  In Visual Studio, to save the Hello, World app as an Appx package, click **Project > Store > Create App Packages** > **Next**. 

3.  Select: 
    - **Output location: C:\HelloWorld** (or any other path that doesn't include spaces.)
    
    - **Generate app bundle: Never**
    
    Then click **Create**.

    Visual Studio creates the Appx file into C:\HelloWorld\HelloWorld_1.0.0.0_Debug_Test 

4.  Optional: (Test the app)[test-the-app.md]. Note, you may have already tested the app as part of building the project. 


## <span id="Package_the_app"></span><span id="package_the_app"></span><span id="PACKAGE_THE_APP"></span>Package the app

**Create a package for an app**

1.  Open **C:\\IoT-ADK-AddonKit\\Tools\\IoTCoreShell** as an administrator.

2.  Build all of the existing packages in your app (one-time only): 

    ``` syntax
    buildpkg all
    ```

    This command builds all of the packages in our source folders, including a few packages that we've created to help install your app.

3.  Create a working folder for the app, for example:

    ``` syntax
    newAppxPkg "C:\Users\<UserName>\Documents\Visual Studio 2015\Projects\HelloWorld\AppPackages\HelloWorld_1.0.0.0_ARM_Debug_Test\HelloWorld_1.0.0.0_ARM_Debug.appx" Appx.HelloWorld
    ```

    This creates a new working folder at C:\\IoT-ADK-AddonKit\\Source-&lt;arch&gt;\\Packages\\Appx.HelloWorld that includes files that you'll use to help build the package.

4.  From the IoT Core Shell, build the package.

    ``` syntax
    buildpkg Appx.HelloWorld
    ```

    The package is built, appearing as **C:\\IoT-ADK-AddonKit\\Build\\&lt;arch&gt;\\pkgs\\&lt;your OEM name&gt;.Appx.HelloWorld.cab**.

    Watch for any build errors, and correct them - often these are a result of filenames in the package definition file being different from the actual filenames.

## <span id="Update_the_feature_manifest"></span><span id="update_the_feature_manifest"></span><span id="UPDATE_THE_FEATURE_MANIFEST"></span>Update the feature manifest


**Add your app package to the feature manifest**

1.  Open your feature manifest file, **C:\\IoT-ADK-AddonKit\\Source-&lt;arch&gt;\\Packages\\OEMFM.xml**

2.  Create a new PackageFile section in the XML, with your package file listed, and give it a new FeatureID, such as "Appx\_HelloWorld".

    ``` syntax
    <?xml version="1.0" encoding="utf-8"?>
    <FeatureManifest xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/embedded/2004/10/ImageUpdate">
      <BasePackages/>
      <Features>
        <OEM>
          <!-- Feature definitions below -->
          <PackageFile Path="%PKGBLD_DIR%" Name="%OEM_NAME%.Appx.Main.cab">
            <FeatureIDs>
              <FeatureID>OEM_AppxMain</FeatureID>
            </FeatureIDs>
          </PackageFile>
        <PackageFile Path="%PKGBLD_DIR%" Name="%OEM_NAME%.Appx.HelloWorld.cab">
            <FeatureIDs>
              <FeatureID>OEM_AppxHelloWorld</FeatureID>
            </FeatureIDs>
          </PackageFile>
        </OEM>
        <OEMFeatureGroups/>
      </Features>
    </FeatureManifest>
    ```

    You'll now be able to add your app to any of your products by adding a reference to this feature manifest and Feature ID.

## <span id="Update_the_project_s_configuration_files"></span><span id="update_the_project_s_configuration_files"></span><span id="UPDATE_THE_PROJECT_S_CONFIGURATION_FILES"></span>Update the project's configuration files


**Replace your product's default app with your own**

1.  Open your product's test configuration file: **C:\\IoT-ADK-AddonKit\\Source-&lt;arch&gt;\\Products\\ProductA\\TestOEMInput.xml**.

2.  Add your feature manifest, OEMFM.xml, into the list of AdditionalFMs. At the same time, add the feature manifest: OEMCommonFM.xml, which contains the OEM\_CustomCmd package that configures your app on the first boot:

    ``` syntax
    <AdditionalFMs>
        <AdditionalFM>%AKROOT%\FMFiles\arm\IoTUAPNonProductionPartnerShareFM.xml</AdditionalFM>
        <AdditionalFM>%AKROOT%\FMFiles\arm\IoTUAPRPi2FM.xml</AdditionalFM>
        <AdditionalFM>%AKROOT%\FMFiles\arm\RPi2FM.xml</AdditionalFM>
        <AdditionalFM>%SRC_DIR%\Packages\OEMFM.xml</AdditionalFM>
        <AdditionalFM>%COMMON_DIR%\Packages\OEMCommonFM.xml</AdditionalFM>
      </AdditionalFMs>
    ```

3.  Add the FeatureIDs for your app package and the OEM\_CustomCmd package:

    ``` syntax
    <OEM> 
    <Feature>RPI2_DRIVERS</Feature> 
    <Feature>RPI2_DEVICE_TARGETINGINFO</Feature> 
    <Feature>PRODUCTION</Feature> 
    <Feature>OEM_CustomCmd</Feature> 
    <Feature>OEM_AppxHelloWorld</Feature> 
    </OEM>
    ```

4.  Remove the FeatureID for the IoT Core default app (IOT\_BERTHA), either by using &lt;!-- ... --&gt; to comment it out, or delete it from the list:

    ``` syntax
      <Features>
        <Microsoft> 
        <Feature>IOT_KDSERIAL_SETTINGS</Feature> 
        <Feature>IOT_EFIESP</Feature> 
        <Feature>IOT_DMAP_DRIVER</Feature> 
        <Feature>PRODUCTION_CORE</Feature> 
        <Feature>PRODUCTION</Feature> 
        <Feature>IOT_UAP_OOBE</Feature> 
        <Feature>IOT_TOOLKIT</Feature> 
        <Feature>IOT_WDTF</Feature> 
        <Feature>IOT_SSH</Feature> 
        <Feature>IOT_SIREP</Feature>
        <Feature>IOT_WEBB_EXTN</Feature> 
        <Feature>IOT_UMDFDBG_SETTINGS</Feature> 
        <Feature>IOT_NETCMD</Feature> 
        <Feature>IOT_POWERSHELL</Feature> 
        <Feature>IOT_DIRECTX_TOOLS</Feature> 
        <Feature>IOT_ALLJOYN_APP</Feature> 
        <Feature>IOT_ENABLE_TESTSIGNING</Feature> 
        <Feature>IOT_DISABLE_UMCI</Feature> 
        <Feature>IOT_CRT140</Feature> 
    <!--    <Feature>IOT_BERTHA</Feature>    -->
        <Feature>IOT_APP_TOOLKIT</Feature> 
        <Feature>IOT_CP210x_MAKERDRIVER</Feature>
        <Feature>IOT_FTSER2K_MAKERDRIVER</Feature>
    </Microsoft> 
    ```

**Set the app to automatically install and set itself as the default app**

1.  Open **C:\\IoT-ADK-AddonKit\\Source-&lt;arch&gt;\\Products\\ProductA\\OEMCustomization.cmd**

2.  Recommended: Change the device's default username and password.

3.  Replace the rest of the code in the code block with the new section starting with ""if exists C:\Appinstall (" - this new section automatically installs your app whenever the installer app is present:

    ``` syntax
    REM OEM Customization Script file
    
	REM Enable Administrator User
	net user MyAdmin MyP@ssw0rd /active:yes
	
	if exists C:\Appinstall (
	REM Enable Application Installation
	call C:\Appinstall\AppInstall.cmd
	
	REM Cleanup Application Installation Files. Change dir to root so that the dirs can be deleted
	cd \
	rmdir /S /Q C:\AppInstall
	)
    ```

## <span id="Build_and_test_the_image"></span><span id="build_and_test_the_image"></span><span id="BUILD_AND_TEST_THE_IMAGE"></span>Build and test the image


****

1.  From the IoT Core Shell, create the image:

    ``` syntax
    createimage ProductA Test
    ```

    This creates the product binaries at C:\\IoT-ADK-AddonKit\\Build\\&lt;arch&gt;\\ProductA\\Flash.FFU.

2.  Start **Windows IoT Core Dashboard** &gt; **Setup a new device** &gt; **Custom**, and browse to your image. Put the Micro SD card in the device, select it, accept the license terms, and click **Install**. This replaces the previous image with our new image.
3.  Put the card into the IoT device and start it up.

    After a short while, the device should start automatically, and you should see your app.

## <span id="Next_steps"></span><span id="next_steps"></span><span id="NEXT_STEPS"></span>Next steps

[Lab 1c: Add a file and a registry setting to an image](add-a-registry-setting-to-an-image.md)

 ## <span id="Related_topics"></span><span id="related_topics"></span><span id="RELATED_TOPICS"></span>Related topics

[Update apps on your IoT Core devices](updating-iot-core-apps.md)