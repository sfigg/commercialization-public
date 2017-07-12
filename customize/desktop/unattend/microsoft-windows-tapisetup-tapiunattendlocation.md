---
title: TapiUnattendLocation
description: TapiUnattendLocation
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 86aeb8bd-8ef1-44cf-82cb-fa779c2aa26c
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# TapiUnattendLocation


`TapiUnattendLocation` specifies unattended installation settings for a telephony location.

If one of the child elements is not applicable in your country or region, you must specify an empty string in the unattended installation answer file, by entering two quotation marks (**""**).

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[AreaCode](microsoft-windows-tapisetup-tapiunattendlocation-areacode.md)</p></td>
<td><p>Specifies the local telephone area code.</p></td>
</tr>
<tr class="even">
<td><p>[CountryOrRegion](microsoft-windows-tapisetup-tapiunattendlocation-countryorregion.md)</p></td>
<td><p>Specifies the region ID for this location. This not the same as the country or region code used for dialing.</p></td>
</tr>
<tr class="odd">
<td><p>[DisableCallWaiting](microsoft-windows-tapisetup-tapiunattendlocation-disablecallwaiting.md)</p></td>
<td><p>Specifies the number to dial to disable call waiting.</p></td>
</tr>
<tr class="even">
<td><p>[InternationalCarrierCode](microsoft-windows-tapisetup-tapiunattendlocation-internationalcarriercode.md)</p></td>
<td><p>Specifies the international telephone carrier.</p></td>
</tr>
<tr class="odd">
<td><p>[LongDistanceAccess](microsoft-windows-tapisetup-tapiunattendlocation-longdistanceaccess.md)</p></td>
<td><p>Specifies the number to dial from this location for long distance access.</p></td>
</tr>
<tr class="even">
<td><p>[LongDistanceCarrierCode](microsoft-windows-tapisetup-tapiunattendlocation-longdistancecarriercode.md)</p></td>
<td><p>Specifies the long distance carrier.</p></td>
</tr>
<tr class="odd">
<td><p>[Name](microsoft-windows-tapisetup-tapiunattendlocation-name.md)</p></td>
<td><p>Specifies the name of this location. This appears in the user interface (UI).</p></td>
</tr>
<tr class="even">
<td><p>[OutsideAccess](microsoft-windows-tapisetup-tapiunattendlocation-outsideaccess.md)</p></td>
<td><p>Specifies the number to dial to access an outside line from this location.</p></td>
</tr>
<tr class="odd">
<td><p>[PulseOrToneDialing](microsoft-windows-tapisetup-tapiunattendlocation-pulseortonedialing.md)</p></td>
<td><p>Specifies whether to use pulse dialing or tone dialing.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[microsoft-windows-tapisetup-](microsoft-windows-tapisetup.md) | **TapiUnattendLocation**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-tapisetup-](microsoft-windows-tapisetup.md).

## XML Example


The following XML output shows how to set the location from which you are calling.

``` syntax
<TapiUnattendLocation>
   <AreaCode>123</AreaCode>
   <CountryOrRegion>123</CountryOrRegion>
   <DisableCallWaiting>7</DisableCallWaiting>
   <InternationalCarrierCode>123456789</InternationalCarrierCode>
   <LongDistanceAccess>11</LongDistanceAccess>
   <LongDistanceCarrierCode>123456789</LongDistanceCarrierCode>
   <Name>MyLocation</Name>
   <OutsideAccess>9</OutsideAccess>
   <PulseOrToneDialing>1</PulseOrToneDialing>
</TapiUnattendLocation>
```

## Related topics


[microsoft-windows-tapisetup-](microsoft-windows-tapisetup.md)

 

 







