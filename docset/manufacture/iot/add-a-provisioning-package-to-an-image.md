---
author: kpacquer
Description: 'We''ll create a provisioning package that contains some sample Wi-Fi settings.'
ms.assetid: d9a50f87-e8c0-48da-89e7-0cdd542ce053
MSHAttr: 'PreferredLib:/library'
title: 'Lab 1d: Add a provisioning package to an image'
---

# Lab 1d: Add a provisioning package to an image

We'll create a provisioning package that contains some sample Wi-Fi settings. You can use provisioning package in Windows Imaging and Configuration Designer (ICD) to add apps, drivers, features, or to modify many common settings, such as IT device management and policy settings.

Note, to test Wi-Fi, your board will need Wi-Fi support. You can use a Wi-Fi adapter/dongle, or use a board like the Raspberry Pi 3 that has Wi-Fi built-in.

For this lab, we start a new product, ProductB, that includes the default app (Bertha), which shows network status.  

## <span id="Create_a_basic_image"></span>Create a basic image

1.  Start the IoTCore Shell: open **C:\IoT-ADK-AddonKit\IoTCoreShell.cmd** as an administrator, then select an architecture.

2.  Create a new test product, ProductB.

    ``` syntax
    newproduct ProductB
    ````

## <span id="Create_your_provisioning_package_in_Windows_ICD"></span><span id="create_your_provisioning_package_in_windows_icd"></span><span id="CREATE_YOUR_PROVISIONING_PACKAGE_IN_WINDOWS_ICD"></span>Create your provisioning package in Windows ICD

1.  Start **Windows Imaging and Configuration Designer**.

2.  Click **File &gt; New project**.

3.  For this example, use the name "**ProductBProv**" for the product name, accept the defaults, and click **Next**.

4.  Select **Provisioning package &gt; Windows 10 IoT Core**.

5.  At the **Import a provisioning package (optional)** page, click **Finish**.

6.  Add a sample setting:

    1.  Expand **Runtime settings &gt; Connectivity Profiles &gt; WLAN &gt; WLANSetting &gt; SSID**.

    2.  Type in the name of a Wi-Fi network name, for example, ContosoWiFi, and click **Add**.

    3.  Expand the **SSID > WLANXmlSettings > SecurityType** and choose a setting such as **Open**.

    4.  Expand the **SSID > WLANXmlSettings > AutoConnect** and choose a setting such as **TRUE**.

    5.  Optional: to add more than one WLAN network, go back to WLANSetting, and repeat the process.

7.  Optional: add other apps, drivers, and settings through the UI. To learn more, see [Configure customizations using Windows ICD](https://msdn.microsoft.com/library/windows/hardware/dn916109).

8.  Export the provisioning package. For example, click **Export &gt; Provisioning Package &gt; Next &gt; Next &gt; Build**. (To learn more, see [Export a provisioning package](https://msdn.microsoft.com/library/windows/hardware/dn916110). )

9.  At the **All done!** page, click the link to the **Output location**.

**Create a folder for the provisioning package in your test product**

1.  In File Explorer, create a new folder, C:\\IoT-ADK-AddonKit\\Products\\ProductB\\prov.

    This folder is structure is used by the script: Provisioning.Auto.pkg.xml file in Provisioning.Auto folder. No changes are required.

2.  Copy the .ppkg, .cat, and customizations.xml files into this folder.
    
    If necessary, rename the files to (your product name)Prov.cat and (your product name)Prov.ppkg, for example, ProductBProv.cat and ProductBProv.ppkg.
	
3.  Optional: update customizations.xml with any desired changes. See [Windows provisioning answer file](https://msdn.microsoft.com/library/windows/hardware/dn916153) for more info.

**Add the auto-provisioning scripts to the feature manifest and product configuration file**

1.  Review the package definition file: Provisioning.Auto.pkg.xml: C:\\IoT-ADK-AddonKit\\Common\\Packages\\Provisioning.Auto\\Provisioning.Auto.pkg.xml. No changes should be required.

    The file source: ($PROD)Prov.ppkg resolves to ProductBProv.ppkg, which should match your file name.

    ``` syntax
    <?xml version="1.0" encoding="utf-8"?>
      <Package xmlns="urn:Microsoft.WindowsPhone/PackageSchema.v8.00"
        Owner="$(OEMNAME)"
        OwnerType="OEM"
        ReleaseType="Production"
        Platform="$(BSPARCH)"
        Component="Provisioning"
        SubComponent="Auto">
        <Components>
           <OSComponent>
           <Files>
            <!--
            Source : Provisioning is product specific, so copied from the Product directory
            Destination : Auto provisioning folder which is C:\Windows\Provisioning\Packages
            -->
            <File Source="$(PRJDIR)\Products\$(PROD)\prov\$(PROD)Prov.ppkg"
                    DestinationDir="$(runtime.windows)\Provisioning\Packages" Name="ProvAuto.ppkg"/>
            </Files>
           </OSComponent>
        </Components>
    </Package>
    ```

2.  Make sure that the package definition file **%OEM\_NAME%.Provisioning.Auto.cab"** and the feature ID: **OEM\_ProvAuto** are referenced in the common feature manifest, C:\\IoT-ADK-AddonKit\\Common\\Packages\\OEMCommonFM.xml:

    ``` syntax
    <PackageFile Path="%PKGBLD_DIR%" Name="%OEM_NAME%.Provisioning.Auto.cab">
      <FeatureIDs>
        <FeatureID>OEM_ProvAuto</FeatureID>
        <FeatureID>OEMCommon_ALL</FeatureID>
      </FeatureIDs>
    </PackageFile>    
    ...
    <OEMFeatureGroups>
    <!-- Feature Constraints below -->
    <!-- This ensures that only one of the Provisioning package is included -->
      <FeatureGroup Constraint="ZeroOrOne">
        <FeatureIDs>
          <FeatureID>OEM_ProvAuto</FeatureID>
          <FeatureID>OEM_ProvManual</FeatureID>        
        </FeatureIDs>
    ```

3.  Update the test configuration file C:\\IoT-ADK-AddonKit\\Source-_<arch_>\\Products\\ProductB\\TestOEMInput.xml:

    1.  Remove the comment marks to make sure the common feature manifest: OEMCommonFM.xml is included.

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

### <span id="Build_and_test_the_image"></span><span id="build_and_test_the_image"></span><span id="BUILD_AND_TEST_THE_IMAGE"></span>Build and test the image

**Build the image**

1.  From the IoT Core Shell, create the image:

    ``` syntax
    createimage ProductB Test
    ```

    This creates the product binaries at C:\\IoT-ADK-AddonKit\\Build\\&lt;arch&gt;\\ProductB\\Test\\Flash.FFU.

2.  Start **Windows IoT Core Dashboard** &gt; **Setup a new device** &gt; **Custom**, and browse to your image. Put the Micro SD card in the device, select it, accept the license terms, and click **Install**. This replaces the previous image with our new image.

**Test to see if your provisioning settings were applied**

1.  Unplug any network cables from your IoT device.

2.  Put the Micro SD card into the IoT device and start it up.

    After a short while, the device should start automatically, and you should see the default app. 

3.  Select the defaults. At the Let's get connected screen, select **Skip this step**.

4.  If your wireless network is in range, this screen should show the network successfully connected, and show an IP address for the network.

## <span id="Test_network_connections"></span>Test network connections and upload apps

You can connect to your device's portal page to troubleshoot network connections, upload apps, or see more details about your device.

1.  Connect both your technician PC and the device to the same network. 

    For example, to connect over a wired network, plug in a ethernet cable.  To connect over wireless, make sure both your technician computer and IoT Core device are connected to the same wireless network.    

2.  On your technician PC, open Internet Explorer, and type in the device's IP address with an http:// prefix and :8080 suffix. 

    ``` syntax
    http://10.123.45.67:8080
    ```

3.  When prompted, enter your device's password. (Default is: Administrator/p@ssw0rd)

    This opens the [Windows Device Portal](https://developer.microsoft.com/windows/iot/win10/tools/deviceportal). From here, you can upload app packages, see what apps are installed, and switch between them.

4.  Click **Networking** > **Profiles**.  You should see the Wi-Fi profile you created. 
    
	If the device is able to automatically connect to the WiFi network, then under **Available Networks**, you should see a checkmark next to the network you configured.

    If your network requires steps such as accepting license terms, the device may not auto-connect.

## <span id="Next_steps"></span><span id="next_steps"></span><span id="NEXT_STEPS"></span>Next steps

[Lab 1e: Add a driver to an image](add-a-driver-to-an-image.md) 
