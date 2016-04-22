---
author: Justinha
Description: Append a Volume Image to an Existing Image Using DISM
ms.assetid: c537f8bb-05ed-48cd-b75a-a8c1ed3bc66f
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Append a Volume Image to an Existing Image Using DISM
---

# Append a Volume Image to an Existing Image Using DISM


The Deployment Image Servicing and Management (DISM) tool is a command-line tool that enables the creation of Windows® image (.wim) files for deployment in a manufacturing or corporate IT environment. The **/Append-Image** option appends a volume image to an existing .wim file allowing you to store many customized Windows images in a fraction of the space. When you combine two or more Windows image files into a single .wim, any files that are duplicated between the images are only stored once.

## <span id="multiple_windows_images_in_a_.wim_file"></span><span id="MULTIPLE_WINDOWS_IMAGES_IN_A_.WIM_FILE"></span>Multiple Windows Images in a .wim file


Before you can append data to an image, you must have the following:

-   A technician computer running Windows 8 or a technician computer with the Windows Assessment and Deployment Kit (Windows ADK) tools installed on it.

-   A Windows image (.wim) file. For more information about how to capture an image using DISM, see [Capture Images of Hard Disk Partitions Using DISM](capture-images-of-hard-disk-partitions-using-dism.md).

**To append a volume image to an existing image**

1.  Open a command prompt with administrator privileges. If you are using a version of Windows other than Windows 8, navigate to the DISM directory.

2.  Append a volume image to an existing image. For example, you can append an image of the D drive to an existing image called my-windows-partition.wim.

    ``` syntax
    Dism /Append-Image /ImageFile:c:\my-windows-partition.wim /CaptureDir:D:\ /Name:Drive-D
    ```

**Next Steps**

1.  You can apply the image by referring to it by image number or image name, for example:

    ``` syntax
    Dism /apply-image /imagefile:install.wim /name:Drive-D /ApplyDir:D:\
    ```

2.  You can extract the image into a separate file by using the **/Export-Image** option. For example:

    ``` syntax
    Dism /Export-Image /SourceImageFile:install.wim /SourceName:Drive-D /DestinationImageFile:DriveD.wim
    ```

For more information, see [DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md).

## <span id="related_topics"></span>Related topics


[Capture Images of Hard Disk Partitions Using DISM](capture-images-of-hard-disk-partitions-using-dism.md)

[DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Append%20a%20Volume%20Image%20to%20an%20Existing%20Image%20Using%20DISM%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




