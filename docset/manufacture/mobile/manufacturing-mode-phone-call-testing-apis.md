---
author: kpacquer
Description: 'These APIs are used by phone manufacturers to test phone call functionality while the device is booted into Manufacturing Mode.'
ms.assetid: 3a1bdf3e-e95d-4277-bad7-1063a138f473
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Manufacturing Mode Phone Call Testing APIs
---

# Manufacturing Mode Phone Call Testing APIs


\[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. An app that calls an API introduced in Windows 10 Anniversary SDK Preview Build 14295 cannot be ingested into the Windows Store during the Preview period.\]

These APIs are used by phone manufacturers to test phone call functionality while the device is booted into Manufacturing Mode.

## <span id="in_this_section"></span>In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[<strong>MfgPhoneDial</strong>](mfgphonedial.md)</p></td>
<td align="left"><p>Causes the phone to dial a call.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[<strong>MfgPhoneEndCall</strong>](mfgphoneendcall.md)</p></td>
<td align="left"><p>Ends a phone call.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[<strong>MfgPhoneGetSimLineCount</strong>](mfgphonegetsimlinecount.md)</p></td>
<td align="left"><p>Gets the number of currently detected SIM slots.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[<strong>MfgPhoneGetSimLineDetail</strong>](mfgphonegetsimlinedetail.md)</p></td>
<td align="left"><p>Retrieves a struct that contains the current details for a given SIM-based phone line.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[<strong>MfgPhoneGetSpeaker</strong>](mfgphonegetspeaker.md)</p></td>
<td align="left"><p>Returns a boolean indicating whether the phone speaker is being used, as opposed to the handset earphone.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[<strong>MfgPhoneInitialize</strong>](mfgphoneinitialize.md)</p></td>
<td align="left"><p>Initializes the phone system and the internal state of the API implemented by DLL.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[<strong>MfgPhoneSetSimLineEventNotifyCallback</strong>](mfgphonesetsimlineeventnotifycallback.md)</p></td>
<td align="left"><p>Callback-based notification mechanism for receiving events on SIM-based phone lines.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[<strong>MfgPhoneSetSpeaker</strong>](mfgphonesetspeaker.md)</p></td>
<td align="left"><p>Sets a value indicating whether the phone speaker should be used, as opposed to the handset earphone.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[<strong>MfgPhoneUninitialize</strong>](mfgphoneuninitialize.md)</p></td>
<td align="left"><p>Uninitializes the phone system and the internal state of the API implemented by DLL.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[<strong>MFGPHONE_CALLSTATUS</strong>](mfgphone-callstatus.md)</p></td>
<td align="left"><p>Provides information about the status of the call.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[<strong>MFGPHONE_LINESYSTEMTYPE</strong>](mfgphone-linesystemtype.md)</p></td>
<td align="left"><p>Provides information about the type of line system.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[<strong>MFGPHONE_REGISTRATIONSTATE</strong>](mfgphone-registrationstate.md)</p></td>
<td align="left"><p>Provides information about the state of the phone line? call?</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[<strong>MFGPHONE_SIMLINEDETAIL</strong>](mfgphone-simlinedetail.md)</p></td>
<td align="left"><p>Provides information about a particular SIM-based phone line.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[<strong>MFGPHONE_SIMSTATE</strong>](mfgphone-simstate.md)</p></td>
<td align="left"><p>Provides information about the state of the SIM.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Manufacturing%20Mode%20Phone%20Call%20Testing%20APIs%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



