---
author: Justinha
Description: Get the tools needed to customize Windows
MS-HAID: 'p\_sxs\_dmfg.get\_the\_tools\_needed\_to\_customize\_windows\_sxs'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Get the tools needed to customize Windows
---

# Get the tools needed to customize Windows


Here's what you'll need to start testing and deploying devices:

## <span id="pc"></span><span id="PC"></span>PCs


Here's how we'll refer to them:

-   **Technician PC**: Your work PC. This PC should have at least 15GB of free space for installing the [Windows Assessment and Deployment Kit (Windows ADK)](http://go.microsoft.com/fwlink/?LinkId=526803) and for modifying Windows images. We recommend either Windows 10 or Windows 8.1 with the latest updates. The minimum requirement is Windows 7 SP1, though this may require additional tools or workarounds for tasks such as mounting .ISO images.
-   **Reference device**: A test PC or tablet that represents all of the devices in a single model line; for example, the *Fabrikam Notebook PC Series 1*. This device must meet the Windows 10 minimum hardware requirements.

    You'll reformat this device as part of the walkthrough.

## <span id="hw"></span><span id="HW"></span>Storage


-   A USB key that's at least 8GB and can be formatted. It should not be a Windows-to-Go key or a key marked as a non-removable drive.
-   A second USB key or an external USB hard drive for storing files. Minimum free space: 8GB, using NTFS, ExFAT, or any other file system that allows files over 4GB.

When possible, use USB 3.0 keys/drives in USB 3.0 ports to speed up file copy procedures. Some USB 3.0 keys may not work with some USB 2.0 ports.

## <span id="sw"></span><span id="SW"></span>Software


Copy the following source files to the technician PC, rather than using external sources like network shares or removable drives. This reduces the risk of interrupting the build process from a temporary network issue or from disconnecting the USB device.

-   The latest Windows 10 image. Mount the ISO file to a drive, and note the drive letter, for example, D.

    This lab assumes the 64-bit architecture, so if you’re using the 32-bit version, change all mentions of x64 to x86.

-   Copy the D:\\sources\\install.wim file, and save it to the local drive, in the folder: **C:\\Images\\Win10\_x64\\**.
-   The Windows Assessment and Deployment Kit (ADK) for Windows 10 with a matching build number as the Windows 10 image.
-   Language packs with a matching build number and architecture as the Windows 10 image. Save the files using the folder structure: C:\\Languages\\fr-fr x64\\lp.cab.
-   Language components (Features on Demand) with a matching build number and architecture as the Windows 10 image. Save the files in the same folder as the main language pack:
    -   C:\\Languages\\fr-fr x64\\Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package.cab
    -   C:\\Languages\\fr-fr x64\\Microsoft-Windows-LanguageFeatures-TextToSpeech-fr-fr-Package.cab
    -   C:\\Languages\\fr-fr x64\\Microsoft-Windows-LanguageFeatures-Speech-fr-fr-Package.cab
-   Optional: Test product keys or distribution product keys that match the Windows 10 image. Note: we don’t cover adding the product keys in this lab.
-   Get any drivers, and packages that you’ll need for these devices.
-   Download a Windows app.
-   Optional: [Download the sample scripts, drivers, and packages](http://go.microsoft.com/fwlink/?LinkId=528668) that go along with this lab.

**Important**  The Windows ADK for Windows 10, language packs, and Feature-On-Demand (FOD) files must all be from the same build with a matching build number. The FODs must also match the architecture of the install.wim.

 

## <span id="prepare"></span><span id="PREPARE"></span>Prepare your technician PC


Here’s how to set up your PC for either Lab 1 or Lab 2.

**Copy the Windows image to the local drive**

1.  Mount the Windows ISO file that you downloaded (Right-click the file &gt; **Mount**), and note the drive letter, for example, D.
2.  In File Explorer, create a new folder (example: **C:\\Images\\Win10\_x64**), and copy the sources\\install.wim file into the folder. This will help speed file creation procedures later on.

**Install the Windows ADK for Windows 10**

1.  If you have a previous version of the Windows Assessment and Deployment Kit (ADK), uninstall it.
2.  Download the version of the [Windows ADK](http://go.microsoft.com/fwlink/?LinkId=526803) that matches the version of Windows that you’re installing. **Run** the installer.
3.  Click **Next** &gt; **Next** &gt; **Accept** to accept the defaults and to join the Customer Experience Improvement Program.
4.  Select the following tools:

    -   **Deployment Tools**
    -   **Windows Preinstallation Environment (Windows PE)**
    -   **Imaging and Configuration Designer (ICD)**
    -   **User State Migration Tool (USMT)**

    For these labs, you won't need the **Windows Performance Toolkit** or the **Windows Assessment Toolkit**. You can clear those check boxes.

5.  Click **Install**, and then click **Yes** to confirm. This may take a few minutes.
6.  When the installation is finished, click **Close**.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_dmfg\p_sxs_dmfg%5D:%20Get%20the%20tools%20needed%20to%20customize%20Windows%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



