---
title: Strict Providers
description: Strict Providers
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b75d08cc-eaa5-42b8-9bac-d9b6aa35f31a
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Strict Providers


Windows Performance Recorder (WPR) recording profiles are stored in an XML file that has a .wprp extension. *Profile definitions* bring together the collector and provider definitions in the .wprp file. The **Strict** attribute in provider definitions controls the behavior of a recording profile when the provider does not start at the same time that the recording starts.

Providers might not start for many reasons, such as a bug in the provider implementation or an incorrectly configured system. When a provider does not start and its **Strict** attribute is set to "true", the start operation fails and rolls back. All collectors and providers that started successfully are canceled. The error log provides error information about the provider that did not start. If the **Strict** attribute is set to "false", as many collectors and providers start as is possible, and the start operation succeeds. Information about providers that did not start appears as warnings instead of errors.

## Related topics


[Authoring Recording Profiles](authoring-recording-profiles.md)

[2. System and Event Provider Definitions](2-system-and-event-provider-definitions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Strict%20Providers%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





