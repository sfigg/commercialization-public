---
Description: 'Customize Client Backup - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.customize\_client\_backup'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Customize Client Backup - Windows Server Essentials'
---

# Customize Client Backup - Windows Server Essentials


You can customize Client Backup in the following ways:

-   Change the default Client Backup state, so that when a new client computer connects to the Windows Server Essentials server, it doesn’t automatically back up the system to the server.

-   Hide the Setup client restore service task.

-   Preload WinPE to the system so that the customer doesn’t need to download it from the Windows ADK.

## <span id="Customize_the_default_state_of_Client_Backup"></span><span id="customize_the_default_state_of_client_backup"></span><span id="CUSTOMIZE_THE_DEFAULT_STATE_OF_CLIENT_BACKUP"></span>Customize the default state of Client Backup


By default, all client computers connected to Windows Server Essentials have Client Backup turned on. To change this default behavior, set the user registry key **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows Server\\Deployment\\ClientBackupOff** to **1**. New client computers connected to Windows Server Essentials will not automatically be backed up to Windows Server Essentials, unless the administrator configures it on the Dashboard.

## <span id="Hide_the_Client_Restore_Service_setup_task_on_the_home_page"></span><span id="hide_the_client_restore_service_setup_task_on_the_home_page"></span><span id="HIDE_THE_CLIENT_RESTORE_SERVICE_SETUP_TASK_ON_THE_HOME_PAGE"></span>Hide the Client Restore Service setup task on the home page


To hide the task of setting up Client Restore Service, use registry key **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows Server\\Deployment\\ClientRestoreServiceDisabled**. If this registry key is set to **1**, the Setup client restore service task on the home page will be hidden, and the Restore Service tab in the Client computer backup settings and tools dialog will be removed.

## <span id="Preload_WinPE_for_client_full_system_restore"></span><span id="preload_winpe_for_client_full_system_restore"></span><span id="PRELOAD_WINPE_FOR_CLIENT_FULL_SYSTEM_RESTORE"></span>Preload WinPE for client full system restore


If a client computer has a successful backup on Windows Server Essentials, when a disaster happens to the client computer, the user can restore the client computer from the backup. If it is a software problem, the user can restore the system and data to the same hardware; if it is a hardware problem, the user can restore the system and data to similar new hardware.

To do that, the user needs to boot the client computer with a client restore media. Client restore media is a customized version of the Windows Preinstall Environment (WinPE). Windows Server Essentials will locate the WinPE on the server, customize the WinPE, and configure the client restore service or USB bootable flash drive with the client restore media.

The end user can download the Windows ADK and install WinPE. We recommended that you preload WinPE on the server, so that the user doesn’t need to download WinPE manually. To preload the WinPE on the server, you need to customize the WinPE image with the right language. For more info, see Customize Windows PE.

## <span id="Preload_WinPE_on_the_server"></span><span id="preload_winpe_on_the_server"></span><span id="PRELOAD_WINPE_ON_THE_SERVER"></span>Preload WinPE on the server


**Build a multi-language version of WinPE**

1.  Install the Windows ADK.

2.  Create a set of working folders for WinPE.

    ``` syntax
    md C:\CustomizedImage

    md C:\CustomizedImage\sources

    md C:\CustomizedImage\mount
    ```

3.  Create a local copy of winpe.wim. For the X64 version, use the filename boot.wim. When you repeat these steps for the x86 version, use the filename boot\_x86.wim.

    ``` syntax
    copy "%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" "C:\CustomizedImage\sources\boot.wim"
    ```

4.  Mount the WinPE image (boot.wim).

    ``` syntax
    dism /mount-wim /wimfile:c:\CustomizedImage\sources\boot.wim /index:1 /mountdir:C:\CustomizedImage\mount
    ```

5.  Add the following components to WinPE:

    -   WinPE-Setup

    -   WinPE-HTA

    -   WinPE-WMI

    -   WinPE-FontSupport packages for JA-JP, KO-KR, ZH-CN, ZH-HK, and ZH-TW

    ``` syntax
    dism /image:C:\CustomizedImage\mount /add-package /packagepath:"%ProgramFiles(x86)%\Windows Kits\8.1\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-Setup.cab"

    dism /image:C:\CustomizedImage\mount /add-package /packagepath:"%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-HTA.cab"

    dism /image:C:\CustomizedImage\mount /add-package /packagepath:"%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-WMI.cab"

    dism /image:C:\CustomizedImage\mount /add-package /packagepath:"%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-FontSupport-JA-JP.cab"

    dism /image:C:\CustomizedImage\mount /add-package /packagepath:"%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-FontSupport-KO-KR.cab"

    dism /image:C:\CustomizedImage\mount /add-package /packagepath:"%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-FontSupport-ZH-CN.cab"

    dism /image:C:\CustomizedImage\mount /add-package /packagepath:"%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-FontSupport-ZH-HK.cab"

    dism /image:C:\CustomizedImage\mount /add-package /packagepath:"%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-FontSupport-ZH-TW.cab"
    ```

6.  For each language, add the following language packs to the restore media:

    -   lp.cab

    -   WinPE-Setup\_\[language code\].cab

    -   WinPE-HTA\_\[language code\].cab

    -   WinPE-WMI\_\[language code\].cab

    Example:

    ``` syntax
    Dism /Add-Package /Image:"C:\CustomizedImage\mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\lp.cab"

    Dism /Add-Package /Image:"C:\CustomizedImage\mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-Setup_fr-fr.cab

    Dism /Add-Package /Image:"C:\CustomizedImage\mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-HTA_fr-fr.cab

    Dism /Add-Package /Image:"C:\CustomizedImage\mount" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-WMI_fr-fr.cab
    ```

7.  Commit and unmount the image.

    ``` syntax
    dism /unmount-wim /mountdir:"C:\CustomizedImage\mount" /commit
    ```

8.  Repeat steps 3 through 7 for the 32-bit client restore file, C:\\%ProgramFiles(x86)%\\Windows Kits\\10\\Assessment and Deployment Kit\\Windows Preinstallation Environment\\x86\\en-us\\winpe.wim.

9.  Delete the working folder for the mounted image.

    ``` syntax
    rd C:\CustomizedImage\mount
    ```

**Copy the restore media to the server**

1.  Copy the WinPE boot files to the working folders.

    ``` syntax
    robocopy "%ProgramFiles(x86)%\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media" "C:\CustomizedImage" /E
    ```

2.  Specify the client restore service or client restore bootable USB key to use the customized WinPE. This can be done by adding the registry key:

    ``` syntax
    reg add "HKLM\Software\Microsoft\Windows Server\backup\OEM" /v OemBmrMedia /t REG_SZ /d C:\CustomizedImage /f
    ```

    You must use absolute path for the location of the customized WinPE. The path cannot contain system environment variable. If you cannot determine the system drive before install, the workaround is to write the registry key in PostIC.cmd when the installation path is determined.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Customize%20Client%20Backup%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



