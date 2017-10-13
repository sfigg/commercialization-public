---
title: Buffers
description: Buffers
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8f60d3e3-cb32-4879-8ac2-80ceaea945d3
ms.mktglfcycl: operate
ms.sitesec: msdn
ms.author: sapaetsc
ms.date: 05/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Buffers


Describes either the number of buffers to be allocated when starting a session or the percentage of total memory to be allocated for the session, depending on the value of the **PercentageOfTotalMemory** attribute.

## Element Hierarchy

* &lt;[WindowsPerformanceRecorder](windowsperformancerecorder.md)\>
  * \<[Profiles](profiles.md)\>
    * \<[SystemCollector](systemcollector.md)\>
      * \<**Buffers**\>
    * \<[EventCollector](eventcollector.md)\>
      * \<**Buffers**\>
    * \<[HeapEventCollector](heapeventcollector.md)\>
        * \<**Buffers**\>
    * \<[Profile](profile-wpr.md)\>
      * \<[Collectors](collectors.md)\>
        * \<[SystemCollectorId](systemcollectorid.md)\>
          * \<**Buffers**\>
        * \<[EventCollectorId](eventcollectorid.md)\>
          * \<**Buffers**\>
        * \<[HeapEventCollectorId](heapeventcollectorid.md)\>
          * \<**Buffers**\>


## Syntax


```
<Buffers Operation               = "Set" | "Add" | “Remove”
         Value                   = unsignedLong
         PercentageOfTotalMemory = Boolean
         MaximumBufferSpace      = Boolean >
</Buffers>
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
<td><p><strong>MaximumBufferSpace</strong></p></td>
<td><p>Indicates the maximum size of the buffer, in megabytes, that will be used for collection. This value only applies when <strong>PercentageOfTotalMemory</strong> is <strong>true</strong>.</p></td>
<td><p>unsignedLong</p></td>
<td><p>No</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>Operation</strong></p></td>
<td><p>Indicates whether buffers should be set or added.</p></td>
<td><p>This attribute can have one of the following values:</p>
<ul>
<li>Set</li>
<li>Add</li>
<li>Remove</li>
</ul></td>
<td><p>No</p></td>
<td><p>Set</p></td>
</tr>
<tr class="odd">
<td><p><strong>PercentageOfTotalMemory</strong></p></td>
<td><p>When set to <strong>true</strong>, limits the amount of memory that can be consumed to the value of <strong>Value</strong>.</p></td>
<td><p>Boolean</p></td>
<td><p>No</p></td>
<td><p>false</p></td>
</tr>
<tr class="even">
<td><p><strong>Value</strong></p></td>
<td><p>Indicates the number of buffers, or if <strong>PercentageOfTotalMemory</strong> is set to <strong>true</strong>, the percentage of memory for the buffers.</p></td>
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


The following examples show how this element is used in system collector and event collector definitions.

The first example sets the buffer size to 512 KB and limits the total amount of memory consumed to 3 percent. The second example sets 64 buffers of 128 KB each.

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

[BufferSize](buffersize.md)

[SystemCollector](systemcollector.md)

[EventCollector](eventcollector.md)

[HeapEventCollector](heapeventcollector.md)

