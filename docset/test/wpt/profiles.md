---
title: Profiles
description: Profiles
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 00b0d6dc-d14a-4c70-ab7b-4aa2250c2395
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Profiles


Represents a collection of collectors, providers, and profiles.

## Element Hierarchy


&lt;[WindowsPerformanceRecorder](windowsperformancerecorder.md)&gt;

     &lt;**Profiles**&gt;

## Syntax


``` syntax
<Profiles>

  <!-- Child elements -->
  SystemCollector,
  EventCollector,
  HeapEventCollector,
  SystemProvider,
  EventProvider,
  HeapEventProvider,
  Profile

</Profiles>
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
<th>Requirement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[SystemCollector](systemcollector.md)</p></td>
<td><p>Represents a system collector.</p></td>
<td><p>Optional, zero or more.</p></td>
</tr>
<tr class="even">
<td><p>[EventCollector](eventcollector.md)</p></td>
<td><p>Represents an event collector.</p></td>
<td><p>Optional, zero or more.</p></td>
</tr>
<tr class="odd">
<td><p>[HeapEventCollector](heapeventcollector.md)</p></td>
<td><p>Represents a heap event collector.</p></td>
<td><p>Optional, zero or more.</p></td>
</tr>
<tr class="even">
<td><p>[SystemProvider](systemprovider.md)</p></td>
<td><p>Represents a system provider.</p></td>
<td><p>Optional, zero or more.</p></td>
</tr>
<tr class="odd">
<td><p>[EventProvider](eventprovider.md)</p></td>
<td><p>Represents an event provider.</p></td>
<td><p>Optional, zero or more.</p></td>
</tr>
<tr class="even">
<td><p>[HeapEventProvider](heapeventprovider.md)</p></td>
<td><p>Represents a heap event provider.</p></td>
<td><p>Optional, zero or more.</p></td>
</tr>
<tr class="odd">
<td><p>[Profile](profile-wpr.md)</p></td>
<td><p>Represents a collection of problem categories and collectors.</p></td>
<td><p>Required, 1 to 4.</p></td>
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

 

## Remarks


Only a single **Profiles** element can be defined in a **WindowsPerformanceRecorder** element.

## Related topics


[Elements](elements.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Profiles%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





