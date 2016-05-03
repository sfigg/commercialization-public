---
title: PoolTags
description: PoolTags
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 819088ce-bfda-4866-a97c-a85b768c5f7a
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# PoolTags


Represents a collection of a maximum of four pool tags. If the **Operation** attribute is specified, the **PoolTag** elements can be set or added to the collection.

## Element Hierarchy


&lt;[WindowsPerformanceRecorder](windowsperformancerecorder.md)&gt;

   &lt;[Profiles](profiles.md)&gt;

      &lt;[SystemProvider](systemprovider.md)&gt;

         &lt;**PoolTags**&gt;

&lt;[WindowsPerformanceRecorder](windowsperformancerecorder.md)&gt;

   &lt;[Profiles](profiles.md)&gt;

      &lt;[Profile](profile-wpr.md)&gt;

         &lt;[Collectors](collectors.md)&gt;

            &lt;[SystemCollectorId](systemcollectorid.md)&gt;

               &lt;[SystemProviderId](systemproviderid.md)&gt;

                    &lt;**PoolTags**&gt;

&lt;[WindowsPerformanceRecorder](windowsperformancerecorder.md)&gt;

   &lt;[Profiles](profiles.md)&gt;

      &lt;[Profile](profile-wpr.md)&gt;

         &lt;[Collectors](collectors.md)&gt;

            &lt;[SystemCollectorId](systemcollectorid.md)&gt;

               &lt;[SystemProvider](systemprovider.md)&gt;

                    &lt;**PoolTags**&gt;

## Syntax


``` syntax
<PoolTags Operation = "Set" | "Add" | “Remove” >

  <!-- Child elements -->
  PoolTag

</PoolTags>
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
<td><p><strong>Operation</strong></p></td>
<td><p>Indicates whether <strong>PoolTag</strong> elements should be set or added.</p></td>
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
<td><p>[PoolTag](pooltag.md)</p></td>
<td><p>Describes the pool tags to be enabled for analyzing pool pages.</p></td>
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
<td><p>[SystemProvider](systemprovider.md)</p></td>
<td><p>Represents a system provider.</p></td>
</tr>
<tr class="even">
<td><p>[SystemProviderId](systemproviderid.md)</p></td>
<td><p>Represents a system provider identifier.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Elements](elements.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20PoolTags%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





