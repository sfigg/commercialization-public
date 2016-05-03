---
title: Keyword (in EventProvider)
description: Keyword (in EventProvider)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f5b18ec2-8b85-40d6-ac69-91ccd7e7fad9
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Keyword (in EventProvider)


Describes the Event Tracing for Windows (ETW) keyword for a user-mode provider.

## Element Hierarchy


&lt;[WindowsPerformanceRecorder](windowsperformancerecorder.md)&gt;

     &lt;[Profiles](profiles.md)&gt;

          &lt;[EventProvider](eventprovider.md)&gt;

               &lt;[Keywords (in EventProvider)](keywords--in-eventprovider-.md)&gt;

                    &lt;**Keyword (in EventProvider)**&gt;

               &lt;[CaptureStateOnStart](capturestateonstart.md)&gt;

                    &lt;**Keyword (in EventProvider)**&gt;

               &lt;[CaptureStateOnSave](capturestateonsave.md)&gt;

                    &lt;**Keyword (in EventProvider)**&gt;

          &lt;[HeapEventProvider](heapeventprovider.md)&gt;

               &lt;[Keywords (in EventProvider)](keywords--in-eventprovider-.md)&gt;

                    &lt;**Keyword (in EventProvider)**&gt;

          &lt;[Profile](profile-wpr.md)&gt;

               &lt;[Collectors](collectors.md)&gt;

                    &lt;[EventCollectorId](eventcollectorid.md)&gt;

                         &lt;[EventProviders](eventproviders.md)&gt;

                              &lt;[EventProviderId](eventproviderid.md)&gt;

                                   &lt;[Keywords (in EventProvider)](keywords--in-eventprovider-.md)&gt;

                                        &lt;**Keyword (in EventProvider)**&gt;

                              &lt;[EventProvider](eventprovider.md)&gt;

                                   &lt;[Keywords (in EventProvider)](keywords--in-eventprovider-.md)&gt;

                                        &lt;**Keyword (in EventProvider)**&gt;

                                   &lt;[CaptureStateOnStart](capturestateonstart.md)&gt;

                                        &lt;**Keyword (in EventProvider)**&gt;

                                   &lt;[CaptureStateOnSave](capturestateonsave.md)&gt;

                                        &lt;**Keyword (in EventProvider)**&gt;

                    &lt;[HeapEventCollectorId](heapeventcollectorid.md)&gt;

                         &lt;[HeapEventProviders](heapeventproviders.md)&gt;

                              &lt;[HeapEventProviderId](heapeventproviderid.md)&gt;

                                   &lt;[Keywords (in EventProvider)](keywords--in-eventprovider-.md)&gt;

                                        &lt;**Keyword (in EventProvider)**&gt;

                              &lt;[HeapEventProvider](heapeventprovider.md)&gt;

                                   &lt;[Keywords (in EventProvider)](keywords--in-eventprovider-.md)&gt;

                                        &lt;**Keyword (in EventProvider)**&gt;

## Syntax


``` syntax
<Keyword Value string
</Keyword>
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
<td><p><strong>Value</strong></p></td>
<td><p>String that is the name of the ETW event.</p></td>
<td><p>string</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

### Child Elements

None.

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
<td><p>[Keywords (in EventProvider)](keywords--in-eventprovider-.md)</p></td>
<td><p>Represents a collection of event provider keywords.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Elements](elements.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Keyword%20%28in%20EventProvider%29%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





