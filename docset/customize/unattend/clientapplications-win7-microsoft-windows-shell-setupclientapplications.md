---
title: ClientApplications
description: ClientApplications
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 20eaaff7-0a6e-4fc6-8abd-077560849ff5
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# ClientApplications


`ClientApplications` specifies that client programs be set as default applications when the user elects to restore the computer manufacturer's settings through Default Programs.

This setting has been deprecated in Windows® 8. The information about this deprecated setting is provided for reference only. For information about setting the default file associations, see [Default Application Association Servicing Command-Line Options](http://go.microsoft.com/fwlink/p/?LinkId=247509).

Use these settings to configure Windows® so that a user can later reinstate the original OEM configuration for these applications. Any program specified for any of these settings must be able to change default file associations. If a setting is missing or blank, the default program associated with that setting does not change when the user chooses to reinstate the original OEM configuration. For example, if a setting is not specified for `JavaVM`, the default virtual machine for Java is left unchanged.

This setting has no effect on Server Core installations of Windows Server® 2008, Windows Server 2008 R2, and Windows Server 2012.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[IM](im-win7-microsoft-windows-shell-setupclientapplicationsim.md)</p></td>
<td><p>Sets the default application for instant messaging. This must be the application’s canonical name.</p></td>
</tr>
<tr class="even">
<td><p>[Internet](internet-win7-microsoft-windows-shell-setupclientapplicationsinternet.md)</p></td>
<td><p>This setting has been deprecated in Windows® 8. The information about this deprecated setting is provided for reference only.</p>
<p>Sets the default application for Internet browsing. This must be the application’s canonical name.</p></td>
</tr>
<tr class="odd">
<td><p>[JavaVM](javavm-win7-microsoft-windows-shell-setupclientapplicationsjavavm.md)</p></td>
<td><p>Sets the default Java Virtual Machine application. This must be the application’s canonical name.</p></td>
</tr>
<tr class="even">
<td><p>[Mail](mail-win7-microsoft-windows-shell-setupclientapplicationsmail.md)</p></td>
<td><p>Sets the default application for mail. This must be the application’s canonical name.</p></td>
</tr>
<tr class="odd">
<td><p>[Media](media-win7-microsoft-windows-shell-setupclientapplicationsmedia.md)</p></td>
<td><p>Sets the default application for playing media. This must be the application’s canonical name.</p></td>
</tr>
</tbody>
</table>

 

For more information on canonical names, see this [MSDN website](http://go.microsoft.com/fwlink/?LinkId=82991).

## Valid Configuration Passes


auditUser

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md) | **ClientApplications**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set client applications.

``` syntax
<ClientApplications>
   <IM>IMCanonical</IM>
   <Internet>BrowserCanonical</Internet>
   <JavaVM>JavaVMCanonical</JavaVM>
   <Mail>MailCanonical</Mail>
   <Media>MediaCanonical</Media>
</ClientApplications>
```

## Related topics


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20ClientApplications%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





