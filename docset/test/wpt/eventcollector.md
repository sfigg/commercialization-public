---
title: EventCollector
description: EventCollector
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d7c94d21-b834-44f2-bad0-f0af6555bb5d
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# EventCollector


Represents an event collector for the profile.

## Element Hierarchy


&lt;[WindowsPerformanceRecorder](windowsperformancerecorder.md)&gt;

     &lt;[Profiles](profiles.md)&gt;

          &lt;**EventCollector**&gt;

## Syntax


``` syntax
<EventCollector Id             = IdType
                Base           = string
                Name           = string
                FileName       = string
                Realtime       = boolean
                Private        = boolean
                ProcessPrivate = boolean
                Secure         = boolean>

  <!-- Child elements -->
  BufferSize,
  Buffers,
  StackCaching

</EventCollector>
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
<td><p><strong>Id</strong></p></td>
<td><p>Uniquely identifies the event collector.</p></td>
<td><p>String that must have at least one character and cannot contain colons (:) or spaces.</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>Base</strong></p></td>
<td><p>Identifies the base of the event collector.</p></td>
<td><p>string</p></td>
<td><p>No</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p><strong>Name</strong></p></td>
<td><p>Indicates the name of the ETW session.</p></td>
<td><p>string</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>FileName</strong></p></td>
<td><p>Indicates the file to which to log events.</p></td>
<td><p>string</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p><strong>Realtime</strong></p></td>
<td><p>Indicates whether the event collector operates in real time.</p></td>
<td><p>boolean</p></td>
<td><p>No</p></td>
<td><p>false</p></td>
</tr>
<tr class="even">
<td><p><strong>Private</strong></p></td>
<td><p>If set to &quot;true&quot;, indicates a user-mode session that runs in the same process as its event provider. If set to &quot;false&quot;, indicates a global user-mode session.</p></td>
<td><p>boolean</p></td>
<td><p>No</p></td>
<td><p>false</p></td>
</tr>
<tr class="odd">
<td><p><strong>ProcessPrivate</strong></p></td>
<td><p>If set to &quot;true&quot;, indicates a user-mode session that runs in the same process as its event provider and should be controlled only by the process that registered the provider. If set to &quot;false&quot;, indicates a global user-mode session. Use this attribute in conjunction with the <strong>Private</strong> attribute.</p></td>
<td><p>boolean</p></td>
<td><p>No</p></td>
<td><p>false</p></td>
</tr>
<tr class="even">
<td><p><strong>Secure</strong></p></td>
<td><p>If set to &quot;true&quot;, indicates that only users with administrative privileges and proper access rights can control the session. If set to &quot;false&quot;, indicates that all users can control the session.</p></td>
<td><p>boolean</p></td>
<td><p>No</p></td>
<td><p>false</p></td>
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
<td><p>[BufferSize](buffersize.md)</p></td>
<td><p>Describes the size of each buffer, in KB.</p></td>
<td><p>Required, exactly 1.</p></td>
</tr>
<tr class="even">
<td><p>[Buffers](buffers.md)</p></td>
<td><p>Describes the number of buffers to be allocated when starting a session or the percentage of total memory to be allocated for the session, depending on the value of the <strong>PercentageOfTotalMemory</strong> attribute.</p></td>
<td><p>Required, exactly 1.</p></td>
</tr>
<tr class="odd">
<td><p>[StackCaching](stackcaching.md)</p></td>
<td><p>Describes stack caching attributes of collectors.</p></td>
<td><p></p></td>
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
<td><p>[Profiles](profiles.md)</p></td>
<td><p>Represents a collection of collectors, providers, and profiles.</p></td>
</tr>
</tbody>
</table>

 

## Remarks


System collector definitions must precede event collector definitions.

Derived collectors inherit all attributes of the base collector unless they are explicitly specified in the derived collector. For more information, see [Inheritance](inheritance.md).

## Example


The following code example defines an event collector with 64 buffers of 128 KB each.

``` syntax
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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20EventCollector%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





