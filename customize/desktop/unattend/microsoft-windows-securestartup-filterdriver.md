---
title: microsoft-windows-securestartup-filterdriver-
description: microsoft-windows-securestartup-filterdriver-
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d64c8dad-d2a2-4786-a811-2a03b6d53607
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# microsoft-windows-securestartup-filterdriver-


The microsoft-windows-securestartup-filterdriver- component contains settings to optimize BitLocker settings for PCs with hardware architectures such as System on a Chip (SoC).

These settings are intended for OEM manufacturing only. For specific guidance on using these settings, contact Microsoft.

**Warning**  
Do not use these settings for standard 32-bit or 64-bit hardware architectures.

These settings only apply to Windows 8.

 

## In This Section


<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[BytesDecryptedInDiskRequestOverhead](microsoft-windows-securestartup-filterdriver-bytesdecryptedindiskrequestoverhead.md)</p></td>
</tr>
<tr class="even">
<td><p>[MaxCryptoRequestsPerIo](microsoft-windows-securestartup-filterdriver-maxcryptorequestsperio.md)</p></td>
</tr>
<tr class="odd">
<td><p>[MaxDecryptRequests](microsoft-windows-securestartup-filterdriver-maxdecryptrequests.md)</p></td>
</tr>
<tr class="even">
<td><p>[MaxEncryptRequests](microsoft-windows-securestartup-filterdriver-maxencryptrequests.md)</p></td>
</tr>
<tr class="odd">
<td><p>[PreventDeviceEncryption](microsoft-windows-securestartup-filterdriver-preventdeviceencryption.md)</p></td>
</tr>
<tr class="even">
<td><p>[SlicedEncryptionInPlace](microsoft-windows-securestartup-filterdriver-slicedencryptioninplace.md)</p></td>
</tr>
<tr class="odd">
<td><p>[SlicedEncryptionMinSize](microsoft-windows-securestartup-filterdriver-slicedencryptionminsize.md)</p></td>
</tr>
<tr class="even">
<td><p>[SlicedEncryptionRequestsMax](microsoft-windows-securestartup-filterdriver-slicedencryptionrequestsmax.md)</p></td>
</tr>
<tr class="odd">
<td><p>[WriteIoAggregateMaxSize](microsoft-windows-securestartup-filterdriver-writeioaggregatemaxsize.md)</p></td>
</tr>
<tr class="even">
<td><p>[WriteIoAggregateMinSize](microsoft-windows-securestartup-filterdriver-writeioaggregateminsize.md)</p></td>
</tr>
<tr class="odd">
<td><p>[WriteSubrequestLength](microsoft-windows-securestartup-filterdriver-writesubrequestlength.md)</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

**Note**  
Although this component is available in x86 hardware architectures, these settings should not be used for standard x86 hardware architectures.

 

## XML Example


The following example specifies recommended values for Bitlocker optimizations on an x86 System on a Chip.

```
<component name="microsoft-windows-securestartup-filterdriver-" processorArchitecture="x86" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <BytesDecryptedInDiskRequestOverhead>524288</BytesDecryptedInDiskRequestOverhead>
  <InPlaceCrypto>0</InPlaceCrypto>
  <MaxCryptoRequestsPerIo>5</MaxCryptoRequestsPerIo>
  <MaxDecryptRequests>0</MaxDecryptRequests>
  <MaxEncryptRequests>2</MaxEncryptRequests>
  <ModifiedWriteMaximum>4</ModifiedWriteMaximum>
  <ReadDoubleBuffering>0</ReadDoubleBuffering>
  <SlicedEncryptionInPlace>1</SlicedEncryptionInPlace>
  <SlicedEncryptionMinSize>524288</SlicedEncryptionMinSize>
  <SlicedEncryptionRequestsMax>1</SlicedEncryptionRequestsMax>
  <WriteIoAggregateMaxSize>1048576</WriteIoAggregateMaxSize>
  <WriteIoAggregateMinSize>1048576</WriteIoAggregateMinSize>
  <WriteSubrequestLength>524288</WriteSubrequestLength>
 </component>
```

## Related topics


[Components](components-b-unattend.md)

 

 







