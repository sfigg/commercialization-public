---
title: 1. Collector Definitions
description: 1.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 40712815-d517-49aa-b208-76a2115ed9fd
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# 1. Collector Definitions


Windows Performance Recorder (WPR) currently supports three kinds of collectors: the system collector, event collectors, and a heap event collector. The system collector definition specifies buffer sizes and other attributes for Event Tracing for Windows (ETW) system logger sessions that work together with the NT Kernel Logger. Event and heap collector definitions specify buffer sizes and other attributes for ETW user sessions.

Collector definition order is restricted by the WPR schema. In the .wprp file, system collector definitions must precede event collector definitions. These definitions must both precede the heap collector definition (if a heap collector definition is present). The WPR schema is defined in [WPRControlProfiles Schema](wprcontrolprofiles-schema.md).

## Collector Attributes


Collectors have the following mandatory attributes:

-   **Id**: Unique string identifier that refers to the collector definition in the .wprp file.

-   **Name**: Name of the collector; for example, "WPR Collector". The system collector name must be "NT Kernel Logger".

Collector definitions must contain the following buffer size definitions:

-   **BufferSize**: Specifies the size of a single buffer, in kilobytes (KB).

-   **Buffers**: Specifies the number of buffers or, if the **PercentageOfTotalMemory** attribute is set to "true", the percentage of total memory to use for buffering.

For more information about buffers, see [Logging Mode](logging-mode.md).

## Collector Definition Examples


The following code example shows a system collector definition and an event collector definition.

``` syntax
<SystemCollector
  Id="WPRSystemCollector"
  Name="NT Kernel Logger"
  FileName="WPRKernel.etl">
  <BufferSize
    Value="512"/>
  <Buffers
    Value="3"
    PercentageOfTotalMemory="true"/>
</SystemCollector>

<EventCollector
  Id="WPREventCollector"
  Name="WPR Event Collector"
  FileName="somefilename.etl">
  <BufferSize
    Value="128"/> 
  <Buffers
    Value="64"/>
</EventCollector>

<HeapEventCollector
  Id="Base_Heap_Collector"
  Name="Base Heap Collector"
  FileName="heap.etl">
</HeapEventCollector>
```

## Inheritance Examples


Windows Performance Recorder supports inheritance of its objects by using the `Base=""` attribute in the WPR profile XML schema. This allows additions or specializations of objects to be built progressively while adding re-use of common definitions.

Unintended complexity and side effects can occur in certain scenarios; this section describes examples and recommended best practices.

### Example 1

![inheritance example](images/wpr-collector-definitions-example1.jpg)

If a profile **Profile A** wants to use the event collector **Collector A** with some modifications, it can define a collector **Collector A2** that derives from **Collector A** (Base="Collector A"), and then references that collector **Collector A2**. This is recommended because only the collector object derives from another collector object and it is referenced directly.

### Example 2

![inheritance example 2](images/wpr-collector-definitions-example2.jpg)

A profile **Profile A** references a collector **Collector A**. Another profile **Profile B** requires changes to **Profile A** so it derives from it, and specifies its changes directly in its definition. This is recommended because only the profile object derives from another profile object.

### Example 3

![inheritance example 3](images/wpr-collector-definitions-example3.jpg)

A profile **Profile A** references a collector **Collector A**. A collector **Collector A2** derives from **Collector A**. Finally, the profile **Profile B** derives both from **Profile A** and also references **Collector A** that is already referenced in the parent profile of **Profile B**.

In this case it’s ambiguous how the definition for **Collector A2** should be evaluated. In one case, the profile derivation take precedence, and in another the collector derivation takes precedence. This is not recommended practice because the ordering is undefined and may lead to different outcomes based on ordering of operations.

Based on this, you should never combine derivations across multiple types of objects.

## Related topics


[Authoring Recording Profiles](authoring-recording-profiles.md)

[2. System and Event Provider Definitions](2-system-and-event-provider-definitions.md)

[Recording Profile XML Reference](recording-profile-xml-reference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%201.%20Collector%20Definitions%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





