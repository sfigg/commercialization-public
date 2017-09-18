---
title: Open a Windows Image or Catalog File
description: Open a Windows Image or Catalog File
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8e2f6834-9ed6-4507-844c-4420fc2f76b1
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Open a Windows Image or Catalog File


When you open a Windows® image (.wim) file in Windows System Image Manager (Windows SIM), a catalog (.clg) file is automatically created. If a catalog file already exists, Windows SIM re-creates the catalog file based on the contents of the Windows image that you select. When a catalog file is created, it queries the Windows image for a listing of all the settings in that image.

To create an answer file, you must first open a Windows image file or catalog file in Windows SIM. For more information about Windows image files and catalog files, see [Windows Image Files and Catalog Files Overview](windows-image-files-and-catalog-files-overview.md).

**To open a Windows image file or catalog file**

1.  Copy a previously created catalog file (.clg) to the technician computer or copy your customized Windows image file (install.wim) to the technician computer.

2.  On the technician computer, open Windows SIM.

3.  On the **File** menu, click **Select Windows Image**.

4.  In the **Select a Windows Image** dialog box, select the file type in the **Files of type** drop-down list, and then browse to a Windows image file or catalog file.

    If you open a Windows image file, Windows SIM will automatically create a catalog of that Windows image.

5.  If there is more than one type of Windows image in the file, select a specific Windows image in the **Select an Image** box.

    The Windows image file or catalog file appears in the **Windows Image** pane.

6.  Click **Open**. If you have not previously opened that Windows image file or have not refreshed the catalog file recently, Windows SIM prompts you to create or re-create the catalog file.

**To create a catalog file**

1.  Open Windows SIM.

2.  On the **Tools** menu, click **Create Catalog**.

    The **Open a Windows Image** dialog box opens.

3.  Select a Windows image file, and then click **Open**.

    If you select a Windows image file that has more than one Windows image, the **Select an Image** dialog box opens.

4.  Click to select an image type (for example, **Fabrikam Custom Image 1**), and then click **OK**.

    The catalog file is created in the same directory as the Windows image file that you selected.

    **Troubleshooting:** If Windows SIM does not create the catalog file, try the following steps:

    -   Make sure you are using the Windows 8.1 version of the Windows Assessment and Deployment Kit (Windows ADK).

    -   To create a catalog file for 32-bit or ARM-based PCs, use a 32-bit PC.

    -   Make sure the Windows base-image file (Install.wim) is in a folder that has read-write privileges, such as a USB flash drive or on your hard drive.

    **Important**  
    Windows SIM cannot create catalog files for some Windows images of different architecture types. For information about the support of cross-platform catalog creation, see [Windows Image Files and Catalog Files Overview](windows-image-files-and-catalog-files-overview.md).

     

## Related topics


[Windows System Image Manager How-to Topics](windows-system-image-manager-how-to-topics.md)

 

 







