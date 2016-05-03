---
title: Author a Custom Recording Profile
description: Author a Custom Recording Profile
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4f33a662-0883-48b2-aa50-eb2dffc244d9
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Author a Custom Recording Profile


This procedure describes how to author a custom recording profile in Windows Performance Recorder (WPR). You can author custom profiles in an XML file that has a .wprp extension. are available See [Recording Profile XML Reference](recording-profile-xml-reference.md) for the complete schema and reference information. are available See [Authoring Recording Profiles](authoring-recording-profiles.md) for more detailed information about authoring recording profiles.

**To author a custom recording profile**

1.  In an XML editor, create a new XML file.

2.  Enter collector definitions. For more information, see [1. Collector Definitions](1-collector-definitions.md).

3.  Enter system and event provider definitions. For more information, see [2. System and Event Provider Definitions](2-system-and-event-provider-definitions.md).

4.  Enter profile definitions. For more information, see [3. Profile Definitions](3-profile-definitions.md).

    **Note**  
    If you want the custom profile to stop and roll back if some providers do not start, set the **Strict** attribute to "true". For more information about this option, see [Strict Providers](strict-providers.md).

     

5.  Save the file with a .wprp extension.

You can define derived collectors, providers, and profiles that inherit from a base version that you define earlier in the same file or in another file. For more information about this option, see [Inheritance](inheritance.md).

## Related topics


[WPR Common Scenarios](windows-performance-recorder-common-scenarios.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Author%20a%20Custom%20Recording%20Profile%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





