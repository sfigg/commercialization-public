---
author: kpacquer
Description: 'We''re now going to take an app (like the sample Hello, World! app), and package it up so that it can be serviced after it reaches your customers.'
ms.assetid: a801d768-0397-4f85-b68f-bd85ddcc3f1f
MSHAttr: 'PreferredLib:/library'
title: 'Lab 1b: Add an app to your image'
---

# Lab 1b: Add an app to your image


\[This content has been tested on Windows 10 IoT Core Build 10586. Some of these procedures do not yet work on newer preview builds, including Windows 10 Anniversary SDK Preview Build 14295.\]

We're now going to take an app (like the sample [Hello, World!](http://go.microsoft.com/fwlink/?LinkID=532945) app), and package it up so that it can be serviced after it reaches your customers.

We'll start by testing the app and sending it to the device. You can skip these steps if you've already tested your app.

We'll then create a servicable package for it. You'll need packages for each of the apps, device drivers, system files, and registry settings that you add to Windows 10 IoT Core (IoT Core) OEM images. These packages are .cab files, and must be signed before they can be loaded onto the device. For test builds, you can use test certificates - we'll use them in this guide.

As we create packages, we'll add them to our list of features, the OEM feature manifest (OEMFM.xml). We'll assign each package a Feature ID, which we can refer to later.

We'll add these feature manifests and feature IDs to our testing image configuration file, TestOEMInput.xml.

We're also adding a configuration file that customizes the system to use your app on first boot. This is listed in the feature manifest: OEMCommonFM.xml, with the Feature ID: OEM\_CustomCmd.

Finally, we'll rebuild the project and make sure it works.

**Note**  As we go through this manufacturing guide, ProjectA will start to resemble the SampleA image that's in C:\\IoT-ADK-AddonKit\\Source-arm\\Products\\SampleA.

 

## <span id="Prerequisites"></span><span id="prerequisites"></span><span id="PREREQUISITES"></span>Prerequisites


We'll use the ProjectA image we created from [Lab 1a: Create a basic image](create-a-basic-image.md).

## <span id="Create_and_test_an_Windows_app"></span><span id="create_and_test_an_windows_app"></span><span id="CREATE_AND_TEST_AN_WINDOWS_APP"></span>Create and test an Windows app


