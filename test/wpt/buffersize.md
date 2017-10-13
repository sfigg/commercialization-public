---
title: BufferSize
description: BufferSize
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2ff38035-21a6-4081-b8e7-37b6fd3b6f4e
ms.mktglfcycl: operate
ms.sitesec: msdn
ms.author: sapaetsc
ms.date: 05/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# BufferSize


Describes the size of each buffer, in KB.

## Element Hierarchy


* \<[WindowsPerformanceRecorder](windowsperformancerecorder.md)\>
  * \<[Profiles](profiles.md)\>
    * \<[SystemCollector](systemcollector.md)\>
      * \<**BufferSize**\>
    * \<[EventCollector](eventcollector.md)\>
      * \<**BufferSize**\>
    * \<[HeapEventCollector](heapeventcollector.md)\>
      * \<**BufferSize**\>
    * \<[Profile](profile-wpr.md)\>
      * \<[Collectors](collectors.md)\>
        * \<[SystemCollectorId](systemcollectorid.md)\>
          * \<**BufferSize**\>
        * \<[EventCollectorId](eventcollectorid.md)\>
          * \<**BufferSize**\>
        * \<[HeapEventCollectorId](heapeventcollectorid.md)\>
          * \<**BufferSize**\>


## Syntax


```
<BufferSize Operation = "Set" | "Add" | “Remove”
            Value     = unsignedLong>
</BufferSize>
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
<td><p><strong>Operation</strong></p></td>
<td><p>Indicates whether elements should be set or added.</p></td>
<td><p>This attribute can have one of the following values:</p>
<ul>
<li><p>Set</p></li>
<li><p>Add</p></li>
<li><p>Remove</p></li>
</ul></td>
<td><p>No</p></td>
<td><p>Set</p></td>
</tr>
<tr class="even">
<td><p><strong>Value</strong></p></td>
<td><p>Indicates the size of the buffers, in KB.</p></td>
<td><p>unsignedLong</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>


### Child Elements

None.

### Parent Elements

| Element                                         | Description                                   |
|:------------------------------------------------|:----------------------------------------------|
| [EventCollector](eventcollector.md)             | Represents an event collector.                |
| [EventCollectorId](eventcollectorid.md)         | Represents an event collector identifier.     |
| [HeapEventCollector](heapeventcollector.md)     | Represents a heap event collector.            |
| [HeapEventCollectorId](heapeventcollectorid.md) | Represents a heap event collector identifier. |
| [SystemCollector](systemcollector.md)           | Represents a system collector.                |
| [SystemCollectorId](systemcollectorid.md)       | Represents a system collector identifier.     |


## Remarks


This element is used only for in-memory capture.

## Example


The following code examples show how this element is used in system collector and event collector definitions.

```
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
```

## Related topics


[Elements](elements.md)

[Buffers](buffers.md)

[SystemCollector](systemcollector.md)

[EventCollector](eventcollector.md)

[HeapEventCollector](heapeventcollector.md)

