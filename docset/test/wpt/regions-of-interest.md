---
title: Regions of Interest
description: Regions of Interest
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 46062275-1d15-4361-81c6-be4a2f15938d
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Regions of Interest


Regions of Interest is a new capability in WPA that enables the application of user-friendly labels to portions of the trace. These labels are applied by finding events that define the start and stop of a given region. The regions and their events are contained within a regions XML file. Microsoft provides some regions files for app analysis, and you can also define your own regions files for your scenarios or applications. This capability allows you to quickly and easily identify complex regions and greatly increases the speed and efficiency of performance analysis.

As an example, assume a scenario that contains several loading sequences, each of which is defined by one event, A, followed by another event, B. With Regions of Interest, you can apply a user-friendly "Loading" label to each of these A-B time spans. Now, instead of having to manually identify each of these event sequences, WPA automatically applies the "Loading" label, allowing you to quickly visualize where these events occur.

As another example, a user needs to analyze the performance of a particular Windows Store app. The application lifecycle can be broken down into several phases, such as launch, suspend/resume, and shutdown, each of which could have a corresponding region definition. With these region definitions, any user could easily identify where these lifecycle events occur.

To use Regions of Interest with WPA, you must have the following:

-   An ETW trace (.etl) file that was collected during the scenario of interest

-   A Regions of Interest definition file (.xml)

## Creating a Regions of Interest file


For information on creating a Regions of Interest file, see [Creating a Regions of Interest File](creating-a-regions-of-interest-file.md)

## Supporting regex in a Regions of Interest file


A regions of interest file does support regular expressions (regex). For information on regex and creating new lines in a Regions of Interest file, see [Creating a Regions of Interest File](creating-a-regions-of-interest-file.md)

## Applying a Regions of Interest file to an open trace


You can use a Regions of Interest file to apply additional markup to an open trace in WPA:

-   From the menu, choose **Trace**, **Trace Properties**.

-   In the **Trace Properties** pane that appears, choose **Add**.

-   Navigate to and select the desired Regions of Interest manifest file (.xml), and choose **Open**.

-   The file is now added to the **Regions of Interest Definitions** listbox. Switch back to the **Analysis** pane by selecting the **Analysis** tab near the top of the window.

-   In the **Graph Explorer**, expand the **System Activity** node.

-   If your trace contains any of the regions that were defined by the manifest file, the **Regions of Interest** graph appears in **Graph Explorer** as the last graph under **System Activity** (immediately before the **Computation** category). Drag the graph onto the **Analysis** pane.

    If the trace does not contain any regions of interest, you will not see a **Regions of Interest** graph.

**Note**  
The Attributed CPU Usage table relies on regions of interest definitions to attribute CPU usage to different activities. When you use multiple regions files, different regions of interest can overlap and conflict. When these conflicts occur, WPA is unable to accurately attribute a single activity to a given thread in a given time range.

To avoid these potential conflicts, use only one region definition file at a time.

 

## Related topics


[Creating a Regions of Interest File](creating-a-regions-of-interest-file.md)

[WPA Features](wpa-features.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Regions%20of%20Interest%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





