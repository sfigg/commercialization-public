---
author: kpacquer
Description: 'We''ll create some test files and registry keys to the image, again packaging them up so that they can be serviced after they reach your customers.'
ms.assetid: 7ca2b835-4d36-43d9-b46f-d5d5d8410335
MSHAttr: 'PreferredLib:/library'
title: 'Lab 1c: Add a file and a registry setting to an image'
---

# Lab 1c: Add a file and a registry setting to an image

Many files and registry keys, and other customizations that you add to your image won't be specific to an architecture. For these, we recommend creating a common package that you can use for all of your builds.
 
We'll create some test files and registry keys to the image, and again package them up so that they can be serviced after they reach your customers.

We'll add these to a common feature manifest (OEMCommonFM.xml), which is used in both your x86 and ARM builds. Give it a new feature ID, OEM\_FileAndRegKey.

To add the features to the image, we'll go to our Product A, add our Feature Manifest and Feature ID. We're also going to add a helper app, which is listed in feature manifest: OEMCommonFM.xml, with the ID: OEM\_CustomCmd.

We'll add these FMs and Feature IDs to the test image configuration file (TestOEMInput.xml).

Finally, we'll rebuild the project and make sure it works.

## <span id="Prerequisites"></span><span id="prerequisites"></span><span id="PREREQUISITES"></span>Prerequisites

We'll start with the ProjectA image we created from [Lab 1a: Create a basic image](create-a-basic-image.md), and updated in [Lab 1b: Add an app to your image](deploy-your-app-with-a-standard-board.md).

## <span id="Create_your_test_files"></span><span id="create_your_test_files"></span><span id="CREATE_YOUR_TEST_FILES"></span>Create your test files

-   Create a few sample text files using Notepad, title them TestFile1.txt and TestFile2.txt.

## <span id="Build_a_package_for_your_test_files"></span><span id="build_a_package_for_your_test_files"></span><span id="BUILD_A_PACKAGE_FOR_YOUR_TEST_FILES"></span>Build a package for your test files

1.  Run **C:\\IoT-ADK-AddonKit\\IoTCoreShell** as an administrator.

2.  Create a working folder for the registry key and test files, for example:

    ``` syntax
    newcommonpkg Registry.ConfigSettings
    ```

    The new folder at **C:\\IoT-ADK-AddonKit\\Common\\Packages\\Registry.ConfigSettings\\**.

### <span id="Add_sample_files_to_the_package"></span>Add sample files to the package

1.  Copy your sample files (TestFile1.txt and TestFile2.txt), into the new folder at **C:\\IoT-ADK-AddonKit\\Common\\Packages\\Registry.ConfigSettings\\**.

2.  Update the package definition file, **C:\\IoT-ADK-AddonKit\\Common\\Packages\\Registry.ConfigSettings\\Registry.ConfigSettings.pkg.xml**:

    -  The default package definition file includes sample XML that has been commented out. Remove the comment marks and instructions, then modify the sample to add your own registry keys and files.

    -  Update the values of RegKey to include a new KeyName, Name, and Value.

    -  Optional: update the DestinationDir and Name. If you don't include the DestinationDir option, the files will land in C:\\Windows\\system32\\.
    
    Variables like (runtime.root) are defined in C:\\Program Files (x86)\\Windows Kits\\10\\Tools\\bin\\i386\\pkggen.cfg.xml.

    ``` syntax
      <OSComponent> 
         <RegKeys> 
             <RegKey KeyName="$(hklm.software)\$(OEMNAME)\Test">
                <RegValue Name="StringValue" Value="Test string" Type="REG_SZ"/>
                <RegValue Name="DWordValue" Value="12AB34CD" Type="REG_DWORD"/>
                <RegValue Name="BinaryValue" Value="12,AB,CD,EF" Type="REG_BINARY"/>
             </RegKey>
             <RegKey KeyName="$(hklm.software)\$(OEMNAME)\EmptyKey"/> 
         </RegKeys> 
         <Files> 
            <File Source="TestFile1.txt" /> 
   			<File Source="TestFile2.txt"
			    DestinationDir="$(runtime.root)\OEMInstall" Name="TestFile2.txt"/>	
         </Files> 
      </OSComponent> 
    ```

2.  From the IoT Core Shell, build the package. (The BuildAllPackages tool builds everything in the source folders.)

    ``` syntax
    createpkg Registry.ConfigSettings
    ```

    The package is built, appearing as **C:\\IoT-ADK-AddonKit\\Build\\&lt;arch&gt;\\pkgs\\&lt;your OEM name&gt;.Registry.ConfigSettings.cab**.

    All packages that you build appear in your architecture-specific folder. Tip: to quickly rebuild for another architecture, use **setenv &lt;arch&gt;**, then **BuildAllPackages** to rebuild everything for your other architecture.

## <span id="Update_your_feature_manifest"></span><span id="update_your_feature_manifest"></span><span id="UPDATE_YOUR_FEATURE_MANIFEST"></span>Update your feature manifest

