---
title: TraceMergeProperties
description: TraceMergeProperties
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7771cdc2-3573-4a3b-a52b-70ef77f706dc
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# TraceMergeProperties


Represents a collection of [TraceMergeProperty](tracemergeproperty.md) element. This element is for internal use only.

## Element Syntax


&lt;[WindowsPerformanceRecorder](windowsperformancerecorder.md)&gt;

     &lt;**TraceMergeProperties**&gt;

## Syntax


``` syntax
<TraceMergeProperties>

  <!-- Child elements -->
  TraceMergeProperty

</TraceMergeProperties>
```

## Attributes and Elements


### Attributes

None.

### Child Elements

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Element</th>
<th>Description</th>
<th>Requirment</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[TraceMergeProperty](tracemergeproperty.md)</p></td>
<td><p>Contains configurations that are applied when event trace log (ETL) files from multiple profiles are merged.</p></td>
<td><p>Required, 1 or more.</p></td>
</tr>
</tbody>
</table>

 

### Parent Elements

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Element</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[WindowsPerformanceRecorder](windowsperformancerecorder.md)</p></td>
<td><p>Represents metadata about the authoring of the profile.</p></td>
</tr>
</tbody>
</table>

 

## Example


The following code example shows how to define this element.

``` syntax
<TraceMergeProperties>
  <TraceMergeProperty
    Id="TraceMerge_Default"
    Name="TraceMerge_Default">
    <DeletePreMergedTraceFiles
      Value="true"/>
    <CustomEvents>
      <CustomEvent
        Value="ImageId"/>
      <CustomEvent
        Value="BuildInfo"/>
      <CustomEvent
        Value="VolumeMapping"/>
      <CustomEvent
        Value="EventMetadata"/>
      <CustomEvent
        Value="PerfTrackMetadata"/>
      <CustomEvent
        Value="WinSAT"/>
      <CustomEvent
        Value="NetworkInterface"/>
    </CustomEvents>
  </TraceMergeProperty>
</TraceMergeProperties>
```

## Related topics


[Elements](elements.md)

[Inheritance](inheritance.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20TraceMergeProperties%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





