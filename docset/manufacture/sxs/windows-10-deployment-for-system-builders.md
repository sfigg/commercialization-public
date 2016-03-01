![Microsoft Logo](images/MicrosoftLogo.png)

# Contents

Use this guide to deploy Windows® 10 to a line of computers.

# Summary


The purpose of this guide is to document a prescriptive method for Windows 10 deployment that includes online and offline customizations, targeting system builders for both 64-bit and 32-bit configurations.

This is a step-by-step guide intended to provide information about Windows 10 deployment requirements as well as enabling the system builders to include/exclude optional steps due to their specific deployment environment.

# Intended audience

This guide about Windows deployment is especially targeted for system builders (level 200 technicians) and applies to all Windows 10 client operating system versions. For an introduction to Windows 10 deployment (level 100), see “Getting Started with the Windows ADK” document (ADK_GetStarted.chm) under Windows 10 ADK installation directory. You may also prefer external resources such as [TechNet](http://technet.microsoft.com/) and [MSDN](http://www.msdn.com/).

# Introduction

# Prepare your lab environment

In this step, you will set up your lab environment, which includes installing the latest Windows 10 ADK tools onto your designated technician computer. The technician computer must run Windows 10 x64 if you are going to deploy x64 images or Windows 10 x86 for x86 image deployment. Incorrect configurations may result in supported architecture mismatch while using deployment tools in the Windows 10 ADK. Where noted, follow the appropriate guidelines for either a 64-bit vs 32-bit deployment.

Before starting the deployment procedure, you need to download certain kits which will be used throughout the guide. from [OEM Partner Center](http://www.microsoft.com/oem/en/pages/index.aspx#fbid=7JcJYKYGEfo) &gt; “Downloads and Installation” &gt; “Understanding ADKs and OPKs”. In order to see the list of resources/kits that will be used and where to obtain them, please see [What you will need and where to get it](#what-you-will-need-and-where-to-get-it).

You will use a USB hard drive called USB-B to move files between computers, run scripts, and store and apply created images and another USB hard drive called USB-A to boot the system in WinPE.

<table>
<th>USB Hard Drive Name</th>
<th>Format</th>
<th>Minimum Size</th>
<tr>
<td>USB-A</td>
<td>FAT32</td>
<td>~4GB</td>
</tr>
<tr>
<td>USB-B</td>
<td>NTFS</td>
<td><p>~16GB x86</p><p>~32GB amd64</p></td>
</tr>
</table>

USB-B will be used to store deployment, recovery scripts, and sample answer files. Please see [Creating My USB-B](#creating-my-usb-b) to create your own USB-B.

Procedures throughout the document are highly dependent on the sample files contained in USB-B, therefore it is recommended to complete [Creating My USB-B](#creating-my-usb-b) section before starting.

## Customizations throughout the document

| **Pass**        | **Setting**                              | **Action**                                                            |
|-----------------|------------------------------------------|-----------------------------------------------------------------------|
| **Windows PE**  | Setup UI Language                        | EN-US                                                                 |
|                 | User Data                                | Preinstallation Product Key for ODR - Defined                         |
| **Specialize**  | IE Home Page                             | in the answer file                                                    |
|                 | OEM Name                                 | Defined in the answer file                                            |
|                 | OEM Logo                                 | Defined in the answer file                                            |
|                 | Model                                    | Defined in the answer file                                            |
|                 | Support Info                             | Defined in the answer file                                            |
| **Oobe System** | Reseal                                   | Audit/OOBE                                                            |
|                 | StartTiles                               | Square Tiles / SquareOrDesktopTiles set to pin only desktop apps      |
|                 | TaskbarLinks (up to 6 pinned .lnk files) | Paint and Control Panel shortcuts have been set                       |
|                 | Themes                                   | Custom Theme with the OEM logo as the desktop background has been set |
|                 | Visual Effects                           | SystemDefaultBackground set                                           |

## Additional Customizations

### Product Deployment

-   Office Single Image v15.4 OPK preloaded

### Image Customization

- Adding language interface packs to Windows

- Adding Drivers and Update Packages

- Adding OEM Specific Logo and background files to Windows

- Image size optimization

- Pinning desktop apps to start sceen

# Create WinPE bootable USB


|  Windows version  | Link to run ADKSetup.exe      |
|-------------------|-------------------------------|
| Windows 10 RTM    | [**Windows 10 ADK**](http://download.microsoft.com/download/8/1/9/8197FEB9-FABE-48FD-A537-7D8709586715/adk/adksetup.exe)  |
| Windows 10 Version 1511 | [**Windows 10 ADK**](http://download.microsoft.com/download/3/8/B/38BBCA6A-ADC9-4245-BCD8-DAA136F63C8B/adk/adksetup.exe) |

Important: You must use the matching version of ADK for the images being customized. If building an image using RTM image use Windows 10 RTM ADK. If using Windows 10 1511 image use Windows 10 1511 ADK.
For more details about the ADK, see the [Windows 10 ADK Documentation Homepage](https://technet.microsoft.com/library/mt297512.aspx).

1.  Follow the on-screen instructions to install the Windows ADK, including the **Deployment Tools**, **Windows Preinstallation Environment**, and **Windows Assessment Toolkit** features.

    ![Select ADK Features](images/ADK_SelectFeatures.png)

1.  Press the Windows key to display the **Start** menu. Type:
    
        Deployment and Imaging Tools Environment

    Right-click the name of the tool and then click **Run as administrator**.

2.  Windows 10 ADK allows you to create **Windows PreInstallation Environment**. Copy base WinPE to new folder.

    If you use an **x64** Windows 10 image, copy the x64 WinPE folder structure:

        Copype amd64 C:\winpe_amd64

    If you use an **x86** Windows 10 image, copy the x86 WinPE folder structure:

        Copype x86 C:\winpe_x86

1.  You may add packages and/or drivers to WinPE here.

2.  Connect USB Drive size at least 4GB. ***USB-A, FAT32, ~4GB***

    ![Connect USB](images/ConnectUSB.png)

3.  Make the inserted USB a new WinPE bootable USB

    If you use an **x64** Windows 10 image, make an x64 WinPE USB:

        MakeWinPEMedia /UFD C:\winpe_amd64 F:

    If you use an **x86** Windows 10 image, make an x86 WinPE USB:

        MakeWinPEMedia /UFD C:\winpe_x86 F:

    (Where F: is the drive letter of USB)

## Install Windows with basic customizations

Please obtain Windows 10 x86/x64 DVD media from a Microsoft Authorized Distributor.

For a document to help you tailor the customizations defined in your unattend.xml file, see the [Windows Guidelines for System Builders](http://www.microsoft.com/oem/en/pages/download.aspx?wpid=w_w8_129) and [Windows Policy for System Builders](https://oem.microsoft.com/downloads/worldwide/windows_10/Windows_10_Policy_SB.pdf).

1.  Copy the sources\\Install.wim file from the directory in the Windows 10 media that you will be deploying to your local Desktop (~3gb).

    ![Copy WIM](images/CopyWIM.png)

1.  Run **Windows System Image Manager** to start creating an answer file from scratch. This tool allows you to create or manage your answer files in an easy and organized manner.

    ![Run SIM](images/RunSIM.png)

1.  Navigate to **File** &gt; **Select Windows Image**. Browse to your local desktop and select **Install.wim**. Catalog file will be created (.clg file) for that specified wim.

    Troubleshoot: Catalog creation may fail due to several reasons. Please make sure install.wim has read/write permissions. If you continue getting error, make sure correct architecture (x86 or x64) Windows 10 is installed on technician computer. If you are creating catalog for x64 Windows 10 image, you are required to use x64 Windows 10 installed on x64 Windows 10 computer. Install.wim image and Windows 10 ADK versions must be the same.

1.  Open a sample answer file or create a new one.

    -   This is the sample answer file included in the USB-B:

        USB-B\ConfigSet\AutoUnattend.xml

1.  Associate the answer file with the Windows Image by clicking **OK** at the prompted message box to add a driver to Windows PE, click **Insert** select **Driver Path** and select pass **1 windowsPE** and then browse to the driver. Note: This step is optional and only required if a third-party driver is needed for use in the Windows Preinstallation Enviornment. This step is optional

2.  To add a package, click **Insert** select **Package** and then browse to the package you want to add. This step is optional

### Customize the answer file

Troubleshoot: A blank character in **specialize | Microsoft-Windows-Shell-Setup | Computer Name** will result in Windows installation failure.

1.  Please see an example of an answer file for basic customizations:

    -   USB-B\ConfigSet\AutoUnattend.xml

    You may use the sample answer file and modify relevant parts or start from scratch by specifying some basic customizations.

    Please see and use the Windows 10 default product key from [OEM Partner Center](https://www.microsoft.com/OEM/en/products/windows/Pages/windows-10-build.aspx#fbid=nV7H02bHHiv) listed under **Default product keys** tab.

1.  Add a product key that matches the Windows edition. This key isn't used to activate Windows, so you can reuse the same key for multiple installations:

    -   In the **Answer File** pane, select **Components\1 windowsPE\amd64_Microsoft-Windows-Setup_neutral\UserData\ProductKey**. In the **ProductKey Properties** pane, under **Settings**, enter the value next to Key.

    **Important:** These product keys *cannot* be used for activation. You will need to type a software product key during the installation process for activation. These keys will be removed when sysprep generalize is run. The end user will be required to type the unique product key from the Certificate of Authenticity (COA) label when first booting Windows 10

1.  Add your support information:

    In the **Answer File** pane, select **Components\4 specialize\amd64_Microsoft-Windows-Shell-Setup_neutral\OEMInformation**.

    In the **OEMInformation Properties** pane, in the **Settings** section, update the following values: company name (Manufacturer), hours (SupportHours), phone number (SupportPhone), and website (SupportURL).

1.  Prepare your computer to boot to audit mode after the Windows installation is complete:

    In the **Windows Image** pane, expand **Components**, right-click **amd64_Microsoft-Windows-Deployment**, and then select **Add Setting to Pass 7 oobeSystem**.

    In the **Answer File** pane, select **Components\7 oobeSystem\amd64_Microsoft-Windows-Deployment _neutral\Reseal**.

    In the **Reseal Properties** pane, in the **Settings** section, add the following value: Mode =Audit.

1.  Set the Internet Explorer home page:

    In the **Windows Image** pane, right-click **amd64_Microsoft-Windows-IE-InternetExplorer**, and then select **Add Setting to Pass 4 specialize**.

    In the **Answer File** pane, select **Components\4 specialize\amd64_Microsoft-Windows-Microsoft-Windows-IE-InternetExplorer_neutral**.

    In the **IE-InternetExplorer Properties** pane, in the **Settings** section, select Home_page, and add the URL of your website.

1.  OEMs can specify **Disk Configuration** which is used to create/modify disk partitions and set image installation partition. This step is optional and configuration is included in the sample answer file USB-B\ConfigSet\AutoUnattend.xml.

    Save the answer file to USB-B\ConfigSet\AutoUnattend.xml and close Windows SIM.

### Install Windows

1.  Please complete [Creating My USB-B](#creating-my-usb-b) section before skipping this step to make sure the Windows installation files have been copied to the **myWindows** directory in USB-B.

2.  Boot the reference computer and insert USB-A.

3.  After WinPE has been booted, insert USB-B.

    Troubleshoot: IF booting with USB fails, please make sure you have prioritized USB boot instead of HDD boot. To do so, enter BIOS menu and adjust boot sequence as choosing the first option as USB boot.

1.  Type *diskpart* and hit enter to start Diskpart. Then type *list volume* to identify volume label of USB-B (For example: E:\). Finally type *exit* to quit Diskpart.

    ![Diskpart](images/diskpart.png)

1.  Use the following command to start installation. This command triggers *setup.exe* with an answer file to install Windows 10 with additional customizations.

        Xcopy /herky e:\configset\$oem$ e:\MyWindows\Sources\$OEM$

        E:\myWindows\setup.exe /unattend:E:\ConfigSet\AutoUnattend.xml

1.  After installation files have been copied, disconnect USB-A.

2.  Disconnect USB-B right after the computer reboots.

### Verify customizations in Audit mode

**Important**: Connecting the computer to internet is not recommended during manufacturing stages. It is not recommended to get the updates from Windows Update in audit mode. This will likely generate an error while generalize + syspreping the machine from audit mode.

1.  After setup has been finished computer logs into Windows in Audit mode automatically as an Administrator.

2.  Click the *Desktop tile* to show the desktop and you should see the Sysprep window.

3.  Verify your changes which you’ve stated in the answer file (see manufacturer name, support phone number” and other customizations).

    ![Sysprep](images/Sysprep.png)

1.  The image must be generalized before being used as a manufacturing image; Select **Generalize** checkbox.

2.  In the System Cleanup Action box select **Enter System Out-of-Box Experience**.

3.  In the shutdown options box select **Shutdown**.

## Capture an image

1.  Boot reference computer and connect USB-A.

2.  After WinPE has been booted connect USB-B.

    Troubleshoot: If booting with USB fails, please make sure you have prioritized USB boot instead of HDD boot. To do so, open the BIOS menu and adjust the boot sequence so that the first option is USB boot. As the system continues booting from HDD, Windows will enter specialize and then OOBE pass. In order to capture a generalized and stable image, none of the Windows passes must be completed. To generalize the image again, press CTRL+SHIFT+F3 to skip OOBE and boot in Audit mode. In Audit mode, Sysprep the system by using OOBE Reboot and Generalize switches. After the system reboots, make sure to boot from USB-A to WinPE.

1.  Type *diskpart* and hit enter to start Diskpart. Then type *list volume* to identify volume label of Windows installation volume labelled “Windows” (For example: C:\). Finally type *exit* to quit Diskpart

2.  Capture the image of the windows partition to USB-B. This process takes several minutes.

        MD E:\scratchdir

        Dism /Capture-Image /CaptureDir:C:\ /ImageFile:E:\Images\ThinImage.wim /Name:"myWinImage" /scratchdir:e:\scratchdir

    (C:\ is the volume label of currently installed Windows. E:\ is the volume label of USB-B)

## Update images for each model: offline servicing

1.  Before mounting and editing the image please take a backup copy in the same directory and rename the image which will be modified as ModelSpecificImage.wim.

        Copy E:\Images\ThinImage.wim E:\Images\ModelSpecificImage.wim

### Mount images

1.  Mount Windows image (ModelSpecificImage.wim) This process extracts the contents of the image file to a location where you can view and modify the mounted image.

        Md C:\mount\windows

        Dism /Mount-Wim /WimFile:E:\Images\ModelSpecificImage.wim /index:1 /MountDir:C:\mount\windows

    *(where E:\ is the drive letter of USB-B)*

1.  Mount Windows RE Image file.

        Md c:\mount\winre

        Dism /Mount-Image /ImageFile:C:\mount\windows\Windows\System32\Recovery\winre.wim /index:1 /MountDir:C:\mount\winre

    **Troubleshoot**: If mounting operation fails, make sure that you are using the Windows 10 version of DISM that is installed with the Windows ADK and not an older version from your technician computer. Don’t mount images to protected folders, such as your User\Documents folder. If DISM processes are interrupted, consider temporarily disconnecting from the network and disabling virus protection.

    ![Mount](images/mount.png)

    ![Windows folder](images/windowsfolder.png)

### Modify images

#### Add drivers

**x64/x86 distinction:** *IF you will be using x64 Windows 10 image, add x64 drivers or if you will be using x86 Windows 10 image add x86 drivers.*

1.  Adding driver packages one by one. (.inf files) SampleDriver\driver.inf is a **sample** driver package that is specific to the computer model. (Type your own specific driver path) **If you have multiple driver packages please skip to the next step**

        Dism /Add-Driver /Image:C:\mount\windows /Driver:"C:\SampleDriver\driver.inf"

        Dism /Add-Driver /Image:C:\mount\winre /Driver:"C:\SampleDriver\driver.inf"

1.  Multiple drivers can be added on one command line if you specify a folder instead of an .inf file. To install all of the drivers in a folder and all its subfolders use the **/recurse** option.

        Dism /Image:C:\mount\windows /Add-Driver /Driver:c:\drivers /Recurse

1.  Review the contents of the %WINDIR%\Inf\ (C:\mount\windows\Windows\Inf\) directory in the mounted Windows image to ensure that the .inf files were installed. Drivers added to the Windows image are named Oem\*.inf. This is to ensure unique naming for new drivers added to the computer. For example, the files MyDriver1.inf and MyDriver2.inf are renamed Oem0.inf and Oem1.inf.

2.  Verify your driver has been installed for both images

        Dism /Image:C:\mount\windows /Get-Drivers

        Dism /Image:C:\mount\winre /Get-Drivers

**Important**: IF the driver contains only the installer package and doesn’t have an .inf file, you may choose to install the driver in AUDIT mode in **Section 6** by double-clicking the corresponding installer package. Some drivers may be incompatible with Sysprep tool that they will be removed after sysprep generalize even if they have been injected offline.

In this two cases, you would require to add an extra parameter to USB-B\AnswerFiles\UnattendSysprep.xml in order to persist the drivers in the image when the image will be generalized.

&lt;PersistAllDeviceInstalls&gt;true&lt;/PersistAllDeviceInstalls&gt;

property must be added to USB-B\AnswerFiles\UnattendSysprep.xml during generalize pass in order to persist the drivers in the image. Please refer to [TechNet link](http://technet.microsoft.com/library/ff716298.aspx) about the details of this property and how to add it to an answer file

#### Add language interface packs

**OBTAIN**: Download Windows 10 Language Interface Packs from [OEM Partner Center](https://www.microsoft.com/OEM/en/installation/downloads/Pages/Windows-10-v1511-Language-Interface-Packs.aspx#fbid=nV7H02bHHiv) under “LIPs” tab

**Reference:** [Add Language Interface Packs to Windows 10](https://msdn.microsoft.com/library/windows/hardware/dn898477.aspx)

**Important: LIP Versions must matching other Windows components versions for Image and ADK**

**x64/x86 distinction:** *If you will be using x64 Windows 10 image, install x64 LIPs or if you will be using x86 Windows 10 image install x86 LIPs*

1.  Copy LIP folder to USB-B\LanguagePack\x64 or USB-B\LanguagePack\x86 folder:

    ![Copy LIP](images/copylip.png)

1.  Apply LIP to mounted image

    **x64/x86 distinction**

    ***Amd64 architecture***

        Dism /image:C:\mount\windows /add-package /packagepath:e:\LanguagePacks\amd64\ga-ie\lp.cab

    ***X86 architecture***

        Dism /image:C:\mount\windows /add-package /packagepath:e:\LanguagePacks\x86\ga-ie\lp.cab

**Important: Do not install a language pack after an update. If an update (hotfix, general distribution release [GDR], or service pack [SP]) is installed that contains language-dependent resources before a language pack is installed, the language-specific changes that are contained in the update are not applied the update will need to be reinstalled. Always install language packs before installing updates.**

#### Add update packages

**x64/x86 distinction:** *IF you will be using x64 Windows 10 image, add x64 update packages or if you will be using x86 Windows 10 image add x86 update packages*

**OBTAIN**: Obtain update packages by downloading from [Microsoft Update Catalog](http://catalog.update.microsoft.com/v7/site/Home.aspx)

1.  Run Internet Explorer and navigate to [Microsoft Update Catalog](http://catalog.update.microsoft.com/v7/site/Home.aspx) webpage. Please see the essential updates from *What You Must Obtain & From Where* section which you should obtain from Microsoft Update Catalog.

2.  Type every single update package one by one into the search box and click **Search**.

    ![Update catalog](images/updatecatalog.png)

1.  After seeing search is competing, click **Add** next to the version and architecture of the package you wish to download.

    ![Add Update Catalog](images/addupdatecatalog.png)

1.  After you’ve added all of the below listed updates, click **view basket** and then **Download**.

    ![Download Update Catalog](images/downloadupdatecatalog.png)
    
    ![Download complete](images/downloadupdatecatalogcomplete.png)

    **Troubleshoot:** IF you encounter an error as “The website has encountered a problem” after clicking “Download”, try turning off the pop-up blocker in IE or disabling Protected Mode in IE temporarily

    ![Enable Protected Mode](images/enableprotectedmode.png)

1.  After downloading all the listed essential updates, add **update packages** (KB packages) to the image one by one by using the following command

    *x64/x86 distinction*

    ***Amd64 architecture***

        Dism /Add-Package /Image:C:\mount\windows /PackagePath:"C:\SampleUpdatePackages\Windows10-KB3118754-x64.msu”

    ***X86 architecture***

        Dism /Add-Package /Image:C:\mount\windows /PackagePath:"C:\SampleUpdatePackages\Windows10-KB3118754-x86.msu”

1.  Add updates to winre.wim where apply, not all updates apply to winre.wim

    *x64/x86 distinction*

    ***Amd64 architecture***

        Dism /Add-Package /Image:C:\mount\winre /PackagePath:"C:\SampleUpdatePackages\Windows10-KB3118754-x64.msu”

    ***X86 architecture***

        Dism /Add-Package /Image:C:\mount\winre /PackagePath:"C:\SampleUpdatePackages\Windows10-KB3118754-x86.msu”

#### Add OEM specific visual customizations

1.  Create OEM folder under C:\mount\windows\Windows\system32\ directory.

2.  Copy the OEM logo to C:\mount\windows\Windows\system32\OEM\**FabrikamLogo.bmp** directory which will be mapped in unattend file in **OEM Information | Logo** property.

    See the below image to add OEM logo in an answer file.

    -   %windir%\system32\OEM\FabrikamLogo.bmp

    **REFERENCE:** OEM Logo file must be in .bmp format and in 120px x 120px size. Please see Windows Guidelines for System Builders for OEM Logo details.

    ![OEM Logo details](images/oemlogodetails.png)

1.  To display an OEM specific desktop background picture, the image file must be placed in %windir%\system32\OEM\**Fabrikam.bmp** directory. Verify that the path is same in answer file corresponding to oobeSystem &gt; Microsoft-Windows-Shell-Setup &gt; Themes &gt; DesktopBackground property. See the below image to add desktop background in an answer file.

    ![Add desktop background](images/adddesktopbackground.png)

#### Modify Start layout

The Start tile layout in Windows 10 provides OEMs the ability to append tiles to the default Start layout to include Web links, secondary tiles, classic Windows applications, and universal Windows apps. OEMs can use this layout to make it applicable to multiple regions or markets without duplicating a lot of the work. In addition, OEMs can add up to three default apps to the frequently used apps section in the system area, which delivers sytem-driven lists o the user including important or frequently accessed system locations and recently installed apps.

1.  Create Layoutmodification.xml.

    **Note: It is recommended to start with the sample on** USB-B**\StartLayout\layoutModification.xml as it conforms to the samples in this document (Example Only).**

    The Sample LayoutModification.xml shows two groups called “Fabrikam Group 1” and “Fabrikam Group 2”, which contain tiles that will be applied if the device country/region matches what’s specified in Region (in this case, the regions are Germany and United States). Each group contains three tiles and the various elements you need to use depending on the tile that you want to pin to Start.

    Keep the following in mind when creating your LayoutModification.xml file:

    - If you are pinning a Classic Windows application using the **start:DesktopApplicationTile** tag and you don’t know the application’s application user model ID, you need to create a .lnk file in a legacy Start Menu directory before first boot.

    - If you use the **start:DesktopApplicationTile** tag to pin a legacy .url shortcut to Start, you must create a .url file and add this file to a legacy Start Menu directory before first boot.

    For the above scenarios, you can use the following directories to put the .url or .lnk files:

    - %APPDATA%\Microsoft\Windows\Start Menu\Programs\

    - %ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\

1.  Save the LayoutModification.xml file.

2.  Add your LayoutModification.xml file to the Windows image. You’ll need to put the file in the following specific location before first boot. If the file exists, you should replace the LayoutModification.XML that is already included in the image.

    Copy E:\StartLayout\layoutmodification.xml c:\mount\windows\users\default\AppData\Local\Microsoft\Windows\Shell\

    Where E: is the drive letter of USB-B

1.  If you pinned tiles that require .url or .lnk files, add the files to the following legacy Start Menu directories :

    1.  %APPDATA%\Microsoft\Windows\Start Menu\Programs\

    2.  %ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\

    Copy e:\StartLayout\Bing.url “C:\mount\windows\ProgramData\Microsoft\Windows\Start Menu\Programs\”

    Copy e:\StartLayout\Paint.lnk "C:\mount\windows\ProgramData\Microsoft\Windows\Start Menu\Programs"

    Copy E:\StartLayout\Bing.url “C:\mount\windows\users\All Users\Microsoft\Windows\Start Menu\Programs”

    Copy E:\StartLayout\Paint.lnk “C:\Mount\Windows\Users\All Users\Microsoft\Windows\Start Menu\Programs”

    **Note: If you don’t create a LayoutModification.xml file and you continue to use the Start Unattend settings, the OS will use the Unattend answer file and take the first 12 SquareTiles or DesktoporSquareTiles settings specified in the Unattend file. The system then places these tiles automatically within the newly-created groups at the end of Start—the first six tiles are placed in the first OEM group and the second set of six tiles are placed in the second OEM group. If OEMName is specified in the Unattend file, the value for this element is used to name the OEM groups that will be created.**

#### Modify the answer file

The System Builder may want to make additional customizations through an unattend file. The sample unattend file on USB-B contains additional commone customizations.

    Copy /y E:\AnswerFiles\Unattend.xml C:\Mount\Windows\Windows\Panther

    (where E:\ is USB-B**)**

### Optimize WinRE

1.  Increase scratchspace size.

    Dism /image:c:\mount\winre /set-scratchspace:512

1.  Cleanup unused files and reduce size of winre.wim

    Dism /image:"c:\mount\winre" /Cleanup-Image /StartComponentCleanup /Resetbase

### Unmount images

1.  Close all applications that might access files from the image

2.  Comit the changes and unmount the Windows RE image:

    Dism /Unmount-Image /MountDir:"C:\mount\winre" /Commit

    where C is the drive letter of the drive that contains the image.

    This process can take a few minutes.

1.  Make a backup copy of the updated Windows RE image:

    Troubleshoot: If you cannot see winre.wim under the specified directory, use the following command to set the file visible:

        attrib -h -a -s C:\mount\windows\Windows\System32\Recovery\winre.wim

        Dism /export-image /sourceimagefile:c:\mount\windows\windows\system32\recovery\winre.wim /sourceindex:1 /DestinationImageFile:e:\images\winre_bak.wim

    Del c:\mount\windows\windows\system32\recovery\winre.wim

    Copy e:\images\winre_bak.wim c:\mount\windows\windows\system32\recovery\winre.wim

    When prompted, specify **F** for file

1.  Check the new size of the Windows RE image.

            Dir "C:\mount\windows\Windows\System32\Recovery\winre.wim"

    Follow the below partition layout size chart to determine the size of your recovery partition in createartitions-&lt;firmware&gt;.txt files. The amount of free space left is after you copy winre.wim to the hidden partition.

    Please reference [Disk Partition rules](https://technet.microsoft.com/library/hh824839.aspx#DiskPartitionRules) for more information.

    - If the partition is less than 500 MB, it must have at least 50 MB of free space.

    - If the partition is 500 MB or larger, it must have at least 320 MB of free space.

    - If the partition is larger than 1 GB, we recommend that it should have at least 1 GB free.

            rem == Windows RE tools partition =============== 
            create partition primary size=500

    rem == 3. Windows RE tools partition =============== create partition primary size=500

    Optional: This section assumes you’d rather keep winre.wim inside of install.wim to keep your languages and drivers in sync. If you’d like to save a bit of time on the factory floor, and if you’re OK managing these images separately, you may prefer to pull winre.wim from the image and apply it separately.

1.  Commit the changes and unmount the Windows image:

    Dism /Unmount-Image /MountDir:"C:\mount\windows" /Commit
 
    where C is the drive letter of the drive that contains the image.

    This process may take several minutes.

## Deploy the image to new computers (Windows installation)

1.  On technician computer locate the following files in USB-B/Deployment destination. Please see [Creating My USB-B](#creating-my-usb-b) to create and place the files in correct paths. If you’ve already done this step please skip

    ![Locate USB files](images/locateusbfiles.png)

2.  Boot reference computer and connect USB-A

3.  After WinPE has been booted connect USB-B

4.  Type *diskpart* and hit enter to start Diskpart. Then type *list volume* to identify volume label of USB-B (For example: E:\). Finally type *exit* to quit Diskpart

    E:\Deployment\Walkthrough-Deploy.bat E:\Images\ModelSpecificImage.wim

    Note: There are several pauses in the script. You will be prompted Y/N for the Apply operation if this is a CompactOS deployment.

1.  Note: Only use CompactOS on Flash drive based devices because CompactOS performance depends on the storage device capabilities. CompactOS is NOT recommend on rotational devices. For more information, see [Compact OS](https://msdn.microsoft.com/library/windows/hardware/dn940129.aspx).

    Remove USB-A and USB-B, and then type:

        Exit

## Update images manually by using AUDIT MODE (online servicing)

**Important**: Connecting the computer to internet is not recommended during manufacturing stages. It is not recommended to get the updates from Windows Update in audit mode. This will likely generate an error while generalize + syspreping the machine from audit mode.

1.  Windows boots in AUDIT mode and by default, user profile settings are removed during the generalization process.

2.  If installing Office, refer to [Preload Microsoft Office single image v15.4 OPK](#preload-microsoft-office-single-image-v15.4-opk) for Microsoft Office Single image v15.4 or [Preload Microsoft Office 2016](#preload-microsoft-office-2016) for Office 2016

### Preload Microsoft Office single image v15.4 OPK

Download Microsoft Office Single Image v15.4 from the [OEM Partner Center](http://www.microsoft.com/OEM/en/installation/downloads/Pages/office-single-image-v15-opk.aspx).

1.  Open an elevated command prompt.

2.  Copy the content of the OPK to a directory, which will be OfficeSingleImagev15.4InstallationDirectory.

3.  Navigate to the installation directory. The installation directory is the folder that contains the files shown in following figure.

        Cd C:\<OfficeSingleImagev15.4InstallationDirectory>

    ![Installation directory](images/installationdirectory.png)

    Important: The installation process for the OPK is the same for computers that run 32-bit operating systems or 64-bit operating systems. You can preload the 32-bit version of Office 2013 on computers that run either 32-bit or 64-bit operating systems. You can preload the 64-bit version of Office 2013 only on computers that run 64-bit operating systems. To prevent possible compatibility issues with add-ins or third-party applications, preload *only the 32-bit version* of the OPK on both 32-bit and 64-bit computers.

1.  Run oemsetup.en-us script.

        oemsetup.en-us.cmd

1.  After installation is complete, Microsoft Office Single Image v15.4 OOBE application tile will be placed on Apps view.

2.  To pin the to the start screen please see *Section 4.2.4 Pinning Desktop Apps to Start Screen and Taskbar* and type in **%allusersprofile%\Microsoft\Windows\Start Menu\Programs\Microsoft Office.lnk** to &lt;AppIdOrPath&gt; property. Please see that this customization already takes place in USB-B\AnswerFiles\UnattendSysprep.xml answer file.

### Preload Microsoft Office 2016

Please reference the [OEM Partner Center](https://www.microsoft.com/oem/en/installation/office/Pages/index.aspx#fbid=Pm9Tzt0sXR4) for the latest information on when the Office 2016 installation file will be available for download, as well as the Office 2016 installation guide. This guide will be updated shortly after Office 2016 releases.

### Prepare the system for recovery with Push Button Reset

Please reference [Push-button reset](https://msdn.microsoft.com/library/windows/hardware/dn938307.aspx) and [Windows Recovery Environment (Windows RE)](https://msdn.microsoft.com/library/windows/hardware/dn938364(v=vs.85).aspx) and [Hard Drives and Partitions](https://msdn.microsoft.com/library/windows/hardware/dn898577.aspx) for more information.

1.  Prepare Scanstate tool

    ***x64/x86 Distinction***

    *OEMs using an ***x64* Windows 10 image**, make x64 Scanstate directory*

    md E:\ScanState_amd64

    copy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\User State Migration Tool\amd64" E:\ScanState_amd64

    copy /Y "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Setup\amd64\Sources" E:\ScanState_amd64

    *OEMs using an ***x86* Windows 10 image**, make x86 Scanstate directory*

    md E:\ScanState_x86

    copy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\User State Migration Tool\x86" E:\ScanState_x86

    copy /Y "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Setup\x86\Sources" E:\ScanState_x86

    ***Where E: is USB-B drive letter***

1.  Create configuration file

    OEM can use a configuration file to restore and exclude registry keys and files during the PBR process.

    **Important: this section includes a work around for a known issue in Windows 10. OEM must apply this work around to avoid issues with the PBR process. **

    In some instances, Windows Defender settings and detection history might be captured into the customizations package by the ScanState tool. This can lead to failures during recovery due to file conflicts, and causes the PC to reboot and enter the “Installing Windows” phase repeatedly.

    **Note: OEM may use the sample configuration file on** USB-B**\Recovery\recoveryimage\pbr_config.xml which covers the steps below.**

1.  Create Recovery package

    Use ScanState tool to capture the installed customizations into a provisioning package, and save it in the folder c:\Recovery\customizations. This document uses the samples from USB-B\Recovery\RecoveryImage to create scanstate package.

    **Important: The scanstate package used by PBR must be a .ppkg file stored in C:\Recovery\Customizations folder or PBR will not be able to restore the package.**

2.  Create the recovery OEM folder and copy contents of USB-B\Recovery\RecoveryImage

    Copy E:\Recovery\recoveryimage c:\recovery\OEM

    Copy E:\StartLayout\\*.\* c:\recovery\OEM

1.  Run scanstate utility to gather app and customizations

    ***x64/x86 Distinction***

    *OEMs using an ***x64* Windows 10 image***

    Mkdir c:\recovery\customizations

    E:\ScanState_amd64\scanstate.exe /apps /ppkg C:\Recovery\Customizations\apps.ppkg /config:c:\Recovery\OEM\pbr_config.xml /o /c /v:13 /l:C:\ScanState.log

    *Where E: is the drive letter of USB-B*

    *OEMs using an ***x86* Windows 10 image***

    E:\ScanState_x86\scanstate.exe /apps /ppkg C:\Recovery\Customizations\apps.ppkg /i:c:\recovery\oem\regrecover.xml /config:C:\Recovery\OEM\pbr_config.xml /o /c /v:13 /l:C:\ScanState.log

    *Where E: is the drive letter of USB-B*

1.  Create extensibility script to restore additional settings and customizations

    You can customize the Push-button reset experience by configuring extensibility points. This enables you to run custom scripts, install additional applications, or preserve additional user, application, or registry data.

    The sample script EnableCustomizations.cmd will be called during PBR and will do 2 things

    a.  Copy the unattend.xml file used for initial deployment to the \windows\panther folder.

    b.  Copy the layoutmodification.xml to the system.

### Finalize and capture manufacturing image

1.  Delete the installation folders and files you have created for the preloaded applications. For example, *C:\Office-SingleImagev15.4-Setup*, and the *C:\LIPsToBeInstalled* folder. Existance of these folders may increase the size of .wim file when the image of Windows drive gets captured.

2.  If Sysprep is open, close it and open an elevated command prompt.

3.  Copy winre backup to windows.

        Copy e:\images\winre_bak.wim c:\windows\system32\recovery\winre.wim

1.  Copy unattend.xml to recovery folder to enable recovery of unattend settings during Push Button Reset.

        Copy USB-B\answerfiles\unattendsysprep.xml c:\Recovery\OEM\unattend.xml

1.  Connect USB-B to reference computer.

2.  Generalize the image by using the answer file which reflects the changes made in the section [Update images manually by using AUDIT MODE (online servicing)](#update-images-manually-by-using-audit-mode-online-servicing).

    These changes include Microsoft Office tile component pinned to the Start screen.

        Cmd /c C:\Windows\System32\Sysprep\sysprep /unattend:c:\Recovery\OEM\Unattend.xml /generalize /oobe /shutdown

1.  Boot reference computer and connect USB-A.

2.  After WinPE has been booted connect USB-B.

3.  Type *diskpart* and hit enter to start Diskpart. Then type *list volume* to identify volume label of Windows Installation volume labelled “Windows” (For example: E:\). Finally type *exit* to quit Diskpart.

4.  Start cleanup of the image.

    **Important: By default, non-major updates (such as ZDPs, or LCUs) are not restored. To ensure that updates preinstalled during manufacturing are not discarded after recovery, they should be marked as permanent by using the /Cleanup-Image command in DISM with the /StartComponentCleanup and /ResetBase options. Updates marked as permanent are always restored during recovery. **

        MD e:\scratchdir

        dism /Cleanup-Image /Image:e:\ /StartComponentCleanup /resetbase /scratchdir:e:\scratchdir

1.  Capture the image of the windows partition. This process takes several minutes.

        dism /Capture-Image /CaptureDir:E:\ /ImageFile:F:\Images\ModelSpecificImage.wim /Name:"myWinImageWithMSIUpdated" /scratchdir:e:\scratchdir

    Where E is the volume label of Windows and F is the volume label of USB-B.

1.  Copy the image to USB-B. This process takes several minutes.

        copy E:\ModelSpecificImage.wim H:\Images\

    Where H is the volume label of USB-B.

    This will overwrite the image created in the section [Deploy the image to new computers](#deploy-the-image-to-new-computers).

## Deploy the image 

Use the deployment script to layout the partitions on the device and apply the image. The walkthrough-deploy.bat in USB-B\deployment folder will partition the device based on device mode.

**Important: The Recovery partition must be the partition after the Windows partition to ensure winre.wim can be kept up-to-date during the life of the device.**

In Windows 10 Version 1511, we are changing our recommendation to have the WinRE partition placed after the OS partition. This allows future growth of the WinRE partition during updates. Today with the WinRE partition at the front of the disk, the size of it can never be changed, making it difficult to update WinRE when needed. We will continue to support having the WinRE partition located in different parts of the disk, but we encouraging you to follow the new recommendation.

E:\Deployment\walkthrough-deploy.bat E:\Images\BasicImage.wim

Note: There are several pauses in the script. You will be prompted Y/N for the Apply operation if this is a CompactOS deployment.

Note: Only use CompactOS on high end storage devices because CompactOS performance depends on the storage device capabilities. CompactOS is NOT recommend on rotational devices or storage greater than 32 GB. For more information, see [Compact OS](https://msdn.microsoft.com/library/windows/hardware/dn940129.aspx).

Remove USB-A and USB-B and type *exit* to reboot your computer with Windows 10.

## Finalize deployment

1.  Upon deploying your model specific image to destination computers, boot the computer with master image for the first time in AUDIT mode

    **Important**: In order to minimize the first boot time, (Boot > Specialize > OOBE > Start screen) specialize pass must be completed in the factory. Specialize pass will configure hardware specific information which Windows will run on.

    For more information about the first boot time requirements, see [Windows Policy for System Builders](http://www.microsoft.com/oem/en/pages/download.aspx?wpid=w_w8_008).

1.  Please note that at the end of the section [Update images manually by using AUDIT MODE (online servicing)](#update-images-manually-by-using-audit-mode-online-servicing-), the system was sealed with OOBE mode. Please proceed with Audit. If the system boots in OOBE, press CTRL+SHIFT+F3 in order to pass OOBE and boot in audit mode.

2.  If you want to apply additional steps, such as executing OEM diagnostics tests and so on, apply them here.

3.  Finally, run the Sysprep tool (C:\Windows\System32\Sysprep\sysprep.exe) and seal the system back to **OOBE** and **Shutdown** but *without* **Generalize**.

4.  The system is ready to ship.

    Important: If you are manufacturing a small amount of devices without using an image managing tool such as disk duplicators or Windows Deployment Service, you can choose to use the following practice:

    1. You can manufacture those devices by first booting in WinPE - inserting USB-A. 
    2. Then insert USB-B where final manufacturing image is contained. 
    3. Run Walktrough-Deploy script to apply the image. 
    4. After you applied the image, follow the steps in this Finalize deployment section. 
    5. Now the device is ready to be shipped with your final manufacturing image and PBR feature implemented. 
    6. Finally, replicate the same procedure with the other devices.

# Appendix

## Creating my USB-B
---------------------------------------------------------------------------------------------------------------

-   The deployment steps in this guide depend on the sample configuration files included in USB-B. Therefore, it is recommended to create your own USB-B before starting the deployment process. 

-   Contents of the configuration files included in USB-B are a sample that you may change according to your branding and manufacturing choices. However, the file names and hierarchy of the folders and files must be the same as demonstrated in this guide in order to align your deployment procedure with this guide.

## Differences between 64-bit and 32-bit deployment

It is recommended to consider 64-bit deployment versus 32-bit deployment disk footprint according to the storage of the device you are manufacturing.

The overall deployment flow mentioned in this guide doesn’t differ between 64-bit and 32-bit deployment. Only some of the resource versions and the way those resources are created differs. The following table covers the x64/x86 distinctions.

| **Distinction**                         | **Description**                                                                                                                                                                                                                                                                              | **Related Section**                  |
|-----------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
| Windows installed on Technican Computer | When Windows ADK gets installed on a technican computer the the deployment tools in the ADK would be installed according to the architecture of the Windows on technician computer. In short if ADK is installed on Windows x64, the tools would be installed 64-bit version, or vice-versa. | [Prepare your lab environment](#prepare-your-lab-environment)         |
| Creating WinPE folder structure         | WinPE differs between x64 and x86 architecture, so you have to use different commands to create a different WinPE folder for each architecture.                                                                                                                                                    | [Create WinPE bootable USB](#create-winpe-bootable-usb) |
| Drivers                                 | Driver versions differ between different architectures. If you are manufacturing a 64-bit Windows image, please use x64 drivers, and vice-versa for 32-bit Windows.                                                                                                                                                   | [Add drivers](#add-drivers)         |
| Update Packages for Windows Image       | Update package versions differ between different architectures. If you are manufacturing a 64-bit Windows image please use x64 update packages, and vice-versa for 32-bit Windows.                                                                                                                                   | [Add update packages](#add-update-packages) |
| Language Interface Packs                | IF you will be using x64 Windows 10 image, install x64 LIPs or if you will be using x86 Windows 10 image install x86 LIPs.                                                                                                                                                                    | [Prepare the system for recovery with Push Button Reset](#prepare-the-system-for-recovery-with-push-button-reset)                          |

## What you will need and where to get it

Before starting the deployment procedure OEM requires to download certain kits which will be used throughout the guide, such as Microsoft Office Single Image v15.4, update packages, language interface packs etc… Below is the complete list of resources/kits an OEM requires to download and where they download them.

| Resource/Kit  |   Available at    | Related section   |
|---------------|-------------------|-------------------|
| Windows 10 ADK|   [http://www.microsoft.com/en-US/download/details.aspx?id=39982](http://www.microsoft.com/en-US/download/details.aspx?id=39982) | [Create WinPE bootable USB](#create-winpe-bootable-usb) |
| Windows 10 x64/x86 DVD Media (desired language) | Obtain Windows 10 media which you will be customizing from Microsoft Authorized Distributor | [Install Windows with basic customizations](#install-windows-with-basic-customizations) |
| Windows 10 Default Product Keys | Default Product Keys are located at [OEM Partner Center](https://www.microsoft.com/OEM/en/products/windows/Pages/windows-10-build.aspx#fbid=nV7H02bHHiv) listed under **Default product keys** tab | [Customize the answer file](#customize-the-answer-file) |
| Language interface packs | LIPs are located at [OEM Partner Center](https://www.microsoft.com/OEM/en/installation/downloads/Pages/Windows-10-v1511-Language-Interface-Packs.aspx#fbid=nV7H02bHHiv) listed under **LIPs** tab | [Prepare the system for recovery with Push Button Reset](#prepare-the-system-for-recovery-with-push-button-reset) |
| Update Packages, List of Essential Updates by November 2015, KB 3118754 | Obtain update packages by downloading from [Microsoft Update Catalog](http://catalog.update.microsoft.com/v7/site/Home.aspx). The detailed procedure downloading update packages is mentioned in the releated section. | [Add language interface packs](#add-language-interface-packs) |
| Microsoft Office v15.4 | Obtain Microsoft Office v15.4 by downloading from [OEM Partner Center](http://www.microsoft.com/OEM/en/installation/downloads/Pages/office-single-image-v15-opk.aspx) | [Preload Microsoft Office single image v15.4 OPK](#preload-microsoft-office-single-image-v15-4-opk) |


# References

[Windows Guidelines for System Builders](http://www.microsoft.com/oem/en/pages/download.aspx?wpid=w_w8_129)

[Windows Policy for System Builders](http://www.microsoft.com/oem/en/pages/download.aspx?wpid=w_w8_008)


