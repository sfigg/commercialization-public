---
title: Sharing and collaboration
description: Sharing and collaboration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: A75836F3-237B-4283-9948-08AB22966A7D
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Sharing and collaboration


You can package a trace in a zip file along with the corresponding session, annotations, and (optionally) loaded symbols with WPA. This allows you to share this package with other developers and replaces [WPA sessions](save-state-at-the-end-of-a-wpa-session.md). A WPA package ("trace package) captures the entire analysis session:

-   Trace
-   Tabs
-   Graph configurations
-   Filters
-   Annotations
-   Symbols
    **Note**  WPA only packages symbols if they are loaded; if they are, WPA embeds them in the package. WPA does not preserve stack expansions.

     

## Benefits of sharing a trace package


Aside from being able to share a trace package with other developers, trace packages offer several other benefits:

-   Less space since trace packages are zipped
-   Support for and ability to open zipped-up trace files in WPA
-   Ability to open a trace package multiple times without needing to extract the same trace multiple times
-   Plugin verification and warnings if plugins aren't present when WPA opens your trace package.

**Note**  This process zips up your trace in the package. If your trace has an issue and contains sensitive material and you send it to us for further investigation, make sure to protect any sensitive material as you would any trace. Due to zipping, the package will likely have a file size smaller compared to a trace; this does not mean the zipping process removed any sensitive information.

 

## Sharing a trace package


To create a profile, first configure your view layout as you want it to appear, and then do the following:

1.  In the menu, choose **File** then **Export Package**. A Save As dialog opens.

2.  Navigate to the desired location.

3.  Name your export package, make sure the Save as type reads **WPA Package (\*.wpapk)**and click **Save**. A Wpapk progress bar displays, indicating packaging process. You may close the window, as the process will continue running in the background until complete.

## Related topics


[WPA Common Scenarios](windows-performance-analyzer-common-scenarios.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\p_wpt%5D:%20Sharing%20and%20collaboration%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





