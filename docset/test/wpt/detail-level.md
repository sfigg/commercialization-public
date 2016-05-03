---
title: Detail Level
description: Detail Level
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8a1de1e7-dea5-4ab2-b707-2a1ee109b0f1
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Detail Level


Windows Performance Recorder (WPR) recording profiles control all aspects of a recording. For each WPR profile, you must select a detail level. The available levels are **Light** and **Verbose**. The **Light** detail level is primarily used for timing recordings. The **Verbose** detail level provides the detailed information that you need for analysis. Built-in profiles support both **Verbose** and **Light** detail levels.

The **Verbose** level is selected by default in both the WPR user interface (UI) and in the WPR command line.

When you author custom profiles, we recommend that you define both a light version and a verbose version in the same .wprp file. These files can contain up to four profile definitions: one for each combination of detail level and logging mode.

## Related topics


[WPR Features](wpr-features.md)

[Logging Mode](logging-mode.md)

[3. Profile Definitions](3-profile-definitions.md)

[Change the Detail Level](change-the-detail-level.md)

[Authoring Recording Profiles](authoring-recording-profiles.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Detail%20Level%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





