---
title: Create a Kiosk Experience
description: A single-use device is easy to set up in Windows 10 for desktop editions (Pro, Enterprise, and Education).
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8F0E5E87-C53C-40CE-B695-6229FD7793C8
ms.author: alhopper
ms.date: 10/17/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Create a Kiosk Experience

A single-use device is easy to set up in Windows 10 for desktop editions (Pro, Enterprise, and Education). There are a few different methods you can choose from to set up single-function kiosk devices, such as restaurant menus or displays at trade shows:

1. Use the [Windows Configuration Designer method](#windows-cd) to configure a kiosk device running either a single Universal Windows app (Windows 10 Enterprise, Education, and Pro) or a single Classic Windows application (Windows 10 Enterprise or Education only).
1. You can also use the **Provision kiosk devices** wizard in Windows Configuration Designer to [configure a kiosk that runs multiple applications](#multi-app-kiosk).
1. For a kiosk device to run a single Universal Windows Platform (UWP) app, use the [Assigned access method](#assigned-access).
1. For a kiosk device (Windows 10 Enterprise or Education) to run a single Classic Windows application, use the [Shell Launcher method](#shell-launcher) to set a custom user interface as the shell.

> [!Note]
> A Universal Windows app is built on the Universal Windows Platform (UWP), which was first introduced in Windows 8 as the Windows Runtime. A Classic Windows application uses the Classic Windows Platform (CWP) (e.g., COM, Win32, WPF, WinForms, etc.) and is typically launched using an .EXE or .DLL file.

In addition to configuring assigned access or shell launcher, you can also [configure optional features to further define the Kiosk experience](#lockdown-settings). Some of the optional features include power button availability, welcome screen elements, and the ability to protect your internal physical media.

## <a name="windows-cd"></a>Windows Configuration Designer method for a single-app kiosk experience

When you use the Provision Kiosk Devices wizard in Windows Configuration Designer, you can configure the kiosk to run either a single UWP app or a Classic Windows app.

> [!Important]
> When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

1. [Install Windows Configuration Designer](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-install-icd).
1. Open Windows Configuration Designer and select **Provision kiosk devices**. Name your project and click **Next**.
1. Create a provisioning package. See [Instructions for the kiosk wizard](https://docs.microsoft.com/en-us/windows/configuration/set-up-a-kiosk-for-windows-10-for-desktop-editions#wizard) for guidance on moving through the steps of the wizard: **Setup device**, **Set up network**, **Account Management**, **Add applications**, **Add certificates**, **Configure kiosk account and app**, and **Configure kiosk common settings**.
1. Build the provisioning package. Click **Export** and select **Provisioning Package**. Enter the requested information and click **Finish** to close the wizard and return to the Customizations page. See [Build the provisioning package](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-create-package#build-package) for more details if needed.
* [Apply the provisioning package](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-apply-package) to the device.

## <a name="multi-app-kiosk"></a>Windows Configuration Designer method for a a multi-app kiosk experience

A kiosk device typically runs a single app, and users are prevented from accessing any features or functions on the device outside of the kiosk app. However, you can use the [AssignedAccess configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/assignedaccess-csp) to create kiosks that run more than one app. You can configure multi-app kiosks using a provisioning package. You can include both UWP and Classic Windows applications.

The benefit of a multi-app kiosk, or fixed-purpose device, is to provide an easy-to-understand experience for individuals by putting in front of them only the things they need to use, and removing from their view the things they don’t need to access.

To set up a multi-app kiosk experience:

1. Determine which apps you will expose on the kiosk device.
   * For UWP apps, you need to provide the App User Model ID (AUMID). [Learn how to get the AUMID](https://go.microsoft.com/fwlink/p/?LinkId=614867).
   * For desktop apps, you need to specify the full path of the executable, which can contain one or more system environment variables in the form of %variableName% (i.e. %systemroot%, %windir%).
1. Create a new configuration XML file. The XML file will configure the apps allowed to run on the device (based on either the AUMID or the path), the visibility of the taskbar, the layout of the start menu, and the user accounts to associate with the kiosk device. See [Multi-app kiosk XML reference](https://docs.microsoft.com/en-us/windows/configuration/multi-app-kiosk-xml) for a full example of your configuration XML file.
1. Add the XML file to a provisioning package using Windows Configuration Designer. This will be done in the **Advanced provisioning** section, under **Runtime settings** > **AssignedAccess** > **MultiAppAssignedAccessSettings**.
1. Build the provisioning package, and copy it to the root directory of a USB drive.
1. [Apply the provisioning package](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-apply-package) to the device.

> [!Tip]
> For detailed instructions, including definitions for each of the configuration XML settings, see [Create a Windows 10 kiosk that runs multiple apps](https://docs.microsoft.com/en-us/windows/configuration/lock-down-windows-10-to-specific-apps).

## <a name="assigned-access"></a>Assigned access method for UWP applications

If an account is configured for assigned access, a single UWP app of your choosing runs above the lock screen for the selected user account. Users of that account cannot access any other functionality on the device.

### Prerequisites for assigned access

* Windows 10 Enterprise, Education, or Pro.
* Windows 10, version 1709, or a newer version of Windows.
* A domain or local user account
* The user account must have logged on at least once before you set up assigned access, or no apps will be available for that account. To set up assigned access using MDM, you need the user account (domain\\account).
* A UWP app that is installed for that account and is an above lock screen app. For details on building an above lock screen app, see [Kiosk apps for assigned access: Best practices](https://docs.microsoft.com/en-us/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access). The app can be your own company app that you have made available in your own app Store.
* To set up assigned access using MDM or PowerShell, you also need the Application User Model ID (AUMID) for the app. [Find the Application User Model ID of an installed app](find-the-application-user-model-id-of-an-installed-app.md).

See [Assigned access](https://docs.microsoft.com/en-us/windows-hardware/customize/enterprise/assigned-access) for full documentation of the Assigned access feature.

### Set up assigned access using Windows PowerShell

You can use any of the following PowerShell cmdlets to set up assigned access on multiple devices. To open PowerShell on Windows 10, search for PowerShell and find Windows PowerShell Desktop app in the results. Run PowerShell as administrator. See [Assigned access Windows Powershell reference](https://docs.microsoft.com/en-us/powershell/module/assignedaccess/?view=win10-ps) for instructions on setting, getting, and clearing user accounts for assigned access.

The Universal Windows app must be able to handle multiple views and cannot launch other apps or dialogs.

### Set up assigned access using MDM

Assigned Access has one setting, `KioskModeApp`. In the KioskModeApp setting, you enter the user account name and AUMID for the app to run in kiosk mode. See the [technical reference for the assigned access configuration service provider](https://docs.microsoft.com/en-us/windows/client-management/mdm/assignedaccess-csp) (AssignedAccess CSP) for details.

### Set up assigned access using PC settings

1. Log in as administrator.
1. Go to **Start** &gt; **Settings** &gt; **Accounts** &gt; **Other users**.
1. Choose **Set up assigned access**.
1. Choose an app. Only apps that can run above the lock screen will be displayed.
1. Close **Settings**--your choices are saved automatically, and will be applied the next time that user account logs on.

### <a href="" id="auto-logon"></a>Setup automatic logon

When your kiosk device restarts, whether from an update or power outage, you can log on the assigned access account manually or you can configure the device to log on to the assigned access account automatically.

Edit the registry to have an account automatically logged on.

1. Open Registry Editor (regedit.exe). If you are not familiar with Registry Editor, [learn how to modify the Windows registry](http://go.microsoft.com/fwlink/p/?LinkId=615002).
1. Go to `to HKEY\_LOCAL\_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\\Winlogon`
1. Set the values for the following keys.
   * AutoAdminLogon: set value as **1**.
   * DefaultUserName: set value as the account that you want logged in.
   * DefaultPassword: set value as the password for the account.

   > [!Note]
   > If DefaultUserName and DefaultPassword aren't there, add them as New &gt; String Value.

   * DefaultDomainName: set value for domain, only for domain accounts. For local accounts, do not add this key.

1. Close Registry Editor. The next time the computer restarts, the account will be logged on automatically.

### <a href="" id="aa-signout"></a>Sign out of assigned access

To sign out of an assigned access account, press **Ctrl + Alt + Del**, and then sign in using another account. When you press **Ctrl + Alt + Del** to sign out of assigned access, the kiosk app will exit automatically. If you sign in again as the assigned access account or wait for the login screen timeout, the kiosk app will be re-launched.

If you press **Ctrl + Alt + Del** and do not sign in to another account, after a set time, assigned access will resume. The default time is 30 seconds, but you can change that in the following registry key:

`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI`

To change the default time for assigned access to resume, add `IdleTimeOut` (DWORD) and enter the value data as milliseconds in hexadecimal.

## <a name="shell-launcher"></a>Shell Launcher method for Classic Windows applications

Using Shell Launcher, you can configure a kiosk device that runs a single Classic Windows application as the user interface. The application that you specify replaces the default shell (explorer.exe) that usually runs when a user logs on.

### Prerequisites for Shell Launcher

* Windows 10 Enterprise or Education
* A domain or local user account
* A Classic Windows application that is installed for that account. The app can be your own company application or a common app like Internet Explorer.

See [Shell Launcher](https://docs.microsoft.com/en-us/windows-hardware/customize/enterprise/shell-launcher) for full documentation of the Shell Launcher feature.

### Configure Shell Launcher

To set a Classic Windows application as the shell, you first turn on the [Shell Launcher](shell-launcher.md) feature, and then you can set your custom shell as the default using Windows PowerShell.

### Turn on Shell Launcher in Windows features

1. Go to **Control Panel** &gt; **Programs and Features** &gt; Turn **Windows features on or off**.
1. Expand **Device Lockdown**.
1. Select **Shell Launcher** and **OK**.

Alternatively, you can turn on Shell Launcher using the Deployment Image Servicing and Management (DISM.exe) tool.

### Turn on Shell Launcher using DISM

1. Open an elevated command prompt.
1. Enter the following command.

   ```cmd
   Dism /online /Enable-Feature /FeatureName:Client-EmbeddedShellLauncher
   ```

To learn more, see [Set your custom shell](shell-launcher.md#set-your-custom-shell)

## <a href="" id="lockdown-settings"></a>Other settings to lock down

For a more secure kiosk experience, we recommend that you make the following configuration changes to the device:

* Put device in **Tablet mode**. If you want users to be able to use the touch (on screen) keyboard, go to **Settings** &gt; **System** &gt; **Tablet mode** and choose **On.**
* Hide **Ease of access** feature on the logon screen. Go to **Control Panel** &gt; **Ease of Access** &gt; **Ease of Access Center**, and turn off all accessibility tools.
* Disable the hardware power button. Go to **Power Options** &gt; **Choose what the power button does**, change the setting to **Do nothing**, and then **Save changes**.
* Disable the camera.Go to **Settings** &gt; **Privacy** &gt; **Camera**, and turn off **Let apps use my camera**.
* Turn off app notifications on the lock screen. Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\System\\Logon\\Turn off app notifications on the lock screen**.
* Disable removable media. Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\System\\Device Installation\\Device Installation Restrictions\\Prevent installation of devices not described by other policy settings**.
  > [!Note]
  > To prevent this policy from affecting a member of the Administrators group, in **Device Installation Restrictions**, enable **Allow administrators to override Device Installation Restriction policies**.

## Related topics

[Provisioning packages for Windows 10](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-packages)

[Create a Windows 10 Kiosk that runs multiple apps](https://docs.microsoft.com/en-us/windows/configuration/lock-down-windows-10-to-specific-apps)

[Troubleshoot multi-app kiosk](https://docs.microsoft.com/en-us/windows/configuration/multi-app-kiosk-troubleshoot)

[Shell Launcher](https://docs.microsoft.com/en-us/windows-hardware/customize/enterprise/shell-launcher)

[Assigned access](https://docs.microsoft.com/en-us/windows-hardware/customize/enterprise/assigned-access)