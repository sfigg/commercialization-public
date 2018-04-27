---
title: Customizations for enterprise desktop
description: Windows 10 Enterprise customizations provide a controlled and specialized experience for the end-users of a Windows 10 device by allowing OEMs and system administrators to lock down the Windows 10 device interaction experience.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dac59fd3-f5d0-4d02-ac89-0caf7fe3c9dd
ms.author: alhopper
ms.date: 04/30/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Customizations for enterprise desktop

Windows 10 Enterprise customizations provide a controlled and specialized experience for the end-users of a Windows 10 device by allowing OEMs and system administrators to lock down the Windows 10 device interaction experience.

There are many reasons for locking down a device, such as protecting the system from malicious users, providing a custom defined user experience, and increasing system reliability.

You can lock down your Windows 10 desktop device by using the lock down features individually or in combination with each other to get the effect you desire for your image. You can, for instance, create a dedicated cashier device that runs a full screen Point of Service (POS) application.

| Topic                                                   | Description                                                                                         |
|:--------------------------------------------------------|:----------------------------------------------------------------------------------------------------|
| [Create a kiosk experience](create-a-kiosk-image.md) | You can create a single use device using enterprise desktop customizations. One example of a single use device is a [kiosk application](create-a-kiosk-image.md), where users interact with a single application that you select, like a catalog of items for sale at the entrance to your store. You can create an immersive experience complete with videos telling the story of your catalog items and how they are used, along with a way for customers to purchase items right at the kiosk.<br/> You can create a single- or multi-app kiosk experience using Windows Configuration Designer.   |
| [Find the AUMID of an installed app](find-the-application-user-model-id-of-an-installed-app.md)    | In order to use assigned access with Mobile Device Management (MDM), you must know the Application User Model ID (AUMID) of Microsoft Store apps installed on a device. Learn how to find the AUMID by either using Windows PowerShell or querying the registry. |
| [Assigned access](assigned-access.md) | An administrator can use assigned access to limit an existing user account to use only one specified installed Windows app. This can be useful to set up single-function devices, such as restaurant menus or displays at trade shows.<br/>When your device restarts, whether from an update or power outage, you can log on the assigned access account manually or you can configure the device to [log on to the assigned access account automatically](https://docs.microsoft.com/en-us/windows-hardware/customize/enterprise/create-a-kiosk-image#assigned-access).    |
| [Custom Logon](custom-logon.md)  | You can use the Custom Logon feature to suppress Windows 10 UI elements that relate to the Welcome screen and shutdown screen. For example, you can [suppress all elements of the Welcome screen UI](complementary-features-to-custom-logon.md) and provide a custom logon UI. You can suppress the ease of access option on the logon screen. You can also suppress the Blocked Shutdown Resolver (BSDR) screen and automatically end applications while the OS waits for applications to close before a shutdown.    |
| [Keyboard Filter](keyboardfilter.md)     | Use Keyboard Filter to suppress undesirable key presses or key combinations. Normally, a customer can use certain Windows key combinations like <strong>Ctrl+Alt+Delete</strong> or <strong>Ctrl+Shift+Tab</strong> to alter the operation of a device by locking the screen or using Task Manager to close a running application.   |
| [Shell Launcher](shell-launcher.md)   | Use Shell Launcher to replace the default Windows 10 shell with a custom shell. You can use almost any application or executable as your custom shell, such as a command window or a custom dedicated application.    |
| [Unbranded Boot](unbranded-boot.md)    | Unbranded Boot can suppress Windows elements that appear when Windows starts or resumes and can suppress the crash screen when Windows encounters an error that it cannot recover from.    |
| [Unified Write Filter (UWF)](unified-write-filter.md)    | Use Unified Write Filter (UWF) on your device to help protect your physical storage media, including most standard writable storage types that are supported by Windows, such as physical hard disks, solid-state drives, internal USB devices, external SATA devices, and so on. You can also use UWF to make read-only media appear to the OS as a writable volume.  |

> [!Tip]
> In addition to the customizations above for OEMs, Windows 10 provides a [Mobile device management (MDM)](https://docs.microsoft.com/en-us/windows/client-management/mdm/) to help IT pros manage company security policies and business applications, while avoiding compromise of the users’ privacy on their personal devices. Under MDM, mobile device OEMs can also create custom configuration service providers (CSPs) to manage their devices. For more information, see [Mobile device management](https://docs.microsoft.com/en-us/windows/client-management/mdm/).

## Related topics

[Channel 9 video: Customizing Your Device Experience with Assigned Access](https://channel9.msdn.com/Events/Build/2016/P508)

**Assigned access reference**: [Assigned access Windows PowerShell reference](assigned-access-windows-powershell-reference.md)

**Keyboard Filter reference**: [Keyboard Filter key names](keyboardfilter-key-names.md)

[Keyboard Filter WMI provider reference](keyboardfilter-wmi-provider-reference.md)

**Shell Launcher reference**: [WESL\_UserSetting](wesl-usersetting.md)

**Unified Write Filter reference**: [Unified Write Filter WMI provider reference](uwf-wmi-provider-reference.md)