---
title: Authoring Recording Profiles
description: Authoring Recording Profiles
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1eea16bd-f96d-4d17-a857-f93c0d0717b7
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Authoring Recording Profiles


You can author Windows Performance Recorder (WPR) recording profiles in an XML file that has a .wprp extension. Recording profiles contain all the necessary information to enable performance recording for a specific scenario. This data includes information about Event Tracing for Windows (ETW) sessions, providers, and keywords. Each .wprp file contains at least one profile definition, which consolidates a specific set of ETW sessions and providers. A profile definition also includes the session and provider attributes that start and control performance recording.

WPR profiles support the following ETW features:

-   Sequential file and circular memory logging modes.

-   User-specified number of buffers and buffer sizes for each session.

-   ETW system logger sessions together with the NT Kernel Logger. This merger includes the ability to specify keywords, stacks, and memory pool tags.

-   Event sessions that specify a provider name or GUID, keywords, stack, detail level, and non-paged memory.

-   Capturing state providers that capture state during start or save operations only.

The .wprp file must contain specific definitions that are listed in a specific order. The following topics describe how to author the definitions in that order.

## Authoring .wprp files in Visual Studio


You can use Visual Studio to author a recording profile by using the WPR schema file, WPRControlProfiles.xsd, that is available in the WPT install folder:

1.  Open your .wprp file in Visual Studio.

2.  In the main menu, choose **XML**, and then choose **Schemas…**

3.  In the **XML Schemas** dialog that appears, choose **Add…**

4.  Choose the WPRControlProfiles.xsd schema. By default, this file is in the WPT install directory:

    -   `C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit`

Once you have selected the schema, you can use context-sensitive IntelliSense to author your .wprp file.

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[1. Collector Definitions](1-collector-definitions.md)</p></td>
<td><p>How to define collectors for a profile.</p></td>
</tr>
<tr class="even">
<td><p>[2. System and Event Provider Definitions](2-system-and-event-provider-definitions.md)</p></td>
<td><p>How to define providers for a profile.</p></td>
</tr>
<tr class="odd">
<td><p>[3. Profile Definitions](3-profile-definitions.md)</p></td>
<td><p>How to define a profile.</p></td>
</tr>
<tr class="even">
<td><p>[Strict Providers](strict-providers.md)</p></td>
<td><p>How to use the <strong>Strict</strong> attribute.</p></td>
</tr>
<tr class="odd">
<td><p>[Inheritance](inheritance.md)</p></td>
<td><p>Describes inheritance in authoring recording profiles.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Recording Profiles](recording-profiles.md)

[Author a Custom Recording Profile](author-a-custom-recording-profile.md)

[Add or Remove a Custom Recording Profile](add-or-remove-a-custom-recording-profile.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Authoring%20Recording%20Profiles%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





