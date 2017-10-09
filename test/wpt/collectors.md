---
title: Collectors
description: Collectors
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e94d9c16-0aa7-4af3-80df-5ef086e74293
ms.mktglfcycl: operate
ms.sitesec: msdn
ms.author: sapaetsc
ms.date: 05/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---


# Collectors

Represents a collection of system collector identifiers, event collector identifiers, and optionally heap event collector identifiers.


## Element Hierarchy

* \<[WindowsPerformanceRecorder](windowsperformancerecorder.md)\>
  * \<[Profiles](profiles.md)\>
    * \<[Profile](profile-wpr.md)\>
      * \<**Collectors**\>


## Syntax

```
<Collectors Operation = "Set" | "Add" | “Remove” >

  <!-- Child elements -->
  SystemCollectorId,
  EventCollectorId,
  HeapEventCollectorId

</Collectors>
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
<td><p>Indicates whether collectors should be set or added.</p></td>
<td><p>This attribute can have one of the following values:</p>
<ul>
<li><p>Set</p></li>
<li><p>Add</p></li>
<li><p>Remove</p></li>
</ul></td>
<td><p>No</p></td>
<td><p>Set</p></td>
</tr>
</tbody>
</table>


### Child Elements

| Element                                         | Description                                   | Requirement                                                                           |
|:------------------------------------------------|:----------------------------------------------|:--------------------------------------------------------------------------------------|
| [SystemCollectorId](systemcollectorid.md)       | Represents a system collector identifier.     | Optional, zero or 1. There must be at least one collector, either system or event.    |
| [EventCollectorId](eventcollectorid.md)         | Represents an event collector identifier.     | Optional, zero or more. There must be at least one collector, either system or event. |
| [HeapEventCollectorId](heapeventcollectorid.md) | Represents a heap event collector identifier. | Optional, zero or more.                                                               |


### Parent Elements

| Element                   | Description                                                   |
|:--------------------------|:--------------------------------------------------------------|
| [Profile](profile-wpr.md) | Represents a collection of problem categories and collectors. |


## Related topics

[Elements](elements.md)

