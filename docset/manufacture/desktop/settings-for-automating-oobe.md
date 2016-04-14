---
author: Justinha
Description: Settings for Automating OOBE
MS-HAID: 'p\_adk\_online.settings\_for\_automating\_oobe'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Settings for Automating OOBE
---

# Settings for Automating OOBE


You can prevent some or all of the user interface (UI) pages from appearing in Windows Out of Box Experience (OOBE).

## <span id="Automating_OOBE"></span><span id="automating_oobe"></span><span id="AUTOMATING_OOBE"></span>Automating OOBE


To automate OOBE, add the following settings to your unattended Setup answer file:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Configuration pass</th>
<th align="left">Description</th>
<th align="left">Applies to</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft-Windows-International-Core settings: [InputLocale](http://go.microsoft.com/fwlink/?LinkId=224435), [SystemLocale](http://go.microsoft.com/fwlink/?LinkId=224436), [UILanguage](http://go.microsoft.com/fwlink/?LinkId=224437), and [UserLocale](http://go.microsoft.com/fwlink/?LinkId=224438).</p></td>
<td align="left"><p><strong>oobeSystem</strong></p></td>
<td align="left"><p>Specifies the region-specific defaults of the Windows installation.</p></td>
<td align="left"><p>Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) and Windows Server 2016 Technical Preview </p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft-Windows-Shell-Setup | [ComputerName](http://go.microsoft.com/fwlink/p/?linkid=224440)</p></td>
<td align="left"><p><strong>specialize</strong></p></td>
<td align="left"><p>Specifies the computer's name to apply to the Windows installation.</p>
<p>If ComputerName is set to an asterisk (*) or is an empty string, a random computer name will be generated.</p></td>
<td align="left"><p>Windows 10 for desktop editions and Windows Server 2016 Technical Preview </p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft-Windows-Shell-Setup | [UserAccounts](http://go.microsoft.com/fwlink/?LinkId=224439): Add an account and a password.</p></td>
<td align="left"><p><strong>oobeSystem</strong></p></td>
<td align="left"><p>Specifies the user accounts to create on the Windows installation.</p>
<p>The account can be a user account, a domain account, or the default administrator account.</p>
<p>Though you must enter a password, the password may be blank. To enter a blank password, in Windows SIM, right-click <strong>Value</strong>, and select <strong>Write Empty String</strong>.</p></td>
<td align="left"><p>Windows 10 for desktop editions and Windows Server 2016 Technical Preview </p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft-Windows-Shell-Setup | OOBE | ([HideEULAPage](http://go.microsoft.com/fwlink/?LinkId=224445), [HideOEMRegistrationScreen](http://go.microsoft.com/fwlink/?LinkId=252784), [HideOnlineAccountScreens](http://go.microsoft.com/fwlink/?LinkId=252785), and [HideWirelessSetupInOOBE](http://go.microsoft.com/fwlink/?LinkId=252786))</p></td>
<td align="left"><p><strong>oobeSystem</strong></p></td>
<td align="left"><p>Specifies the behavior of some OOBE screens.</p></td>
<td align="left"><p>Windows 10 for desktop editions and Windows Server 2016 Technical Preview </p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft-Windows-Shell-Setup | OOBE | [HideLocalAccountScreen](http://go.microsoft.com/fwlink/?LinkId=252787)</p></td>
<td align="left"><p><strong>oobeSystem</strong></p></td>
<td align="left"><p>Specifies whether end users must set the Administrator password screen that appears during OOBE.</p></td>
<td align="left"><p>Windows Server 2016 Technical Preview  only</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft-Windows-Shell-Setup | OOBE | [ProtectYourPC](http://go.microsoft.com/fwlink/?LinkId=224441)</p></td>
<td align="left"><p><strong>oobeSystem</strong></p></td>
<td align="left"><p>Specifies whether your device is configured with Express settings, such as sending data to Microsoft, letting Windows and apps request the user's localization, and turning on protection against malicious web content.</p></td>
<td align="left"><p>Windows 10 for desktop editions and Windows Server 2016 Technical Preview </p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[Automate Windows Setup](automate-windows-setup.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Settings%20for%20Automating%20OOBE%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