First, create an app. This can be any app designed for IoT Core, such as the [Hello, World](http://ms-iot.github.io/content/en-US/win10/samples/HelloWorld.md) app.

**Connect to the device from another PC**

1.  Connect a network cable.
2.  Note the IP address that shows up on the device.
3.  On your technician PC, open Internet Explorer, and type in the address with an http:// prefix and :8080 suffix:

    ``` syntax
    http://100.100.0.100:8080
    ```

    This opens the [Windows Device Portal](http://ms-iot.github.io/content/en-US/win10/tools/DevicePortal.md). From here, you can upload app packages, see what apps are installed, and switch between them.

4.  Use the default username (Administrator) and password (p@ssw0rd) to log on.

**Test the app by installing it**

1.  Click on **Apps**.
2.  Under **Install app**, under **App package**, click **Browse**, and select your .appx file.
    **Note**  If you built your app as a bundle, you may need to use a tool such as 7-Zip to extract these files from the bundle.

     

3.  Add your app's **Certificate** the same way.
4.  Click **Add Dependency** and add each of your app's dependency files.
5.  Under **Deploy**, click **Go**. The app installs.
6.  Under **Installed apps**, click the drop-down box and select your app. Your app should start on the device.

Great, your app works! Now let's package it up so you can maintain your app even after it's been delivered to your customers.

## <span id="Package_the_app"></span><span id="package_the_app"></span><span id="PACKAGE_THE_APP"></span>Package the app




**Create an package for an app**

1.  Open **C:\\IoT-ADK-AddonKit\\Tools\\IoTCoreShell** as an administrator.
2.  Build all of the existing packages in your app (one-time only): 

    ``` syntax
    buildallpackages
    ```

    This command builds all of the packages in our source folders, including a few packages that we've created to help install your app.

2.  Create a working folder for the app, for example:

    ``` syntax
    newpkg pkgAppx Appx HelloWorld
    ```

    The new folder at C:\\IoT-ADK-AddonKit\\Source-&lt;arch&gt;\\Packages\\Appx.HelloWorld includes files that you'll use to help build the package.

3.  Copy your app's files into this \\AppInstall folder, including the .appx package, the certificate (.cer) file, and any dependency files (such as Microsoft.Net files).
4.  Update the app's package definition file, **C:\\IoT-ADK-AddonKit\\Source-&lt;arch&gt;\\Packages\\Appx.HelloWorld\\Appx.HelloWorld.pkg.xml**, to include the .appx package, certificate, and dependencies. Make sure the version numbers match the actual files.

    ``` syntax
    <!-- Copy appx files and its dependencies -->
                 <File Source="$(PRJDIR)\Packages\AppX.HelloWorld\AppInstall\HelloWorld_10.0.0.50_ARM_Debug.appx"
                    DestinationDir="$(runtime.root)\AppInstall" Name="HelloWorld_10.0.0.50_arm.appx"/>
                 <File Source="$(PRJDIR)\Packages\AppX.HelloWorld\AppInstall\HelloWorld_10.0.0.50_ARM_Debug.cer"
                    DestinationDir="$(runtime.root)\AppInstall" Name="HelloWorld_10.0.0.50_arm.cer"/>
                 <File Source="$(PRJDIR)\Packages\AppX.HelloWorld\AppInstall\Microsoft.NET.Native.Runtime.1.0.appx"
                    DestinationDir="$(runtime.root)\AppInstall" Name="Microsoft.NET.Native.Runtime.1.0.appx"/>
                 <File Source="$(PRJDIR)\Packages\AppX.HelloWorld\AppInstall\Microsoft.VCLibs.arm.14.00.appx"
                    DestinationDir="$(runtime.root)\AppInstall" Name="Microsoft.VCLibs.arm.14.00.appx"/>
    ```

    The paths for DestinationDir must include the pre-defined macro locations, DestinationDir="$(runtime.root)\\....", which is defined in C:\\Program Files (x86)\\Windows Kits\\10\\Tools\\bin\\i386\\pkggen.cfg.xml.

5.  Update the application configuration file, **C:\\IoT-ADK-AddonKit\\Source-&lt;arch&gt;\\Packages\\Appx.HelloWorld\\AppxConfig.cmd**, with the Appx and certificate locations.

    -   Set **defaultappx** = Your app's file name. Do not include the .appx extension.
    -   Set **certslist** = Your app’s certificate. Do not include the .cer extension.
    -   Set **defaultappxid** = Your app's ID. Don't know the ID? Use a tool like 7-Zip to uncompress the Appx file, and open the AppxManifest.xml file, and find the **Identity Name**. This may look like a plaintext name, or it may look like a GUID.
    -   Set **dependencylist** = Apps or features like .NET that must be installed before your app is installed. You can add multiple dependency names, separate by a space. Do not include the .appx extension.

    ``` syntax
    set defaultappx=HelloWorld_10.0.0.50_arm
    set certslist=HelloWorld_10.0.0.50_arm
    set defaultappxid=HelloWorld
    set dependencylist=Microsoft.VCLibs.ARM.14.00 Microsoft.NET.Native.Runtime.1.1 Microsoft.NET.Native.Framework.1.2 Microsoft.VCLibs.ARM.12.00.Universal
    ```

6.  From the IoT Core Shell, build the package.

    ``` syntax
    createpkg C:\IoT-ADK-AddonKit\Source-<arch>\Packages\Appx.HelloWorld\Appx.HelloWorld.pkg.xml
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
    <Feature>PLACEHOLDER_FEATURE</Feature> 
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

1.  Open **C:\\IoT-ADK-AddonKit\\Source-&lt;arch&gt;\\Products\\ProductA\\OEMCustomization.cmd**,
2.  Recommended: Change the device's default username and password.
3.  Replace the rest of the code in the code block with the new section starting with ""if exists C:\Appinstall (" - this new section automatically installs your app whenever the installer app is present:

    ```
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

 

 



