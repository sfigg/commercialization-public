---
title: Simple app and tile updates
description: Modern standby enables the system to stay fresh and up-to-date by maintaining constant connectivity and by carefully controlling the execution of app background tasks.
MS-HAID:
- 'cstandby.lock\_screen\_apps\_and\_push\_notifications'
- 'p\_weg\_hardware.simple\_app\_and\_tile\_updates'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: EC75F98B-845F-420E-9D38-759CACA5C9BF
---

# Simple app and tile updates


Modern standby enables the system to stay fresh and up-to-date by maintaining constant connectivity and by carefully controlling the execution of app background tasks.

An app can create a background task by using a specific set of WinRT APIs to enable the task to run on a regular schedule or in response to an incoming network event. WinRT is the Windows Runtime API surface and is distinct from Windows RT, which is the version of Windows that runs on the ARM processor architecture. The WinRT APIs for background tasks allow the app's runtime to be carefully managed by Windows to prevent excessive battery drain.

One common use of background tasks is to update the content of tiles on the Start screen. The content that an app displays in its tile can change in response to notifications. With modern standby, the user will see the updated tile as soon as the system turns on—that's because the app's background task ran during modern standby.

Apps can also use background tasks to check for new app-specific content during modern standby using a periodic timer. Timer expirations for an app that uses a periodic timer during modern standby are automatically coalesced with timer expirations for other apps. Timer expirations are limited to be no more frequent than once every 15 minutes, and when an app's background task runs, it has a very limited amount of CPU time available to do the update.

For more information about background tasks, see [Launching, resuming, and background tasks](https://msdn.microsoft.com/windows/uwp/launch-resume/index).

**Note**  During modern standby, desktop applications cannot run and cannot access the network. System services have limited runtime, but no network access.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Simple%20app%20and%20tile%20updates%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




