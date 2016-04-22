---
author: Justinha
Description: Export or Import Default Application Associations
ms.assetid: 87eb7510-df1a-4e3f-9cd4-5400fa6e1a07
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Export or Import Default Application Associations
---

# Export or Import Default Application Associations


You can use the Deployment Image Servicing and Management (DISM) tool to change the default programs associated with a file name extension or protocol in a Windows® image.

## <span id="Generate_Default_Application_Associations_XML_File"></span><span id="generate_default_application_associations_xml_file"></span><span id="GENERATE_DEFAULT_APPLICATION_ASSOCIATIONS_XML_FILE"></span>Generate Default Application Associations XML File


Deploy your Windows image to a test computer and configure the programs that are included in your image. You can log into Windows and use Control Panel to select your default application associations. You can export the default application associations that you have configured to an XML file on a network share or removable media so that you can import them into the WIM or VHD file before you deploy it to your destination computers.

**Set default application associations**

1.  Install your Windows image to a test computer. For more information about how to apply a Windows image, see [Apply Images Using DISM](apply-images-using-dism.md).

2.  Start the test computer and complete Windows Setup.

3.  Click **Search**, click **Settings**, and then type **Default Programs**. Click **Default Programs**.

4.  You can configure default programs by file name extension or by application. For example, to set an installed photo viewing application as the default program that is used to open all of the file types and protocols that it supports, click **Set your default programs**, click the photo viewing application in the program list, and then click **Set this program as default**.

**Export default application association settings**

1.  On your test computer, open a command prompt with administrative credentials. If you are using a version of Windows other than Windows 8, use the Deployment Tools Command Prompt installed with the ADK or navigate to the DISM directory on your local computer.

2.  Export the default application association settings from the test computer to an .xml file on a network share or USB drive. For example, at a command prompt type the following command:

    ``` syntax
    Dism /Online /Export-DefaultAppAssociations:\\Server\Share\AppAssoc.xml
    ```

    Where:

    -   Server is the name of the server or computer that contains the share that you will export the default application association settings.

    -   Share is the name of the share where you will export the default application association settings.

## <span id="Add_or_Remove_Default_Application_Association_Settings_to_a_Windows_Image"></span><span id="add_or_remove_default_application_association_settings_to_a_windows_image"></span><span id="ADD_OR_REMOVE_DEFAULT_APPLICATION_ASSOCIATION_SETTINGS_TO_A_WINDOWS_IMAGE"></span>Add or Remove Default Application Association Settings to a Windows Image


You can change the default application association settings in a WIM or VHD file before you deploy it to your destination computers. You can also add and remove default application association settings from an online image.

**Import default application association settings**

1.  On your technician computer, open a command prompt with administrative credentials. If you are using a version of Windows other than Windows 8, use the Deployment Tools Command Prompt installed with the ADK or navigate to the DISM directory on your local computer.

2.  Mount a Windows image from a WIM or VHD file. For example, at the command prompt type the following command:

    ``` syntax
    Dism /Mount-Image /ImageFile:C:\test\images\install.wim /Name:"Windows" /MountDir:C:\test\offline
    ```

3.  Import the .xml file that has the default application association settings to the Windows image. For example, at the command prompt type the following command:

    ``` syntax
    Dism.exe /Image:C:\test\offline /Import-DefaultAppAssociations:\\Server\Share\AppAssoc.xml
    ```

    Where:

    -   Server is the name of the server or computer that contains the share that you will export the default application association settings.

    -   Share is the name of the share where you will export the default application association settings.

**Review the default application association setting in an image**

1.  On your technician computer, open a command prompt with administrative credentials. If you are using a version of Windows other than Windows 8, use the Deployment Tools Command Prompt installed with the ADK or navigate to the DISM directory on your local computer.

2.  List the application associations that have been applied to the mounted image. For example, at the command prompt, type the following command:

    ``` syntax
    Dism.exe /Image:C:\test\offline /Get-DefaultAppAssociations
    ```

**Remove default application association settings**

1.  On your technician computer, open a command prompt with administrative credentials. If you are using a version of Windows other than Windows 8, use the Deployment Tools Command Prompt installed with the ADK or navigate to the DISM directory on your local computer.

2.  Remove the custom default application association that have been added to the mounted image. For example, at the command prompt type the following command:

    ``` syntax
    Dism.exe /Image:C:\test\offline /Remove-DefaultAppAssociations
    ```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Export%20or%20Import%20Default%20Application%20Associations%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



