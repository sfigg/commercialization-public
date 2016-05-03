---
title: What's New in the Windows Performance Toolkit
description: What's New in the Windows Performance Toolkit
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3e27707c-fcba-4052-8cd9-bd04760b7439
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# What's New in the Windows Performance Toolkit


Windows Performance Analyzer (WPA) visualizes traces from Windows Performance Recorder and Windows Assessment Console as graphs and tables to allow you to analyze system and application performance. WPA offers the following new features:

-   Analysis Assistant pane that displays helpful content to help you determine how to best use a given graph, preset, or analysis tab. Rich text support for the Analysis Assistant that lets you format your text to make it easier to read and parse, as well as add links to reference materials, videos, or more detailed help pages on the web.

-   [List of WPA Graphs](list-of-wpa-graphs.md) for your reference

-   New version of the [File menu](introduction-to-the-wpa-user-interface.md) (called Rich Menu) with the option to switch back to the Classic Menu

-   Point in time [rectangle viewer](how-to-use-the-rectangle-viewer.md) that allows you to visualize what happened on the screen during your trace

-   [Regions of Interest](regions-of-interest.md) that allow you to highlight important time ranges in a trace

-   [Stack tags](stack-tags.md) for creating labels that help you better identify which parts of the call stack(s) are affected

-   Support for multiple traces in a single session

-   Support for recovering a profile

Windows Performance Recorder (WPR) is a performance tool that you can use to record system events that you can then analyze by using WPA. WPR offers the following new feature:

-   After recording a trace, you can now immediately open it in WPA by choosing the **Open in WPA** button.

-   Direct handling of CLR symbols, so no flags are necessary when configuring and using [NGEN support](using-clr-40-ngen-pdb-support.md)

The Kernel Trace Control API Reference covers the Kernel Trace Control API available in previous versions of WPA. This API is an extension of the ETA Event Tracing API and is supported for backward compatibility with existing scripts and profiles. However, it is obsolete, and new profiles should be created using the current version. No public API is available for the current version of WPA. This API enables capturing kernel stack traces, merging multiple trace files for analysis, and including system information in the merged files. From time to time, functions are added or updated. This reference document adds the following new functions:

-   [StartHeapTrace](startheaptrace.md)

-   [UpdateHeapTrace](updateheaptrace.md)

## Related topics


[Windows Performance Toolkit Technical Reference](windows-performance-toolkit-technical-reference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20What's%20New%20in%20the%20Windows%20Performance%20Toolkit%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





