---
title: WindowsPerformanceRecorder
description: WindowsPerformanceRecorder
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e17ce0a4-9621-4611-a781-2750fba3b0cd
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# WindowsPerformanceRecorder


This element is the root element of the schema. It represents metadata about the authoring of profiles.

## Element Hierarchy


&lt;**WindowsPerformanceRecorder**&gt;

## Syntax


``` syntax
<WindowsPerformanceRecorder Version   = float
                            Author    = string
                            Team      = string
                            Copyright = string
                            Company   = string
                            Comments  = string
                            Tag       = string>

  <!-- Child elements -->
  Profiles,
  TraceMergeProperties,
  OnOffTransitionConfigurations

</WindowsPerformanceRecorder>
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
<td><p><strong>Version</strong></p></td>
<td><p>Indicates the version of the profile.</p></td>
<td><p>float</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>Author</strong></p></td>
<td><p>Indicates the author of the profile.</p></td>
<td><p>string</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p><strong>Team</strong></p></td>
<td><p>Indicates the team that created the profile.</p></td>
<td><p>string</p></td>
<td><p>No</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>Copyright</strong></p></td>
<td><p>Represents copyright information.</p></td>
<td><p>string</p></td>
<td><p>No</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p><strong>Company</strong></p></td>
<td><p>Indicates the company that created the profile.</p></td>
<td><p>string</p></td>
<td><p>No</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>Comments</strong></p></td>
<td><p>Represents optional descriptive comments for the profiles.</p></td>
<td><p>string</p></td>
<td><p>No</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p><strong>Tag</strong></p></td>
<td><p>Represents a tagged value that can be used to differentiate different profiles.</p></td>
<td><p>string</p></td>
<td><p>No</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

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
<td><p>[Profiles](profiles.md)</p></td>
<td><p>Represents a collection of collectors, providers, and profiles.</p></td>
<td><p>Required, exactly 1.</p></td>
</tr>
<tr class="even">
<td><p>[TraceMergeProperties](tracemergeproperties.md)</p></td>
<td><p>Represents a collection of trace merge properites.</p></td>
<td><p>Optional, zero or 1.</p></td>
</tr>
<tr class="odd">
<td><p>[OnOffTransitionConfigurations](onofftransitionconfigurations.md)</p></td>
<td><p>Represents a collection of on/off transition configurations.</p></td>
<td><p>Optional, zero or 1.</p></td>
</tr>
</tbody>
</table>

 

### Parent Elements

None.

## Related topics


[Elements](elements.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20WindowsPerformanceRecorder%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





