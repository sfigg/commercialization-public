---
author: Justinha
Description: 'You can typically go back into Windows Imaging and Configuration Designer (ICD) projects, edit and redeploy them over and over again.'
ms.assetid: 88b2c902-4bd2-4d09-814b-be86c75c8085
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 1c: Modify an existing Windows ICD project'
---

# Lab 1c: Modify an existing Windows ICD project


You can typically go back into Windows Imaging and Configuration Designer (ICD) projects, edit and redeploy them over and over again.

**Note**  Copy any new source files, like the provisioning packages, back to the technician PC before starting. This reduces the risk of interrupting the build process from a temporary network issue or from disconnecting the USB device.

 

## <span id="Change_the_edition__for_example__from_Core_to_Pro_"></span><span id="change_the_edition__for_example__from_core_to_pro_"></span><span id="CHANGE_THE_EDITION__FOR_EXAMPLE__FROM_CORE_TO_PRO_"></span>Change the edition (for example, from Core to Pro)


Export your Windows ICD project into a provisioning package. You can then create a new project in Windows ICD using this provisioning package to quickly build a new image on a different edition.

## <span id="To_use_more_than_one_provisioning_package_"></span><span id="to_use_more_than_one_provisioning_package_"></span><span id="TO_USE_MORE_THAN_ONE_PROVISIONING_PACKAGE_"></span>To use more than one provisioning package:


Use the ICD.exe command to combine the provisioning packages.

``` syntax
"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\icd.exe" /Build-ImageFromWIM /MediaPath:"c:\WICDOutput" /SourceImage:"C:\Images\install.wim" /ImageIndex:1 /ProvisioningPackage:"c:\users\terry\Documents\Windows Imaging and Configuration Designer (WICD)\Fabrikam_Notebook_1\Fabrikam_Notebook_1.ppkg" /DeploymentConfigXml:"C:\Samples\DeploymentConfig.xml" /CustomizationXML:"C:\Samples\Customizations.xml" 
```

Where /ImageIndex is the index of the Windows image you want to use. Note which Windows image to use. The Client SKU install.wim file includes two different images:

-   Index 1 is Windows 10 Professional
-   Index 2 is Windows 10 Core

## <span id="Create_a_deployment_configuration_file"></span><span id="create_a_deployment_configuration_file"></span><span id="CREATE_A_DEPLOYMENT_CONFIGURATION_FILE"></span>Create a deployment configuration file


The ICD.exe command requires a deployment configuration XML file. When you use the WICD UI, this file is created for you. When using the ICD command-line, you must create it and specify it as the DeploymentConfigXml parameter in the command. Here’s a sample that you can use for this lab:

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<DeploymentConfig xmlns="urn:schemas-Microsoft-com:Windows-ICD-Deployment-Config.v1.0">
    <EnableCompactOS>false</EnableCompactOS>
    <MediaScenario>Production</MediaScenario>
</DeploymentConfig>
 
```

Windows ICD will create the project in the path you select. You can then copy this data to a USB key and load the image on a new PC.

## <span id="Create_a_blank_customizations_file"></span><span id="create_a_blank_customizations_file"></span><span id="CREATE_A_BLANK_CUSTOMIZATIONS_FILE"></span>Create a blank customizations file


For this build of Windows 10, you must specify a customizations file by using the CustomizationXML parameter. The provisioning package should contain all of your customizations so we’ll create a blank customizations XML file for this lab:

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<WindowsCustomizations>
  <PackageConfig xmlns="urn:schemas-Microsoft-com:Windows-ICD-Package-Config.v1.0">
    <ID>{c4b32e84-249f-4a07-976a-e482f0a2ee58}</ID>
    <Name>Fabrikam_Notebook_1_Core</Name>
    <Version>1.0</Version>
    <OwnerType>OEM</OwnerType>
    <Rank>0</Rank>
  </PackageConfig>
  <Settings xmlns="urn:schemas-microsoft-com:windows-provisioning">
</Settings>
</WindowsCustomizations>

 
```

## <span id="Congratulations_"></span><span id="congratulations_"></span><span id="CONGRATULATIONS_"></span>Congratulations!


You've completed the Windows ICD portion of the lab. From here, you can learn more about classic Windows deployment techniques in [Lab 2](part-2--classic-style-deployment.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_dmfg\p_sxs_dmfg%5D:%20Lab%201c:%20Modify%20an%20existing%20Windows%20ICD%20project%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



