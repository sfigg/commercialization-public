---
title: Configure assigned access
description: Configure assigned access
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4456b4e6-5ef6-4daf-8c7b-a17351d34a55
ms.author: alhopper
ms.date: 04/30/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Configure assigned access

An administrator can use assigned access to limit an existing user account to use only one installed Windows app that you choose. This can be useful to set up single-function devices, such as restaurant menus or displays at trade shows.

For more information about assigned access, see [Assigned access](assigned-access.md).

## Prerequisites

You have Windows 10 Pro, Windows 10 Enterprise, or Windows 10 Education installed on your computer.

You have installed the Universal Windows app for the Assigned Access user account, following this procedure:

1. Log in as administrator.
1. Create a user account for assigned access.

   > [!Note]
   > The user account for assigned access must be a local standard user account if you are configuring assigned access using Settings or Powershell. The same restriction does not apply if you are using the [Assigned Access CSP](https://docs.microsoft.com/en-us/windows/client-management/mdm/assignedaccess-csp).

1. Log in as the assigned access user account.
1. Install the Universal Windows app that follows guidance in [Kiosk apps for assigned access: Best practices](https://docs.microsoft.com/en-us/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access).
1. Log out as the assigned access user account.
1. Log in as administrator.

## Configure assigned access using Settings

1. Launch **Settings** from the **Start** menu.
1. Tap or click **Accounts**.
1. Tap or click **Other people**, and then tap or click **Set up assigned access**.
1. On the **Set Up Assigned access** page, perform the following steps:
   * Tap or click **Choose an account**, and then click the account you want to use for assigned access. The selected account now displays in the **Choose which account will have assigned access** area.

   > [!Note]
   > If there is only one active account on the device, a dialog will display indicating you need to add or create a new account. To add or create a new account, click **Other users** to add other users.

   * Tap or click **Choose an app**, and then choose the app that you want to start when the selected user signs in. The selected app now displays in the **Choose which app this account can access** area.
   > [!Note]
   > You must have installed a Microsoft store app with an uap extension windows.aboveLockScreen in order to have apps show up in the list.

1. To start assigned access, log off the assigned access user account then re-log in.

## Configure assigned access using PowerShell

By using a Windows PowerShell cmdlet, you can configure assigned access to limit an existing user account to use only one installed Windows app that you choose. This can be useful to set up single-function devices, such as for a restaurant menu or a display at a trade show.

You can identify the user by one of the following:

* User name of the user account name to use for assigned access.
* User security identifier (SID) for the user to use for assigned access.

You can identify the Windows app by one of the following:

* App name that is the friendly name of the installed Windows app to use for assigned access. Wildcard characters are accepted.
* Application User Model ID (AUMID) for the installed Windows app to use for assigned access. For information on finding the AUMID, see [Find the Application User Model ID of an installed app](find-the-application-user-model-id-of-an-installed-app.md).

### Configure assigned access by user name and AppUserModelID

At a Windows PowerShell prompt, type the following:

```powershell
Set-AssignedAccess -AppUserModelId microsoft.windows.photos_8wekyb3d8bbwe!app -UserName <username>
```

### Configure assigned access by user name and app name

At a Windows PowerShell prompt, type the following, using the app name and user name:

```powershell
Set-AssignedAccess -AppName CustomApp -UserName <username>
```

### Configure assigned access by user SID and AppUserModelID

At a Windows PowerShell prompt, type the following, using the AppUserModelID and user SID:

```powershell
Set-AssignedAccess -AppUserModelId microsoft.windows.photos_8wekyb3d8bbwe!app -UserSID S-1-5-21-523423449-2432423479-234123443-1004
```

### Configure assigned access by app name and user SID

At a Windows PowerShell prompt, type the following, using the desired app name and user SID:

```powershell
Set-AssignedAccess -AppName CustomApp  -UserSID S-1-5-21-523423449-2432423479-234123443-1004
```

## Turn off assigned access

1. Launch **Settings** from the **Start** menu.
1. Tap or click **Accounts**.
1. Tap or click **Other people**, and then tap or click **Set up assigned access**.
1. If assigned access had been previously enabled, **Turn off assigned access and sign out the selected account** will appear on the **Set up assigned access** page. Tap or click that hyperlink to turn off assigned access.

> [!Note]
> If the assigned access user is currently signed in, they will be signed out automatically.