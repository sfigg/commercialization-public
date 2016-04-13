---
Description: Updates and resetting the device
MS-HAID: 'p\_phUpdate.updates\_and\_resetting\_the\_phone'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Updates and resetting the device
---

# Updates and resetting the device


OEMs must consider how updates are affected when the user resets the device. To understand the fundamentals of how resetting the device alters the operating system, carefully review [Resetting the device](../../manufacture/mobile/resetting-a-phone-during-manufacturing.md).

## <span id="OS_and_BSP_updates"></span><span id="os_and_bsp_updates"></span><span id="OS_AND_BSP_UPDATES"></span>OS and BSP updates


Microsoft OS and OEM Board Support Package (BSP) updates—and any associated registry changes—persist after the device is reset. For the user, this means that updates do not need to be downloaded when the device is reset. For the OEM, this means that newer versions of the OS and BSP updates need to be designed to allow compatibility with older apps, whose updates reverted when the device is reset.

## <span id="Preloaded_apps"></span><span id="preloaded_apps"></span><span id="PRELOADED_APPS"></span>Preloaded apps


When the device is reset, preloaded apps install from the current version of the XAP that is stored on the phone. The current version is either the original XAP that shipped on the device or the most recent version that was received in an OEM over-the-air (OTA) update. The user may still need to download updates to the apps, if later versions have been published to the Store but have not been delivered as part of an OTA update.

There are additional important considerations for updating preloaded system setting apps. For more info, see [System settings apps and updates](system-settings-apps-and-updates.md).

## <span id="Placeholder_apps"></span><span id="placeholder_apps"></span><span id="PLACEHOLDER_APPS"></span>Placeholder apps


Placeholder apps are reinstalled from the current app package on the device. The current version is either the original package that shipped on the device or the most recent version that was received as part of an OTA update.

## <span id="User_apps_and_data"></span><span id="user_apps_and_data"></span><span id="USER_APPS_AND_DATA"></span>User apps and data


Any user-installed Store apps and associated data are removed when the device is reset. The user can use the backup and restore feature to restore these apps. For more info, see [Back up my stuff](http://go.microsoft.com/fwlink/p/?LinkId=331631).

## <span id="related_topics"></span>Related topics


[Update](update.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phUpdate\p_phUpdate%5D:%20Updates%20and%20resetting%20the%20device%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




