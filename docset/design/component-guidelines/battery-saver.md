---
title: Battery Saver
description: The battery saver feature helps conserve power when a system is running on battery. When battery saver is on, some Windows features are disabled or behave differently.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: FA82ED38-9645-45F0-98A0-B59BEE81B2A2
---

# Battery Saver


The battery saver feature helps conserve power when a system is running on battery. When battery saver is on, some Windows features are disabled or behave differently.

Users can choose to enable battery saver when the battery level reaches a certain percentage.

-   On Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), battery saver will turn on automatically when your battery falls below 20%.

-   On Windows 10 MobileMobile, users must enable battery saver to turn on when the battery falls below 20%.

When battery saver is on, several Windows features behave differently:

-   Windows Store Mail, People, and Calendar apps do not sync.

-   Apps running in the background are blocked. Users can allow specific individual apps to run while in battery saver mode. Certain categories of apps continue to run. For example, VOIP apps are not blocked.

-   Windows Push Notification Services (WNS) is affected when battery saver is on.

    -   WNS is blocked by default on Windows 10 Mobile. Users can chose individual apps to always be allowed to run while battery saver is on. There is no setting to allow WNS across all apps. This is the same behavior as Windows Phone 8.1.

    -   WNS is allowed for all apps by default on Windows 10 for desktop editions. Users can change this to the Windows 10 Mobile model, where only always allowed apps run.

-   Non-critical Windows update downloads are blocked. However, Windows update scans still occur.

-   Display brightness is reduced by 30% for both Windows 10 for desktop editions and Windows 10 Mobile. Users can enable or disable this setting for Windows 10 for desktop editions only.

-   OEMs can enable configure the display brightness value on Windows 10 for desktop editions. However, for Windows 10 Mobile, configuration is disabled. This value is controlled in the ESBRIGHTNESS SUB\_ENERGYSAVER Powercfg setting.

-   The majority of telemetry is blocked.

    -   Only critical telemetry is uploaded

    -   Census data, and similar telemetry is critical and will be uploaded

<!-- -->

-   Windows task scheduler tasks trigger only if the task is:

    -   Not set to **Start the task only if the computer is idle...** (task doesn't use [**IdleSettings**](https://msdn.microsoft.com/library/windows/desktop/aa381852))

    -   Not set to run during automatic maintenance (task doesn't use [**MaintenanceSettings**](https://msdn.microsoft.com/library/windows/desktop/hh974642))

    -   Is set to **Run only when user is logged on** (task [**LogonType**](https://msdn.microsoft.com/library/windows/desktop/aa380746) is **TASK\_LOGON\_INTERACTIVE\_TOKEN** or **TASK\_LOGON\_GROUP**)

    All other triggers are delayed until the system exits battery saver mode.

For more information about accessing battery saver status in your application, see [SYSTEM\_POWER\_STATUS](https://msdn.microsoft.com/library/windows/desktop/aa373232)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Battery%20Saver%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




