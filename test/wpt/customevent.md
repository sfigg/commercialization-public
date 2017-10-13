---
title: CustomEvent
description: CustomEvent
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4ce7091b-4e6a-40c3-aeff-1c9434310f44
ms.mktglfcycl: operate
ms.sitesec: msdn
ms.author: sapaetsc
ms.date: 05/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---


# CustomEvent

Represents a custom event.


## Element Hierarchy

* \<[WindowsPerformanceRecorder](windowsperformancerecorder.md)\>
  * \<[TraceMergeProperties](tracemergeproperties.md)\>
    * \<[TraceMergeProperty](tracemergeproperty.md)\>
      * \<[CustomEvents](customevents.md)\>
        * \<**CustomEvent**\>


## Syntax

```
<CustomEvent Value = "None" | "ImageId" | "BuildInfo" | ...>
</CustomEvent>
```


## Attributes and Elements


### Attributes

<table>
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
<td><p><strong>Value</strong></p></td>
<td><p>Describes the value of the custom event.</p></td>
<td><p>This attribute can have one of the following values:</p>
<ul>
<li><p>None</p></li>
<li><p>ImageId</p></li>
<li><p>BuildInfo</p></li>
<li><p>VolumeMapping</p></li>
<li><p>EventMetadata</p></li>
<li><p>PerfTrackMetadata</p></li>
<li><p>WinSAT</p></li>
<li><p>NetworkInterface</p></li>
</ul></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>


### Child Elements

None.


### Parent Elements

| Element                         | Description                               |
|:--------------------------------|:------------------------------------------|
| [CustomEvents](customevents.md) | Represents a collection of custom events. |


## Example

The following code example shows how this element is used in a trace merge property definition.

```
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
```


## Related topics

[Elements](elements.md)

