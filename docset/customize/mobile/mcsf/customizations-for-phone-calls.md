---
title: Customizations for phone calls
description: Provides information about customizations you can configure for the phone or dialer app including branding, visual voicemail, caller ID matching, dialer codes, and more.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 78f699de-5dd9-4f87-8598-9a2242b9a5f3
---

# Customizations for phone calls


Provides information about customizations you can configure for the phone or dialer app including branding, visual voicemail, caller ID matching, dialer codes, and more.

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Adjust the call duration information for CDMA calls](adjust-the-call-duration-information-for-cdma-calls.md)</p></td>
<td><p>On CDMA devices, call durations in the call history may include the time spent before the call was connected. This behavior results in an incorrect calculation of the call duration. OEMs can address this potential issue by enabling this customization, which excludes the time spent before the call was connected. When enabled, the customization will also adjust the call duration to indicate that zero time was spent if the call ends before the connection was made.</p></td>
</tr>
<tr class="even">
<td><p>[Always display the dialed phone number](always-display-the-dialed-phone-number.md)</p></td>
<td><p>OEMs can change the default behavior so that the number that's displayed in the call screen always matches the dialed phone number even if the number that the call connected to may be different.</p></td>
</tr>
<tr class="odd">
<td><p>[Branding for phone calls](branding-for-phone-calls.md)</p></td>
<td><p>Partners can add a custom image that displays the mobile operator name or logo on the <strong>Incoming Call</strong> screen.</p></td>
</tr>
<tr class="even">
<td><p>[Caller ID matching](caller-id-matching.md)</p></td>
<td><p>Each country/region has a varying phone number length and style so with Windows 10 Mobile the OS maps a different minimum number of digits for matching caller ID that defaults to each country/region setting on the mobile device. This enables mobile users to get the proper settings for their preferred country/region.</p>
<p>In Windows 10 Mobile:</p>
<ul>
<li><p>Mobile operators can modify the default mapping values specified by Microsoft using the settings in the <code>Phone/CallIDMatchOverrides</code> settings group. For more information on how to do this, see [Overriding the OS default minimum number of digits for caller ID matching](#overriding-os-default-min-number-digits).</p>
<p>If mobile operators specify a number of digits that is outside the OS-supported range of 4-20, the OS defaults back to 6 digits.</p></li>
<li><p>For any country/region that doesn't exist in the default mapping table, mobile operators can use the legacy <code>CallIDMatch</code> setting to specify the minimum number of digits to use for matching caller ID. For more information on how to do this, see [Specifying the minimum number of digits for caller ID matching for other countries/regions](#specifying-min-digits-for-other-countries-regions).</p></li>
</ul>
<p>If OEMs do not customize this setting based on mobile operator requirements, the OS uses the current default of 6, which is the last 6 digits of the phone number.</p></td>
</tr>
<tr class="odd">
<td><p>[Cause codes](cause-codes.md)</p></td>
<td><p>On GSM networks, OEMs can enable mobile operator-defined codes, or cause codes, to show in the UI whenever a phone call is terminated unexpectedly.</p></td>
</tr>
<tr class="even">
<td><p>[Configure message waiting indicator notifications](configure-message-waiting-indicator-notifications.md)</p></td>
<td><p>Depending on the scenario that partners want to support, partners can configure the voicemail system so the device either ignores or responds to message waiting indicator (MWI) notifications.</p></td>
</tr>
<tr class="odd">
<td><p>[Dial string overrides when roaming](dial-string-overrides-when-roaming.md)</p></td>
<td><p>Partners can map certain dial strings to corresponding override numbers that are dialed when the user is roaming. To the user, it will appear as if the original number was dialed.</p></td>
</tr>
<tr class="even">
<td><p>[Dialer codes for supplementary services](dialer-codes-for-supplementary-services.md)</p></td>
<td><p>Partners can define a dialer code to use for services like changing the pin, changing the password, caller ID, call forwarding, call waiting, call blocking, and so on.</p></td>
</tr>
<tr class="odd">
<td><p>[Dialer codes to launch diagnostic applications](dialer-codes-to-launch-diagnostic-applications.md)</p></td>
<td><p>To use an OEM diagnostic app in environments such as a service center, OEMs can configure special dialer codes to start the application. OEMs can also configure dialer codes to start apps to interact with mobile operator networks or to diagnose phone malfunctions.</p></td>
</tr>
<tr class="even">
<td><p>[Disable link to contact card in active call screen](disable-link-to-contact-card-in-active-call-screen.md)</p></td>
<td><p>Disable the ability to access a contact's information while in the active call screen.</p></td>
</tr>
<tr class="odd">
<td><p>[Disable video upgrade Store navigation](disable-video-upgrade-store-navigation.md)</p></td>
<td><p>Disable automatic navigation to the Windows Store when the user attempts a video upgrade for which there is no installed app.</p></td>
</tr>
<tr class="even">
<td><p>[Disable voicemail phone number display](disable-voicemail-phone-number-display.md)</p></td>
<td><p>Disable voicemail phone number display on the call progress screen.</p></td>
</tr>
<tr class="odd">
<td><p>[Dismiss the last USSD waiting dialog](dismiss-the-last-ussd-waiting-dialog.md)</p></td>
<td><p>Dismiss the last USSD waiting dialog in the case where there is a sequence of USSD or SIM app dialogs.</p></td>
</tr>
<tr class="even">
<td><p>[DTMF tones](dtmf-tones.md)</p></td>
<td><p>Partners can configure the following DTMF tone settings when VoLTE calls are supported:</p>
<ul>
<li><p>Duration of the DTMF tone</p></li>
<li><p>Delay, or pause, between DTMF digits</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>[Emergency phone numbers](emergency-phone-numbers.md)</p></td>
<td><p>Partners can edit the list of valid emergency phone numbers for the market in which the phone will be sold.</p></td>
</tr>
<tr class="even">
<td><p>[Enable call recording by default](https://msdn.microsoft.com/library/windows/hardware/mt762905)</p></td>
<td><p>Partners can configure devices to have the call recording feature enabled by default.</p></td>
</tr>
<tr class="odd">
<td><p>[Enable IMS services](enable-ims-services.md)</p></td>
<td><p>Partners can identify which IP Multimedia Subsystem (IMS) services, if any, are enabled on the device by default. The IMS services that can be identified are: IMS, SMs over IMS, Voice over IMS, and Video over IMS.</p></td>
</tr>
<tr class="even">
<td><p>[Enable long DTMF tones](enable-long-dtmf-tones.md)</p></td>
<td><p>OEMs can enable long DTMF tones if the user presses a dialpad key for an extended period.</p></td>
</tr>
<tr class="odd">
<td><p>[Enable RCS](https://msdn.microsoft.com/library/windows/hardware/mt667951)</p></td>
<td><p>OEMs can configure the RCS settings using the multivariant support in the OS. Using these settings, you can:</p>
<ul>
<li>Specify whether the device is RCS-enabled.</li>
<li>Specify whether to use single registration for RCS.</li>
<li>Configure the user experience for RCS.</li>
</ul></td>
</tr>
<tr class="even">
<td><p>[Maximum number of participants in a VoLTE conference call](maximum-number-of-participants-in-a-volte-conference-call.md)</p></td>
<td><p>OEMs can specify the maximum number of participants or callers that can be added to a voice over LTE (VoLTE) conference call based on the mobile operator's network requirements.</p></td>
</tr>
<tr class="odd">
<td><p>[Network-controlled caller ID settings](network-controlled-caller-id-settings.md)</p></td>
<td><p>For markets or mobile operators that require support for network-controlled settings for outgoing caller ID, OEMs can configure the setting to indicate whether the network default setting is allowed and specify the default initial value for the caller ID setting.</p></td>
</tr>
<tr class="even">
<td><p>[Supplementary services exclusions](supplementary-services-exclusions.md)</p></td>
<td><p>Partners can define a dialer code to use for 3GP USSD services like changing the pin, changing the password, caller ID, call forwarding, call waiting, call barring, and so on. Partners can define new mappings or disable the default mappings. To define a new mapping or change the behavior of a provided supplementary service mappings, see [Dialer codes for supplementary services](dialer-codes-for-supplementary-services.md)</p></td>
</tr>
<tr class="odd">
<td><p>[Use OK for USSD dialogs](use-ok-for-ussd-dialogs.md)</p></td>
<td><p>To meet certain market requirements or user expectations, OEMs can change the button label in USSD dialogs from <strong>Close</strong> (the default) to <strong>OK</strong>.</p></td>
</tr>
<tr class="even">
<td><p>[Use HD audio codec for call branding](https://msdn.microsoft.com/library/windows/hardware/mt762908)</p></td>
<td><p>OEMs can customize call progress branding when a call is made using a specific audio codec.</p></td>
</tr>
<tr class="odd">
<td><p>[Use voice domain for emergency call branding](use-voice-domain-for-emergency-call-branding.md)</p></td>
<td><p>To meet mobile operator requirements, OEMs can enable the voice domain to decide whether to use <strong>Emergency calls only</strong> or <strong>No service</strong> in the phone UI branding.</p></td>
</tr>
<tr class="even">
<td><p>[Visual voicemail](visual-voicemail.md)</p></td>
<td><p><strong>Visual voicemail</strong> supports both traditional voicemail (retrieved through a phone call) and visual voicemail. Users can select between traditional voicemail and visual voicemail when they first attempt to access voicemail. If the mobile operator does not support this visual voicemail implementation, the user will only see the traditional voicemail option. For mobile operators that have their own particular brand that they want to use instead of visual voicemail, partners can rebrand all instances of <strong>visual voicemail</strong> in the Windows 10 Mobile UI to use the operator's brand.</p></td>
</tr>
<tr class="odd">
<td><p>[Voice over LTE call indication](voice-over-lte-call-indication.md)</p></td>
<td><p>Partners can add a string to the phone's call progress screen to indicate if the active call is a voice over LTE (VoLTE) call depending on whether the phone call is in high quality voice status such as when using AMR-WB codec. The high quality voice status is determined by the modem and RIL implementation. This string is combined with the PLMN for the mobile operator and is only shown if the combination of the PLMN and the custom string is less than the maximum width available. For example, &quot;Litware VoLTE&quot; will be shown but &quot;Litware Wireless VoLTE&quot; may be too long and may be truncated.</p></td>
</tr>
<tr class="even">
<td><p>[Voicemail SMS intercept](voicemail-sms-intercept.md)</p></td>
<td><p>Partners can define a filter that intercepts an incoming SMS message and triggers visual voicemail synchronization. The filtered message does not appear in the user’s conversation list.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phCustomization\p_phCustomization%5D:%20Customizations%20for%20phone%20calls%20%20RELEASE:%20%289/7/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




