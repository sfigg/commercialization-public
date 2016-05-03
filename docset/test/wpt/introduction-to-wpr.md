---
title: Introduction to WPR
description: Introduction to WPR
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f2d73e54-da70-42d6-80c6-6ff22983ea9f
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Introduction to WPR


Windows Performance Recorder (WPR) is a tool that extends Event Tracing for Windows (ETW) and provides detailed recordings of system and application behavior and resource usage. You can use WPR together with Windows Performance Analyzer (WPA) to investigate particular areas of performance and to gain an overall understanding of resource consumption. WPR and WPA enable development and IT professionals to proactively identify and resolve performance issues. WPR requires Windows 7 or later version operating system.

## WPR User Interface


The WPR user interface (UI) makes it simple to generate a recording by using built-in recording profiles to analyze CPU usage, power issues, poor system or application performance, or other performance issues.

## Authoring Custom Recording Profiles


You can author custom profiles in XML and add them to WPR. You can use custom profiles alone or together with built-in profiles or to make specialized recordings that are designed for any usage scenario.

## Logging to File or Memory


WPR can log events to either a file or to circular buffers in memory. We recommend that you log to file for finite events that can be predicted, such as application start-up or power usage when the computer emerges from a sleep state. File logging is the only logging mode that is available to measure events through on/off transitions.

We recommend that you log to memory for unpredictable events. You can run these recordings for long periods of time without consuming finite memory resources.

## Detail Level


You can select the detail level that fits the scenario: either light or verbose. Light recordings carry less overhead and interfere less with the system (they are sometimes called "timing" recordings). Verbose recordings are more useful for thorough analysis.

## Related topics


[Windows Performance Recorder](windows-performance-recorder.md)

[WPR Quick Start](wpr-quick-start.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Introduction%20to%20WPR%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





