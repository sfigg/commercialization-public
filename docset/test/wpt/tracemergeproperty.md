---
title: TraceMergeProperty
description: TraceMergeProperty
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b3640f46-7bf4-4ee3-8094-ace27f275bd8
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# TraceMergeProperty


Contains configurations that are applied when recordings from multiple profiles are merged. This element is for internal use only.

## Element Hierarchy


&lt;[WindowsPerformanceRecorder](windowsperformancerecorder.md)&gt;

     &lt;[TraceMergeProperties](tracemergeproperties.md)&gt;

          &lt;**TraceMergeProperty**&gt;

## Syntax


``` syntax
<TraceMergeProperty Id   = IdType
                    Name = string
                    Base = string>

  <!-- Child elements -->
  DeletePreMergedTraceFiles,
  FileCompression
  CustomEvents
</TraceMergeProperty>
```

## Attributes and Elements


### Attributes

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Description</th>
<th>Data type</th>
<th>Required</th>
<th>Default</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ID</strong></p></td>
<td><p>Uniquely identifies this element.</p></td>
<td><p>String that must have at least one character and cannot contain colons (:) or spaces.</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>Name</strong></p></td>
<td><p>Indicates the name of this element.</p></td>
<td><p>string</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p><strong>Base</strong></p></td>
<td><p>Indicates the base of this element. Derived elements have all the attributes of the base by default. You can override these attributes by explicitly specifying them in the derived element.</p></td>
<td><p>string</p></td>
<td><p>No</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

### Child Elements

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Element</th>
<th>Description</th>
<th>Requirement</th>
<th>Possible Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[DeletePreMergedTraceFiles](deletepremergedtracefiles.md)</p></td>
<td><p>Indicates whether to delete premerged event trace log (ETL) files.</p></td>
<td><p>Optional</p></td>
<td><p>true, false</p></td>
</tr>
<tr class="even">
<td><p>[FileCompression](filecompression.md)</p></td>
<td><p>Indicates whether to compress the ETL file.</p></td>
<td><p>Optional</p></td>
<td><p>true, false</p></td>
</tr>
<tr class="odd">
<td><p>[CustomEvents](customevents.md)</p></td>
<td><p>Represents a collection of custom events.</p></td>
<td><p>Optional</p></td>
<td><p>true, false</p></td>
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
<td><p>[TraceMergeProperties](tracemergeproperties.md)</p></td>
<td><p>Represents a collection of trace merge properites.</p></td>
</tr>
</tbody>
</table>

 

## Example


The following code example shows a trace merge property definition.

``` syntax
<TraceMergeProperty
  Id="TraceMerge_Default"
  Name="TraceMerge_Default">
  <DeletePreMergedTraceFiles
    Value="true"/>
  <FileCompression
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
```

## Related topics


[Elements](elements.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20TraceMergeProperty%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





