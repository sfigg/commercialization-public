---
title: Add or Remove a Custom Recording Profile
description: Add or Remove a Custom Recording Profile
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0fc967f2-9acb-42ac-b4dc-463c6971fd13
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Add or Remove a Custom Recording Profile


This procedure describes how to add a custom recording profile in the Windows Performance Recorder (WPR) user interface (UI). For information about how to start a recording from the command line, see [WPR Command-Line Options](wpr-command-line-options.md).

**To add a recording profile**

1.  On the WPR screen, if the options are hidden, click **More options**.

2.  Click **Add Profiles**.

3.  Navigate to the location that contains the profile files, select the .wprp file, and then click **Open**. WPR will validate the schema of the .wprp file before it is added to the profile.

4.  Repeat steps 2 and 3 to add additional profiles. You can use up to 64 profiles for a single recording.

The profiles that you added will display under **Custom measurements**.

**To remove a recording profile**

1.  On the WPR screen, if the options are hidden, click **More options**.

2.  Right-click the custom profile that you want to remove and then click **Remove Profile**.

The **Remove Profile** button is visible only if custom profiles are present. You can only remove custom profiles: you cannot remove built-in profiles.

## Related topics


[WPR Common Scenarios](windows-performance-recorder-common-scenarios.md)

[Authoring Recording Profiles](authoring-recording-profiles.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Add%20or%20Remove%20a%20Custom%20Recording%20Profile%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