**Add your file package to the feature manifest and project configuration file**

1.  Open the common feature manifest file, **C:\\IoT-ADK-AddonKit\\Common\\Packages\\OEMCommonFM.xml**

2.  Create a new PackageFile section in the XML, with your package file listed, and give it a new FeatureID, such as "OEM\_ConfigSettings".

    ``` syntax
    <Features>
      <OEM>
        <!-- Feature definitions below -->

        <PackageFile Path="%PKGBLD_DIR%" Name="%OEM_NAME%.Provisioning.Manual.cab">
          <FeatureIDs>
            <!-- This feature id brings in provisioning packages for manual installation via Custom.Cmd -->
            <!-- Depends on OEM_CustomCmd -->
          <FeatureID>OEM_ProvManual</FeatureID>
            <!-- OEMCommon_ALL includes ProvAuto, so this is not included -->
          </FeatureIDs>

        <PackageFile Path="%PKGBLD_DIR%" Name="%OEM_NAME%.Registry.ConfigSettings.cab">
          <FeatureIDs>
            <FeatureID>OEM_ConfigSettings</FeatureID>
          </FeatureIDs>
        </PackageFile>
    ```

    You'll now be able to add your test files and reg keys to any of your products by adding a reference to this feature manifest and Feature ID.

3.  Update the test configuration file C:\\IoT-ADK-AddonKit\\Source-_<arch_>\\Products\\ProductA\\TestOEMInput.xml:

    1.  Remove the comment marks to make sure the Feature Manifest: OEMCommonFM.xml is included.

        ``` syntax
        <AdditionalFMs>
          <!-- Including BSP feature manifest -->
          <AdditionalFM>%BSPSRC_DIR%\RPi2\Packages\RPi2FM.xml</AdditionalFM>
          <!-- Including OEM feature manifest-->
          <AdditionalFM>%COMMON_DIR%\Packages\OEMCommonFM.xml</AdditionalFM>
          <AdditionalFM>%SRC_DIR%\Packages\OEMFM.xml</AdditionalFM>
          <!-- Including the test features -->
          <AdditionalFM>%AKROOT%\FMFiles\arm\IoTUAPNonProductionPartnerShareFM.xml</AdditionalFM>
        </AdditionalFMs>
        ```

    2.  Remove the comment marks to make sure the Feature: OEM_ProvAuto is included.

        ``` syntax
        <OEM>
          <!-- Include BSP Features -->
          <Feature>RPI2_DRIVERS</Feature>
          <Feature>RPI3_DRIVERS</Feature>
          <!-- Include OEM features-->
          <Feature>OEM_AppxMain</Feature>
          <Feature>OEM_CustomCmd</Feature>
          <Feature>OEM_ProvAuto</Feature>
        </OEM>
        ```

## <span id="Build_and_test_the_image"></span><span id="build_and_test_the_image"></span><span id="BUILD_AND_TEST_THE_IMAGE"></span>Build and test the image

**Build the image**

1.  From the IoT Core Shell, create the image:

    ``` syntax
    createimage ProductA Test
    ```

    This creates the product binaries at C:\\IoT-ADK-AddonKit\\Build\\&lt;arch&gt;\\ProductA\\Flash.FFU.

2.  Start **Windows IoT Core Dashboard** &gt; **Setup a new device** &gt; **Custom**, and browse to your image. Put the Micro SD card in the device, select it, accept the license terms, and click **Install**. This replaces the previous image with our new image.

**Test to see if your files made it**

1.  Put the card into the IoT device and start it up.

    After a short while, the device should start automatically, and you should see your app.


2.  On your technician PC, open File Explorer, and type in the IP address of the device with a \\\\ prefix and \\c$ suffix:

    ``` syntax
    \\10.100.0.100\c$
    ```

	Use the username and password that you created in [Lab 1b: Add an app to your image](deploy-your-app-with-a-standard-board.md) to log on. (Default is: minwinpc\\Administrator / p@ssw0rd)

3.  Check to see if the files exist. Look for:

    \\\\10.100.0.100\c$\\Windows\\system32\\TestFile1.txt

    \\\\10.100.0.100\c$\\OEMInstall\\TestFile2.txt

**Check to see if your reg key exists**

1.  On your technician PC, connect to your device using an SSH client, such as [PuTTY](http://the.earth.li/~sgtatham/putty/latest/x86/putty.exe). For example, use the IP address and port 22 to connect to the device, then log in using the Administrator account and password. (To learn more, see [SSH](https://developer.microsoft.com/en-us/windows/iot/docs/ssh).)

2.  From the command line in the SSH client, query the system for the reg key.

    ``` syntax
    reg query HKLM\Software\Contoso\Test2
    ```

    The registry tool should return your test values.

## <span id="Next_steps"></span><span id="next_steps"></span><span id="NEXT_STEPS"></span>Next steps

[Lab 1d: Add a provisioning package to an image](add-a-provisioning-package-to-an-image.md)
