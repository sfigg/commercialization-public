---
title: View Profiles
description: View Profiles
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5103d6a8-8136-4667-9316-e824ecb44aaf
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# View Profiles


A view profile stores a view layout that you can use to quickly start your analysis. After you customize the layout, you can save it as the startup profile or create a profile that you can apply at any time.

View profiles are stored in .wpaprofile files and saved, by default, to the WPA Files folder under the user's Documents folder.

For information about changing the view layout, see [Change the View Layout](change-the-view-layout.md).

## Creating a Profile


To create a profile, first configure your view layout as you want it to appear, and then do the following:

1.  In the menu, choose **Profiles**, **Export…**.

2.  Navigate to the desired location.

3.  Name your profile, and choose **Save**.

## Applying a Profile


To apply a profile to one or more open traces, do the following:

1.  In the menu, choose **Profiles**, **Apply…**.

2.  In the pane that appears, choose **Browse…** to open a custom profile, or choose **Browse Catalog…** to view a list of profiles that are shipped with WPA.

3.  Navigate to and select the desired profile, and choose **Open**.

4.  If you have multiple traces open, or if the profile is configured for multiple traces, WPA asks you to associate traces with the profile. Select the desired traces, and choose **Apply**.

**Note**  
WPA also maintains a list of most recently used profiles in the menu under **Profiles**, **Apply Recently Used Profile**.

 

## Profile Catalog


WPA includes a set of profiles that help jumpstart different types of analysis. These profiles are contained in the **Profile Catalog** that can be found when you apply a profile to an open trace:

-   AppLaunch

-   FastStartup

-   FullBoot (Boot)

-   FullBoot (Shutdown)

-   Hibernate

-   HTMLApplicationAnalysis

-   PresetsForComparativeAnalysis

-   Standby

-   XAMLApplicationAnalysis

## Changing the Startup Profile


You can also use your current view as the default profile that is used when you first open a trace:

1.  In the menu, choose **Profiles**, **Save Startup Profile**.

2.  Choose **OK** in the confirmation box that appears.

**Note**  
You cannot change the startup profile when multiple traces are open.

 

## Related topics


[WPA Features](wpa-features.md)

[Comparative Analysis Views](comparative-analysis-views.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20View%20Profiles%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





