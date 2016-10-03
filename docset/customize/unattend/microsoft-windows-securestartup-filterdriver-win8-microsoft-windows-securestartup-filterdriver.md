---
title: Microsoft-Windows-SecureStartup-FilterDriver
description: Microsoft-Windows-SecureStartup-FilterDriver
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d64c8dad-d2a2-4786-a811-2a03b6d53607
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# Microsoft-Windows-SecureStartup-FilterDriver


The Microsoft-Windows-SecureStartup-FilterDriver component contains settings to optimize BitLocker settings for PCs with hardware architectures such as System on a Chip (SoC).

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
<td><p>[BytesDecryptedInDiskRequestOverhead](bytesdecryptedindiskrequestoverhead-win8-microsoft-windows-securestartup-filterdriverbytesdecryptedindiskrequestoverhead.md)</p></td>
</tr>
<tr class="even">
<td><p>[MaxCryptoRequestsPerIo](maxcryptorequestsperio-win8-microsoft-windows-securestartup-filterdrivermaxcryptorequestsperio.md)</p></td>
</tr>
<tr class="odd">
<td><p>[MaxDecryptRequests](maxdecryptrequests-win8-microsoft-windows-securestartup-filterdrivermaxdecryptrequests.md)</p></td>
</tr>
<tr class="even">
<td><p>[MaxEncryptRequests](maxencryptrequests-win8-microsoft-windows-securestartup-filterdrivermaxencryptrequests.md)</p></td>
</tr>
<tr class="odd">
<td><p>[PreventDeviceEncryption](preventdeviceencryption-win8-microsoft-windows-securestartup-filterdriverpreventdeviceencryption.md)</p></td>
</tr>
<tr class="even">
<td><p>[SlicedEncryptionInPlace](slicedencryptioninplace-win8-microsoft-windows-securestartup-filterdriverslicedencryptioninplace.md)</p></td>
</tr>
<tr class="odd">
<td><p>[SlicedEncryptionMinSize](slicedencryptionminsize-win8-microsoft-windows-securestartup-filterdriverslicedencryptionminsize.md)</p></td>
</tr>
<tr class="even">
<td><p>[SlicedEncryptionRequestsMax](slicedencryptionrequestsmax-win8-microsoft-windows-securestartup-filterdriverslicedencryptionrequestsmax.md)</p></td>
</tr>
<tr class="odd">
<td><p>[WriteIoAggregateMaxSize](writeioaggregatemaxsize-win8-microsoft-windows-securestartup-filterdriverwriteioaggregatemaxsize.md)</p></td>
</tr>
<tr class="even">
<td><p>[WriteIoAggregateMinSize](writeioaggregateminsize-win8-microsoft-windows-securestartup-filterdriverwriteioaggregateminsize.md)</p></td>
</tr>
<tr class="odd">
<td><p>[WriteSubrequestLength](writesubrequestlength-win8-microsoft-windows-securestartup-filterdriverwritesubrequestlength.md)</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](p_wsim.configure_components_and_settings_in_an_answer_file_win8).

**Note**  
Although this component is available in x86 hardware architectures, these settings should not be used for standard x86 hardware architectures.

 

## XML Example


The following example specifies recommended values for Bitlocker optimizations on an x86 System on a Chip.

``` syntax
<component name="Microsoft-Windows-SecureStartup-FilterDriver" processorArchitecture="x86" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20Microsoft-Windows-SecureStartup-FilterDriver%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





