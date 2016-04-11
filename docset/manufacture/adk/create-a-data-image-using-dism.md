---
Description: Create a Data Image Using DISM
MS-HAID: 'p\_adk\_online.create\_a\_data\_image\_using\_dism'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Create a Data Image Using DISM
---

# Create a Data Image Using DISM


To add applications, files, and other resources to Windows® during an installation, you can create a data image. By using the Deployment Image Servicing and Management (DISM) tool, you can create additional Windows image (.wim) files that contain only files and applications that you intend to copy to the Windows installation.

Data images enable you to add:

-   Applications, files, scripts, and other resources to Windows during an installation.

-   Files, resources, and other data to a partition other than the operating system partition.

**Note**  
Data images must be used only to add new files to a Windows installation. Do not use data images to replace existing Windows files. Overwriting operating system data is unsupported.

 

Previous methods of transferring data to a Windows installation required the use of $OEM$ folders. These folder structures are still supported, but data images provide an easier and more efficient means of transferring additional data to Windows.

In unattended installations, the Windows image to install is specified by the `OSImage` setting in the Microsoft-Windows-Setup component. You can add one or more `DataImage` settings in the Microsoft-Windows-Setup component that represent additional data images that you add to the system. For more information, see the Windows® Unattended Setup Reference.

**To create a data image**

1.  Locate the data that you will create a data image for.

2.  Open a command prompt as an administrator, or boot the computer to Windows PE to open the Windows PE command prompt.

3.  Use DISM to compress your data files to a .wim file. For example:

    ``` syntax
    Dism /Capture-Image /ImageFile:c:\data\myData.wim /CaptureDir:C:\data\dataFiles /Name:MyData
    ```

    In this example, everything under the C:\\Data\\DataFiles directory is added to the .wim file and the .wim file is given the label "MyData". All files and folders under C:\\Data\\DataFiles are extracted to the root of the drive specified in the answer file.

    For more information about how to use DISM, see [DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md).

4.  Copy the data image to an available location such as another partition or a network share during Windows Setup.

**To add a data image path to an answer file**

1.  Use Windows System Image Manager (Windows SIM) to create an answer file that contains the path to the data image to install and the location for the installation.

2.  Add the Microsoft-Windows-Setup\\`DataImage` settings to the appropriate configuration pass for your environment. For example: `windowsPE`.

3.  Save the answer file and close Windows SIM.

    The answer file must resemble the following example:

    ``` syntax
       <settings pass="windowsPE">
          <component name="Microsoft-Windows-Setup" processorArchitecture="x86" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
             <ImageInstall>
                <DataImage wcm:action="add">
                   <InstallTo>
                      <DiskID>0</DiskID>
                      <PartitionID>1</PartitionID>
                   </InstallTo>
                   <InstallFrom>
                      <Credentials>
                         <Domain>Fabrikam</Domain>
                         <Username>MyUsername</Username>
                         <Password>MyPassword</Password>
                      </Credentials>
                   <Path>\\networkshare\share\MyData.wim</Path>
                   </InstallFrom>
                      <Order>1</Order>
                </DataImage>
             </ImageInstall>
          </component>
       </settings>
    ```

4.  Run Setup.exe, specifying the location of the answer file. For example:

    ``` syntax
    setup /unattend:C:\unattend.xml
    ```

All the files and folders specified in the data image are extracted to the root of the drive during installation. Executable files and scripts are not run when the data image is applied; they are only copied to the drive. You can use `FirstLogonCommands` to specify commands to run the first time a user logs on to the computer. For more information about `FirstLogonCommands`, see the Windows® Unattended Setup Reference.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Create%20a%20Data%20Image%20Using%20DISM%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



